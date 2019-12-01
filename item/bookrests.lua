--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

-- UPDATE items SET itm_script='item.bookrests' WHERE itm_id = 3104;
-- UPDATE items SET itm_script='item.bookrests' WHERE itm_id = 3105;
-- UPDATE items SET itm_script='item.bookrests' WHERE itm_id = 3106;
-- UPDATE items SET itm_script='item.bookrests' WHERE itm_id = 3107;
-- UPDATE items SET itm_script='item.bookrests' WHERE itm_id = 3108;

local common = require("base.common")
local seafaring = require("base.seafaring")
local staticteleporter = require("base.static_teleporter")
local townManagement = require("base.townManagement")
local factions = require("base.factions")
local vision = require("content.vision")
local lookat = require("base.lookat")
local money = require("base.money")

local M = {}

local BULLETIN_MAX_SLOTS = 10
--local EXPRIATION_TIME = 604800 -- seven RL days
local EXPRIATION_TIME = 5*60 --

local FerryLookAt
local TMLookAt
local SalaveshLookAt
local AkaltutLookAt
local ronaganLookAt
local bulletinLookAt
local usingHomeTeleporter
local NecktieHomeTravel
local WonderlandTeleporter

local salaveshBookrest = position(741, 406, -3)
local akaltutBookrest = position(430, 815, -9)
local evilrockBookrest = position(975, 173, 0)
local wonderlandBookrest = position(864, 550, 0)
local ronaganBookrest = position(904, 585, -6)
local bulletinBoard = position(696, 315, 0)

function M.LookAtItem(User,Item)

    local lookAt
    -- Bookrest for the Salavesh dungeon
    if (Item.pos == salaveshBookrest) then
        lookAt = SalaveshLookAt(User, Item)
    end

    -- Bookrest for Akaltut dungeon
    if (Item.pos == akaltutBookrest) then
        lookAt = AkaltutLookAt(User, Item)
    end

    -- Bookrest for Ronagan dungeon
    if (Item.pos == ronaganBookrest) then
        lookAt = ronaganLookAt(User, Item)
    end

    -- Bulletin board
    if (Item.pos == bulletinBoard) then
        lookAt = bulletinLookAt(User, Item)
    end
    
    -- Bookrest for townManagement
    local AmountTM = #townManagement.townManagmentItemPos
    for i = 1,AmountTM do
        if (Item.pos == townManagement.townManagmentItemPos[i]) then
            lookAt = TMLookAt(User, Item)
        end
    end

    -- Bookrest for ferry
    local isFerry, ferryLookAt = seafaring.ferryLookAt(User, Item, ItemLookAt())
    if isFerry then
        lookAt = ferryLookAt
    end

    -- static teleporter
    local isTeleporter, teleporterLookAt = staticteleporter.teleporterLookAt(User, Item, ItemLookAt())
    if isTeleporter then
        lookAt = teleporterLookAt
    end

    if lookAt then
        return lookAt
    else
        return lookat.GenerateLookAt(User, Item, 0)
    end
end

function TMLookAt(User, Item)
    local lookAt = ItemLookAt()
    lookAt.name = common.GetNLS(User, "Stadtverwaltung", "Town Managment")
    lookAt.description = common.GetNLS(User, "Instrument zur Verwaltung der Stadt und Ank�ndigungen.", "Instrument for town management and announcements.")
    return lookAt
end

function SalaveshLookAt(User, Item)
    local lookAt = ItemLookAt()
    lookAt.rareness = ItemLookAt.rareItem
    lookAt.name = common.GetNLS(User, "Tagebuch des Abtes Elzechiel", "Journal of Abbot Elzechiel")
    lookAt.description = common.GetNLS(User, "Dieses Buch ist von einer schaurigen Sch�nheit. Du bist versucht, es dennoch zu lesen...", "This item has an evil presence. You are tempted to read it, though...")
    return lookAt
end

function AkaltutLookAt(User, Item)
    local lookAt = ItemLookAt()
    lookAt.rareness = ItemLookAt.rareItem
    lookAt.name = common.GetNLS(User, "Infirmos magische Schriftrolle", "Infirmo's magical scroll")
    lookAt.description = common.GetNLS(User, "Geschrieben in einer alten Sprache...", "Written in an old language...")
    return lookAt
end

