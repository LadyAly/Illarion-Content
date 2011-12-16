require("handler.sendmessagetoplayer")
require("handler.createeffect")
require("questsystem.base")
module("questsystem.BragonBless.trigger3", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 15
local POSTCONDITION_QUESTSTATE = 17

local POSITION = position(903, 773, 5)
local RADIUS = 3

function UseItem( PLAYER, item, TargetItem, counter, Param, ltstate )
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
    --informNLS(PLAYER, TEXT_DE, TEXT_EN)
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end

function informNLS(player, textDe, textEn)
  if player:getPlayerLanguage() == Player.german then
    player:inform(player, item, textDe)
  else
    player:inform(player, item, textEn)
  end
end

-- local TEXT_DE = TEXT -- German Use Text -- Deutscher Text beim Benutzen
-- local TEXT_EN = TEXT -- English Use Text -- Englischer Text beim Benutzen


function HANDLER(PLAYER)
    handler.createeffect.createEffect(position(903, 773, 5), 37):execute()
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Du hast das Gef�hl die Welt liegt dir zu F��en.", "You feel like the world is your oyster."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end