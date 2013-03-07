--------------------------------------------------------------------------------
-- NPC Name: Seleseth                                                 Galmair --
-- NPC Job:  Brick maker, mason and gem grinder                               --
--                                                                            --
-- NPC Race: lizardman                  NPC Position:  387, 277, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Zot                                                              --
--                                                       easyNPC Parser v1.23 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (5, 387, 277, 0, 6, 'Seleseth', 'npc.seleseth', 0, 6, 0, 241, 245, 63, 58, 137, 61);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.seleseth", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Seleseth the gem grinder, mason and brick maker. Keywords: quest"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Seleseth der Edelsteinschleifer, Steinmetz und Ziegelmacher. Schl�sselw�rter: Quest"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addTrigger("Good night");
talkEntry:addResponse("Greetingsss to you.");
talkEntry:addResponse("Yess, greetingsss.");
talkEntry:addResponse("Blessingsss of the Mother upon you, greetingsss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("Mohltied");
talkEntry:addResponse("Gr��sse dir.");
talkEntry:addResponse("Ja, Gr��sse.");
talkEntry:addResponse("Gr��sse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greetingsss to you.");
talkEntry:addResponse("Yess, greetingss.");
talkEntry:addResponse("Greetsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Gr��sse dir.");
talkEntry:addResponse("Ja, Gr��sse.");
talkEntry:addResponse("Gr��sse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("May the rainsss be heavy and frequent.");
talkEntry:addResponse("May the sssea-Mother watch your path.");
talkEntry:addResponse("Farewell, zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("M�genss Regen h�ufig und ssstark sssein.");
talkEntry:addResponse("M�genss die Meermutter dein Pfad leitenss.");
talkEntry:addResponse("Abschied, zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addResponse("Goodbye");
talkEntry:addResponse("Farewell");
talkEntry:addResponse("#me nods slowly, 'Goodbye'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addResponse("Gut wiedersehensss.");
talkEntry:addResponse("Abschied.");
talkEntry:addResponse("#me nickt langsam: 'Gut wiedersehensss'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Ssseleseth isss fine, yesss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Ssseleseth issst gut, ja..");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I be Ssseleseth, would you like to do a job for me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich sindss Ssseleseth, machenss du Aufgabe f�r michss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm a gem grinder, massson and bricksss maker, do you wantssz to help Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich binss Edelsteinsschleifer, Sssteinmetzzs und Zzsiegelmacher, wollen du michssz helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm a gem grinder, massson and bricksss maker, do you wantssz to help Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich binss Edelsteinsschleifer, Sssteinmetzzs und Zzsiegelmacher, wollen du michssz helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(24, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 1));
talkEntry:addResponse("Zsss, tasssk? Yesss, Ssseleseth has tasksss for yousss. Bring SsSsseleseth thirty clumpsss of clay. You can findz clay at the lake west of here. Here, Ssseleseth givesss you old ssshovel of hisss for digging clay.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(24, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 1));
talkEntry:addResponse("Zsss, Aufgabe? Ja, Ssseleseth haben Aufgabe f�r dichsss. Bring Ssseleseth 30 Lehmssz! Du finden Lehm bei Sssee wesstlich der Stadt. Hier haben alte Ssschaufel von Ssseleseth um Lehm zu graben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(24, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 1));
talkEntry:addResponse("Zsss, tasssk? Yesss, Ssseleseth has tasksss for yousss. Bring Ssseleseth thirty clumpsss of clay. You can findz clay at the lake west of here. Here, Ssseleseth givesss you old ssshovel of hisss for digging clay.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(24, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 1));
talkEntry:addResponse("Zsss, Aufgabe? Ja, Ssseleseth haben Aufgabe f�r dichsss. Bring Ssseleseth 30 Lehmssz! Du finden Lehm bei Sssee wesstlich der Stadt. Hier haben alte Ssschaufel von Ssseleseth um Lehm zu graben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(26, "all", ">", 29, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 2));
talkEntry:addResponse("Well done, thanksss you. Do you wants another tasksss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(26, "all", ">", 29, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 2));
talkEntry:addResponse("Gut gemacht, dankes. Wollen weitere Aufgabe von Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(26, "all", ">", 29, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 2));
talkEntry:addResponse("Well done, thanksss you. Do you wants another tasksss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(26, "all", ">", 29, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 2));
talkEntry:addResponse("Gut gemacht, dankes. Wollen weitere Aufgabe von Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(26, "all", "<", 30, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, Ssseleseth wantsss thirty clumpsss of clay, that is not enough clayssz. Come back when you have finished the taskz!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(26, "all", "<", 30, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, ichse haben wollten 30 Lehmss! Dasss nicht sssein 30 Lehm. Kommen zur�ck wenn fertig!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(734, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 3));
talkEntry:addResponse("Now we make bricksss with the clayssz. You go to glass melting oven over there and makessz fifteen bricksss. First you make unfired brickszss, and then fromz the unfired ones you make fired bricksss! Here, me givesss you an old brickssz mould of minesz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(734, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 3));
talkEntry:addResponse("Jetztss wir machen Zzziegel mit Lehm. Du gehen zum Glasschmelzofen dort dr�ben und machen 15 Zzziegels. Erst du machen ungebrannte Zzziegel und aus ungebrannte Zzziegel du machen fertige Ziegel. Hier ich geben dir alte Zzziegelform von mirs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(734, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 3));
talkEntry:addResponse("Now we make brickss with clayss. You go to glass melting oven over there and makes fifteen bricksss. First you make unfired brickszss, and then fromz the unfired ones you make fired bricksss! Here, me givesss you an old brickssz mould of minesz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(734, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 3));
talkEntry:addResponse("Jetztss wir machen Zzziegel mit Lehm. Du gehen zum Glasschmelzofen dort dr�ben und machen 15 Zzziegels. Erst du machen ungebrannte Zzziegel und aus ungebrannte Zzziegel du machen fertige Ziegel. Hier ich geben dir alte Zzziegelform von mirs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2588, 15, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 4));
talkEntry:addResponse("Well done, thanksss you. Do you wants another tasksss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2588, 15, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 4));
talkEntry:addResponse("Gut gemacht, dankes. Wollen weitere Aufgabe von Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2588, 15, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 4));
talkEntry:addResponse("Well done, thanksss you. Do you wants another tasksss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2588, 15, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 4));
talkEntry:addResponse("Gut gemacht, dankes. Wollen weitere Aufgabe von Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You not finissshed! I want fifteen bricksss, come backsss when you have finissshed.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Du nichtss fertig seinsss. Ich wollen 15 Zzziegels, kommen wieder wenn du fertig seinsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(251, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2140, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 5));
talkEntry:addResponse("Zzzs, now we makesz ssshiny gems! I'll givesss you ten raw amethyssstsz and a pair of tongsss. You grindz them at the gem grinder for me and ssshow me resssult when you done, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(251, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2140, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 5));
talkEntry:addResponse("Zzzz, nun wir machen gl�nzzsende Sssteine! Ich geben dir zzsehn rohe Amethysssten und Zzange. Du sschleifen Amethysssten f�r michs am Edelssteinsschleifer neben michs. Wenn du fertig, dann mir zeigen, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(251, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2140, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 5));
talkEntry:addResponse("Zzzs, now we makesz ssshiny gems! I'll givesss you ten raw amethyssstsz and a pair of tongsss. You grindz them at the gem grinder for me and ssshow me resssult when you done, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(251, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2140, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 5));
talkEntry:addResponse("Zzzz, nun wir machen gl�nzzsende Sssteine! Ich geben dir zzsehn rohe Amethysssten und Zzange. Du sschleifen Amethysssten f�r michs am Edelssteinsschleifer neben michs. Wenn du fertig, dann mir zeigen, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(197, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 6));
talkEntry:addResponse("Well done, do you want to make powder with ssshiny ssstones with me now, zsss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(197, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 6));
talkEntry:addResponse("Gut gemachtss. Wollen nun Staub aus gl�nzenden Sssteinen nun machen mit mir, zsss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(197, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 6));
talkEntry:addResponse("Well done, do you want to make powder with ssshiny ssstones with me now, zsss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(197, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 6));
talkEntry:addResponse("Gut gemachtss. Wollen nun Staub aus gl�nzenden Sssteinen nun machen mit mir, zsss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(197, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, I want ten amethyssstsz. Come back when you have finissshed the tasssk, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(197, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, ich wollten zehn Amethyssten. Komm wieder wenn du Aufgabe erledigt hassst, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 7));
talkEntry:addResponse("Zss, now we make powder with the ssshiny gemsz. You go to the gem grinder again and make two bagsz of amethyssst powder from eight amethyssstsz for me, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 7));
talkEntry:addResponse("Zss, nun wir machen aus gl�nzzsenden Sssteinen Staub. Du gehen zu Edelsteinschleifer und machen aus acht geschliffenen Amethyssten zwei Beutel Amethyststaub f�r michs, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 7));
talkEntry:addResponse("Zss, now we make powder with the ssshiny gemsz. You go to the gem grinder again and make two bagsz of amethyssst powder from eight amethyssstsz for me, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 7));
talkEntry:addResponse("Zss, nun wir machen aus gl�nzzsenden Sssteinen Staub. Du gehen zu Edelsteinschleifer und machen aus acht geschliffenen Amethyssten zwei Beutel Amethyststaub f�r michs, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(450, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 8));
talkEntry:addResponse("Zsss, well done! The quality of thisss powder isss very good. Do you want another tasssk from Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(450, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 8));
talkEntry:addResponse("Zsss, gut gemachts! Staub haben gute Qualit�t. Wollen neue Aufgabe von Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(450, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 8));
talkEntry:addResponse("Zsss, well done! The quality of thisss powder isss very good. Do you want another tasssk from Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(450, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 8));
talkEntry:addResponse("Zsss, gut gemachts! Staub haben gute Qualit�t. Wollen neue Aufgabe von Ssseleseth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(450, "all", "<", 2, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, I want two bagsss of amethyssst powder. Come back when you have the amethyssst powder!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(450, "all", "<", 2, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, ich wollte zwei Beutel Amethyssstssstaub, zsss. Komm wieder wenn Staub fertig!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(737, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(735, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, do you want to learn sssomething about masssonry? I'll give you ten raw ssstonesz and a chisssel and you can makesz twenty sssmall ssstonesz for me with them! Raw ssstonesz can be found in minesz, a lot, zsss! Take the chisssel in your hand and ssstart cutting raw ssstonesz into ssstone blocksss, then you repeat that with the ssstone blocksss to make sssmall ssstonesz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 8));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(737, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(735, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, du wollen mehr �ber Steinmetz lernen? Ich geben dir zzehn rohe Sssteine und Meissel um 20 kleine Sssteine f�r mich zu machen, zsss. Rohe Sssteine gibtsss in der Mine viel! Du nehmen Meisel in die Hand und bearbeiten rohe Sssteine, danach Sssteinquadar bearbeiten zu kleinen Sssteinen und mir bringen 20, zss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 8));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(737, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(735, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, do you want to learn sssomething about masssonry? I'll give you ten raw ssstonesz and a chisssel and you can makesz twenty sssmall ssstonesz for me with them! Raw ssstonesz can be found in minesz, a lot, zsss! Take the chisssel in your hand and ssstart cutting raw ssstonesz into ssstone blocksss, then you repeat that with the ssstone blocksss to make sssmall ssstonesz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 8));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(737, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(735, 10, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, du wollen mehr �ber Steinmetz lernen? Ich geben dir zzehn rohe Sssteine und Meissel um 20 kleine Sssteine f�r mich zu machen, zsss. Rohe Sssteine gibtsss in der Mine viel! Du nehmen Meisel in die Hand und bearbeiten rohe Sssteine, danach Sssteinquadar bearbeiten zu kleinen Sssteinen und mir bringen 20, zss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(1266, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(1266, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, well done, thanksss you. Zsss, Ssseleseth says thanksss for the help and hopesss you learnt sssomething about gem grinding, masssonry and bricksss making.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(1266, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(1266, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, gut gemachts, dankes. Zsss, Ssseleseth sagen danke f�r Hilfess und hoffen du was �ber Edelssteinssschleifen, Sssteine bahauen und Zzziegelmachen gelernt haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(1266, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(1266, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, well done, thanksss you. Zsss, Ssseleseth says thanksss for the help and hopesss you learnt sssomething about gem grinding, masssonry and bricksss making.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(1266, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(1266, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(709, "=", 9));
talkEntry:addResponse("Zsss, gut gemachts, dankes. Zsss, Ssseleseth sagen danke f�r Hilfess und hoffen du was �ber Edelssteinssschleifen, Sssteine bahauen und Zzziegelmachen gelernt haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(1266, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, they are not the twenty sssmall ssstonesz that I was looking for. Come backsss when you have the ssstonesz!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(1266, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Zsss, dasss nicht ssein 20 kleine Steiness die ich wollte. Komm wieder wenn du Sssteine haben!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Zsss, I don't have any other thingsss for yousss to do. Thank yousss for the help though, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(709, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Zsss, ich haben nichtsss weiter f�r dich zu tun. Aber dankes nochmal f�r deine Hilfe, zsss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("You are not a citizzsen of Galmairss. I don't have anything for yousss to do, zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Du ssscheint kein B�rgers Galmair zu sssein. Ich hab nichtsss f�r dichss zu tun, zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me schaut sich gelangweilt um.", "#me looks around bored.");
talkingNPC:addCycleText("#me kratzt sich am Kopf.", "#me scratches his head.");
talkingNPC:addCycleText("Wenns du Hilfe beim Edelsssteinsschleifen, Sssteine behauen oder Zzziegelbrennen brauchst dann frag michss!", "If you need any help in gem grinding, masssonry or bricksss making, jussst asssk me!");
talkingNPC:addCycleText("Zsss...", "Zsss...");
talkingNPC:addCycleText("Zsss!", "Zsss!");
talkingNPC:addCycleText("Zsss?", "Zsss?");
talkingNPC:addCycleText("#me zischelt.", "#me hisses.");
talkingNPC:addCycleText("Ssss...", "Ssss...");
talkingNPC:addCycleText("Ssss?", "Ssss?");
talkingNPC:addCycleText("Ssss!", "Ssss!");
talkingNPC:addCycleText("Tsss...", "Tsss...");
talkingNPC:addCycleText("#me l�sst seinen Schwanz hin und her schnellen.", "#me wags his tail back and forth.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(4);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("", "");
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 696);
mainNPC:setEquipment(11, 194);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 824);
mainNPC:setEquipment(10, 0);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, texttype, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END