function ronaganLookAt(User, Item)
    local lookAt = ItemLookAt()
    lookAt.rareness = ItemLookAt.rareItem
    lookAt.name = common.GetNLS(User, "Pergament", "Parchment")
    lookAt.description = common.GetNLS(User, "Das Pergament tr�gt einen Stempel im Eck, der einen Fuchs darstellt.", "The parchment has a stamp of the fox on the corner.")
    return lookAt
end

function bulletinLookAt(User, Item)
    local lookAt = ItemLookAt()
    lookAt.name = common.GetNLS(User, "Anschlagtafel", "Bulletin board")
    lookAt.description = common.GetNLS(User, "Das zentrale Anschlagbrett am Gasthof zur Hanfschlinge.", "The central bulletin board at the Hemp Necktie Inn.")
    return lookAt
end

function M.UseItem(User, SourceItem)

    -- Bookrest for the Salavesh dungeon
    if (SourceItem.pos == salaveshBookrest) then
        User:sendBook(201)
    end

    -- Bookrest for Akaltut dungeon
    if (SourceItem.pos == akaltutBookrest) then
        local foundEffect, myEffect = User.effects:find(120) -- monsterhunter_timer lte
        if User:getQuestProgress(529) == 3 and not foundEffect then
            User:inform("Der H�llenhund ist im S�dosten von hier.", "The hellhound is  southeast from here.")
            local myEffect = LongTimeEffect(120, 50) -- 5sec
            User.effects:addEffect(myEffect)
        elseif foundEffect then
            User:inform("Der H�llenhund ist im S�dosten von hier. Finde ihn!", "The hellhound is  southeast from here. Find it!")
        else
            User:inform("Die Schriftzeichen sagen dir nichts.", "You can't make any sense of the letters written here.")
        end
    end

    -- Bookrest for Ronagan dungeon
    if (SourceItem.pos == ronaganBookrest) then
        if User:getQuestProgress(543) == 4 then
            User:inform("Auf dem St�ck Papier stehen ein paar Worte. 'Sprich Fuchs und dr�ck gegen den Stein.' Du hast das mysteri�se Pergament f�r Brigette gefunden.", "The paper has a few words. 'Speak fox then push the rock.' You have found the mysterious parchment for Brigette.")
            User:setQuestProgress(543, 5)
        else
            User:inform("Auf dem St�ck Papier stehen ein paar Worte. 'Sprich Fuchs und dr�ck gegen den Stein.' ", "The paper has a few words. 'Speak fox then push the rock.'")
        end
    end

    -- Bulletin board
    if (SourceItem.pos == bulletinBoard) then
        showBulletinBoard(User, Item)
    end
    
    -- Bookrest for the Evilrock
    if (SourceItem.pos == evilrockBookrest) then
        local controlpannel = world:getPlayersInRangeOf(position(969,173,0), 8)
        if User:getQuestProgress(667) >= 25 then
            local AmountDarkColumnEvilrock = #vision.darkColumnEvilrock
            for i=1,AmountDarkColumnEvilrock do
                local DarkColumnEvilrockLightErase = world:getItemOnField(vision.darkColumnEvilrock[i])
                if DarkColumnEvilrockLightErase.id == 467 then
                    world:erase(DarkColumnEvilrockLightErase,DarkColumnEvilrockLightErase.number)
                    world:gfx(45,vision.darkColumnEvilrockLight[i])
                end
            end
            vision.beamMeDown(User, SourceItem)
            return
        else
            for i,player in ipairs(controlpannel) do
                player:inform("Du h�rst ein Klicken, aber nichts passiert.", "You hear a clicking but nothing happens.")

            end
            world:makeSound(22, evilrockBookrest)
        end

    end

    -- Bookrest for the Wonderland Area
    if (SourceItem.pos == wonderlandBookrest) then
        WonderlandTeleporter(User, SourceItem)
    end

    -- TownManagement
    local AmountTM = #townManagement.townManagmentItemPos
    for i = 1,AmountTM do
        if (SourceItem.pos == townManagement.townManagmentItemPos[i]) then
            townManagement.townManagmentUseItem(User, SourceItem)
        end
    end

    -- ferries
    if seafaring.useFerry(User, SourceItem) then
        return
    end

    -- static teleporter
    if staticteleporter.useTeleporter(User, SourceItem) then
        return
    end
end

function usingHomeTeleporter(User,factionNames,teleporterPos)
    local userFaction = factions.getMembershipByName(User)
    for i=1,#factionNames do
        if factionNames[i] == userFaction and User:distanceMetricToPosition(teleporterPos[i]) < 5 then
            return true
        end
    end
    return false
end

function NecktieHomeTravel(User,factionNames,teleporterPos,selected)
    local userFaction = factions.getMembershipByName(User)
    if (factionNames[selected]==userFaction and User:distanceMetricToPosition(teleporterPos[4]) < 5) or (selected == 4 and usingHomeTeleporter(User,factionNames,teleporterPos)) then
        return true
    end
    return false
end

local function akalutCadomyrBlockade(user)
    local foundValue, value = ScriptVars:find("akalutCadomyrBlockade")
    if not foundValue or tonumber(value) == 0 then
        return false
    end

    world:gfx(2, user.pos)
    user:increaseAttrib("hitpoints",-1000)
    user:inform("Ein Blitz kommt aus dem Teleporter geschossen.", "You are hit by a lightning coming from the teleporter.", Character.highPriority)

    return true
end

function WonderlandTeleporter(User, SourceItem)
    local choices = {common.GetNLS(User, "Ja, nat�rlich!", "Yes, of course!"), common.GetNLS(User, "Nein, lieber nicht...", "No, better not...")}
    local callback = function(dialog)

        local success = dialog:getSuccess()
        if success then
            local selected = dialog:getSelectedIndex() + 1
            if selected == 1 then
                local wonderlandStart = position(900, 580, 0)
                User:inform("Du hast dich dazu entschlossen das Wunderland zu betreten.", "You have chosen to enter the Wonderland.")
                User:setQuestProgress(612,0)
                world:gfx(46, User.pos)
                world:makeSound(13, User.pos)

                User:warp(wonderlandStart)
                world:makeSound(25, User.pos)
                User:inform("Du h�rst ein Lachen und eine kr�chzende Stimme sagen: \"Haha! Du geh�rst nun mir!\" Nach einer Weile h�rst du eine andere Stimme aus dem Nordwesten: \"Geh weg von mir!\"","You hear laughter and a croaking voice, saying: \"Haha! You are mine now!\" After a while you hear another voice from the northwest: \"Get away from me!\"")
            end
        end
    end

    local dialogTitle = common.GetNLS(User, "Wunderland Teleporter", "Wonderland Teleporter")
    local dialogText = common.GetNLS(User, "M�chtest du das Wunderland betreten?",
                                            "Do you wish to go to Wonderland?")
    local dialog = SelectionDialog(dialogTitle, dialogText, callback)

    dialog:setCloseOnMove()

    for i = 1, #choices do
        dialog:addOption(0, choices[i])
    end
    User:requestSelectionDialog(dialog)
end


-- Bulletin board
local getBulletinMessages
local writeBulletinMessages
local showBulletinMessage

function showBulletinBoard(User, Item)

    -- selection dialog
    local callback = function(dialog)
        if not dialog:getSuccess() then
            return
        end
        local selected = dialog:getSelectedIndex() + 1
        if selected == 1 then
            readBulletinBoard(User, Item)
        elseif selected == 2 then
            writeBulletinBoard(User, Item)
        end
    end
    
    local dialogTitle = common.GetNLS(User, "Anschlagtafel", "Bulletin board")
    local dialogText = common.GetNLS(User, "W�hle eine Option.", "Chose an option.")
    local dialog = SelectionDialog(dialogTitle, dialogText, callback)

    local options = {}
    options = common.GetNLS(User, {"Nachrichten lesen", "Nachricht schreiben"}, {"Read messages", "Write new message"})
    
    for i = 1, #options do
        dialog:addOption(0, options[i])
    end

    dialog:setCloseOnMove()
    User:requestSelectionDialog(dialog)
    
end

function readBulletinBoard(User, Item)

    local bulletinMessages = getBulletinMessages(User)

    --write all messages
    if #bulletinMessages > 0 then
        --show all messages in dialog
        local dialogOptions = {}
        for i = 1, #bulletinMessages do
            table.insert(dialogOptions,
                { icon = 2745, text = bulletinMessages[i].Title, func = showBulletinMessage, args = { User, bulletinMessages[i] } }
            )
        end
        local dialogTitle = common.GetNLS(User, "Anschlagtafel", "Bulletin board")
        local dialogText = common.GetNLS(User, "W�hle eine Nachricht.", "Chose a message.")
        common.selectionDialogWrapper(User, dialogTitle, dialogText, dialogOptions)
    else
        User:inform("Es sind keine Nachrichten angeschlagen.","There are no messages.")
    end
end

function writeBulletinBoard(User, Item)

    local bulletinMessagesTitle = {}
    local bulletinMessagesText = {}
    local bulletinMessagesAuthor = {}
    local bulletinMessagesExpiration = {}
    
    --read all messages and remove expired messages
    for i = 1, BULLETIN_MAX_SLOTS do
        local titleFound, titleContent = ScriptVars:find("messageTitle"..tostring(i))
        local textFound, textContent = ScriptVars:find("messageText"..tostring(i))
        local authorFound, authorContent = ScriptVars:find("messageAuthor"..tostring(i))
        local expirationFound, expirationContent = ScriptVars:find("messageExpiration"..tostring(i))
        if titleFound and textFound and authorFound and expirationFound and tonumber(expirationContent) > world:getTime("unix") then
            table.insert(bulletinMessagesTitle, titleContent)
            table.insert(bulletinMessagesText, textContent)
            table.insert(bulletinMessagesAuthor, authorContent)
            table.insert(bulletinMessagesExpiration, expirationContent)
        end
    end

    --write all messages
    if #bulletinMessagesTitle > 0 then 

        for i = 1, math.min((BULLETIN_MAX_SLOTS), #bulletinMessagesTitle) do
            ScriptVars:set("messageTitle"..tostring(i), bulletinMessagesTitle[i])
            ScriptVars:set("messageText"..tostring(i), bulletinMessagesText[i])
            ScriptVars:set("messageAuthor"..tostring(i), bulletinMessagesAuthor[i])
            ScriptVars:set("messageExpiration"..tostring(i), bulletinMessagesExpiration[i])
        end
  
        ScriptVars:save()
    end
    
    if #bulletinMessagesTitle < BULLETIN_MAX_SLOTS then
      
        if money.CharHasMoney(User, 2000) then--check money
       
            --input title
            local title = common.GetNLS(User, "Titel", "Title")
            local text = common.GetNLS(User, "Schreibe den Titel deines neuen Anschlages. Ein Anschlag kostet zwanzig Silberst�cke.", "Write the title of your bulletin. The cost is twenty silver coins.")
            local callback = function(dialogTitle)
                local successTitle = dialogTitle:getSuccess()
                local newTitleContent = dialogTitle:getInput()
                if string.len (newTitleContent) > 40 then
                    User:inform("Dein Titel ist zu lang.","The title is too long.",Character.highPriority)
                    successTitle = false
                    newTitleContent = nil
                else
                    --input text
                    if successTitle then
                        local title = common.GetNLS(User, "Text", "Text")
                        local text = common.GetNLS(User, "Schreibe den Text deines neuen Anschlages. Ein Anschlag kostet zwanzig Silberst�cke.", "Write the text of your bulletin. The cost is twenty silver coins.")
                        local callback = function(dialogText)
                            local successText = dialogText:getSuccess()
                            local newTextContent = dialogText:getInput()
                            if string.len (newTextContent) > 255 then
                                User:inform("Dein Text ist zu lang.","The text is too long.",Character.highPriority)
                                successText = false
                                newTextContent = nil
                            else
                                if newTitleContent and newTextContent and successTitle and successText and money.CharHasMoney(User, 2000) then

                                    table.insert(bulletinMessagesTitle, newTitleContent)
                                    table.insert(bulletinMessagesText, newTextContent)
                                    table.insert(bulletinMessagesAuthor, User.name)
                                    table.insert(bulletinMessagesExpiration, world:getTime("unix")+EXPRIATION_TIME)
                                    money.TakeMoneyFromChar(User, 2000) --pay
                                    world:broadcast("Am Gasthof zur Hanfschlinge h�ngt ein neuer Anschlag.", "A new bulletin has been published at the Hemp Necktie Inn.")

                                    --write all messages
                                    if #bulletinMessagesTitle > 0 then 

                                        for i = 1, math.min((BULLETIN_MAX_SLOTS), #bulletinMessagesTitle) do
                                            ScriptVars:set("messageTitle"..tostring(i), bulletinMessagesTitle[i])
                                            ScriptVars:set("messageText"..tostring(i), bulletinMessagesText[i])
                                            ScriptVars:set("messageAuthor"..tostring(i), bulletinMessagesAuthor[i])
                                            ScriptVars:set("messageExpiration"..tostring(i), bulletinMessagesExpiration[i])
                                        end
                                    
                                        ScriptVars:save()
                                    end
                                    
                                elseif not money.CharHasMoney(User, 2000) then --not enough money
                                    User:inform("Du hast nicht genug Geld. Ein Anschlag kostet zwanzig Silberst�cke.", "You don't have enough money. Posting a bulletin costs twenty silver coins.")
                                else
                                    User:inform("Irgendwas ist faul.","Something went wrong.") --debug
                                end
                            end
                            
                            if not successText then
                                User:inform("Kein Text eingegeben.","You did not enter a text.",Character.highPriority)
                            end
                        end

                        local dialogText = InputDialog(title, text, false, 255, callback)
                        User:requestInputDialog(dialogText)
         
                    else
                        User:inform("Kein Titel eingegeben.","You did not enter a title.",Character.highPriority)
                    end
                end
            end
            
            local dialogTitle = InputDialog(title, text, false, 40, callback)
            User:requestInputDialog(dialogTitle) 
             
        else --not enough money
            User:inform("Du hast nicht genug Geld. Ein Anschlag kostet zwanzig Silberst�cke.", "You don't have enough money. Posting a bulletin costs twenty silver coins.")
        end
            
    else
        local timeDifference = math.min(unpack(bulletinMessagesExpiration))-world:getTime("unix")
        local timeDifferenceDays = math.floor(timeDifference/(60*60*24))
        local timeDifferenceHours = math.floor((timeDifference-timeDifferenceDays*60*60*24)/(60*60))
        local timeDifferenceMinutes = math.floor((timeDifference-timeDifferenceDays*60*60*24-timeDifferenceHours*60*60)/60)
        User:inform("Die Anschlagtafel ist voll. Warte, bis ein Anschlagplatz frei wird. Dies wird noch "..timeDifferenceDays.." Tage, "..timeDifferenceHours.." Stunden und "..timeDifferenceMinutes.." Minuten dauern", "The bulletin board is full. Please wait for a free slot. It will take "..timeDifferenceDays.." days, "..timeDifferenceHours.." hours and "..timeDifferenceMinutes.." minutes.")
    end
 
end

function getBulletinMessages(User)
    local bulletinMessages = {}

    --read all messages and remove expired messages
    for i = 1, BULLETIN_MAX_SLOTS do

        local titleFound, titleContent = ScriptVars:find("messageTitle"..tostring(i))
        local textFound, textContent = ScriptVars:find("messageText"..tostring(i))
        local authorFound, authorContent = ScriptVars:find("messageAuthor"..tostring(i))
        local expirationFound, expirationContent = ScriptVars:find("messageExpiration"..tostring(i))
        if titleFound and textFound and authorFound and expirationFound and tonumber(expirationContent) > world:getTime("unix") then
            table.insert(bulletinMessages,
                { Title = titleContent, Text = textContent, Author = authorContent, Expiration = expirationContent }
            )
        end
    end

    --write all messages
    if #bulletinMessages > 0 then
        writeBulletinMessages(User, bulletinMessages)
    end

    return bulletinMessages
end

function writeBulletinMessages(User, bulletinMessages)
    if #bulletinMessages > BULLETIN_MAX_SLOTS then
        User:inform("FIXGERMAN Messages number overflows, please inform a developer,", "Messages number overflows, please inform a developer.",Character.highPriority)
        return
    end

    -- write valid messages
    for i = 1, #bulletinMessages do
        ScriptVars:set("messageTitle"..tostring(i), bulletinMessages[i].Title)
        ScriptVars:set("messageText"..tostring(i), bulletinMessages[i].Text)
        ScriptVars:set("messageAuthor"..tostring(i), bulletinMessages[i].Author)
        ScriptVars:set("messageExpiration"..tostring(i), bulletinMessages[i].Expiration)
    end

    -- invalidate the rest
    for i = (#bulletinMessages+1), BULLETIN_MAX_SLOTS do
        ScriptVars:set("messageExpiration"..tostring(i), 0)
    end

    ScriptVars:save()
end

function showBulletinMessage(User, bulletinMessage)
    local callback = function() end --empty callback
    local title = bulletinMessage.Title
    local text = bulletinMessage.Text.."\n~"..bulletinMessage.Author
    local dialog = MessageDialog(title, text, callback)
    User:requestMessageDialog(dialog)
end


return M
