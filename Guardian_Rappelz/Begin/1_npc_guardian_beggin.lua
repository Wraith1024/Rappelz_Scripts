function Guardian_NPC(id)

	if id > 0 then
		dlg_title("Unknow")
	end

	if id == 1 then
		dlg_text('I think you must learn something about us<br> We are the Guardian of the Gaia Force<br>Will you challenge the Guardian ?')
		if get_flag(gv("name")..id) == "OK" then
			dlg_menu("You have already get the Reward",'close()')
		else
			dlg_menu("[I]Introduction", 'show_stone_window(4)')
		end
	end

	if id == 2 then
		dlg_text('My friend told you something about the Guardian ? <br> Ok, to be honest, you will need to make some equipement to be ready to fight us')
		if get_flag(gv("name")..id) == "OK" then
			dlg_menu("You have already get the Reward",'close()')
		else
			dlg_menu("[II]Equipement", 'show_stone_window(5)')
		end

	end

	if id == 3 then
		dlg_text('Do not listen my friend ! <br> They want to scare you, i will reveal you the truth about us<br> We are the Guardian of the Gaia Force, our role is to give the young adventurer something to start easily')

		if get_flag(gv("name")..2016799+id-2) == "OK" then
			dlg_menu("You have already get the Reward",'close()')
		else
			dlg_menu("[III]Learn more about the Gaia Force", 'show_stone_window(1)')
		end
		
	end

	if id == 4 then
		dlg_text('After, talking with my friends, you must know something...<br> Go see my other friend to find more information')

		if get_flag(gv("name")..2016799+id-2) == "OK" then
			dlg_menu("You have already get the Reward",'close()')
		else
			dlg_menu("[IV]Learn more about the Deva Force", 'show_stone_window(2)')
		end
		
	end

	if id == 5 then
		dlg_text('Its time to reveal the truth about <br> The Elemental Master ')
			dlg_menu("PvP",'pvp_npc()')
		if get_flag(gv("name")..2016799+id-2) == "OK" then
			dlg_menu("Reveal the power of the Divine Corrupted Stone",'tp_to_next_step()')
		else
			dlg_menu("[V]Learn more about the Asura Force", 'show_stone_window(3)')
		end
		
	end
	
	dlg_menu( "Close...", "close()" )

	dlg_show()
end

function show_stone_window(id)

if id == 4 then

text = "<br><br><size:16><#C6510C>Introduction<br> <size:8> <#72B78A>The Power of the Darkness trust you<#FFFFFF><br><br> This is the story of the <E4A753>Guardian.<br><br><FFFFFF>The Guardians are <#DD6767>Amazing Warior<#FFFFFF>, Through their quests, their primary goal was to make peace reign over the <#72B78A>world of Gaia.<#FFFFFF><br>However, one fine day, the Guardians went <#72B78A>crazy<#FFFFFF> with <#72B78A>power<#FFFFFF> and were <#72B78A>banished to the lymbes<#FFFFFF> by the <#72B78A>supreme Devil.<br>It seems that you are in front of <#72B78A>5<#FFFFFF> of them, but especially <#72B78A>remember<#FFFFFF> that, the Guardian are<#72B78A>.. <br><br><br><#6F6A69>**Something is wrong, the unknown stops talking**<br>."
end


if id == 5 then

text = "<br><br><size:16><#C6510C>Equipement<br><br> <size:8> <#72B78A>For be able<#FFFFFF> to fight some malicious creature, you must take this<br><br> Be ready to figh... <E4A753>wait, not now<br><br><FFFFFF>They want to <#DD6767>back<#FFFFFF> for protect the stone.<br><br>"
end

if id == 1 then

text = "<br><br><size:16><#C6510C>Gaia's Stone<br><br> <size:13><#72B78A>The Gaia's Stone<#FFFFFF> have been found under the <#DD6767>World Tree<br><br><#FFFFFF>She was <#DD6767>buried<#FFFFFF> a long time ago after the fight of <#E4A753>The Master of Elements<#FFFFFF><br><br>To protect it from the corrupted spirit which would want to seize it.<br><br> <underline>Will you be able to use the Gaia's Divine Stone for protect us ?"

end


if id == 2 then

text = "<br><br><size:16><#C6510C>Deva's Stone<br><br> <size:13> <#72B78A>During a divine fight<#FFFFFF> The <#DD6767>Fallen Gods<#FFFFFF> lost many of their colleagues as well as their <#E4A753>source of power<#FFFFFF><br><br> So here is the Divine stone of the devas.<br><br>Use it well <br><br> <#DD6767>In the wrong hands,<#FFFFFF> it could be <#DD6767>devastating."
end



if id == 3 then

text = "<br><br><size:16><#C6510C>Asura's Stone<br><br> <size:13> <#72B78A>Everything started with a meeting in a dark forest<#FFFFFF><br><br> A group of adventurers found a object named <E4A753>Asura's Stone.<br><br><FFFFFF>They decided to perform a <#DD6767>Evil Ritual<#FFFFFF> to return the stone fallen.<br><br> They entrusted me with the power of the Asura Stone<br><br>It is now up to you to keep it and <underline>assume the responsibilities."
end


dlg_special("confirm_window", "give_stone_beggin("..id..")", text)

end

function give_stone_beggin(id)

-- NEED TO MAKE THE ITEM NON TRADABLE :)  + Check if player has already taked item -> Flag
 
if id == 1 then

item_name = "Divine Gaia's Stone"

elseif id == 2 then

item_name = "Deva Gaia's Stone"

elseif id == 3 then

item_name = "Asura Gaia's Stone"

elseif id == 4 then

item_name = "Aurumis Pet"
insert_item(690517,1)
set_flag(gv("name")..5-id,"OK")

elseif id == 5 then

item_name = "Equipement [ Unknown ]"
insert_item(603108,1,0,0)
insert_item(104102,1,20,10)
insert_item(105101,1,20,10)
insert_item(108101,1,20,10)
insert_item(109101,1,20,10)
insert_item(103102,1,20,10)
insert_item(103102,1,20,10)
insert_item(106102,1,20,10)
insert_item(107101,1,20,10)
insert_item(111101,1,20,10)
insert_item(101102,1,20,0)
insert_item(101102,1,20,0)
insert_item(102101,1,20,0)
insert_item(102101,1,20,0)


insert_item(302101,1,20,0)

insert_item(304101,1,20,0)
insert_item(303101,1,20,0)
insert_item(306203,1,0,0)

insert_item(603002,15,0,0)
insert_item(540014,5,0,0)
insert_item(540015,5,0,0)
insert_item(540016,5,0,0)
insert_item(490010,1,0,0)
insert_item(305201,1,0,0)
insert_item(491002,4,0,0)

sv("lv",19)
sv("jp",5000)
sv("hp",gv('hp') / 2)
sv("mp",gv('mp') / 2)
sv("gold",100000)

set_flag(gv("name")..7-id,"OK")
end

dlg_general("<size:12><br>--------------------------<br>Item Give Window<br>--------------------------<br><size:10> <br>You receive : <br><br>--------------------------<br><br> [<#53E472> "..item_name.."<#FFFFFF> ]<br><br>--------------------------")

if id < 4 then

insert_item(2016799+id,1)
set_flag(gv("name")..2016799+id,"OK")

private_notice_log("Divine Stone ["..id.."] gived to "..gv('name').." !")
end


end




function private_notice_log(txt)

private_notice("[DEBUG-MOD] : "..txt)

end

function close()

message("Unknown say 'Goodbye !'")

end

function tp_to_next_step()

dlg_general("Something went wrong, you was teleported to the Corrupted Divine Stone Area")

end


function r()
	refresh("script")
end


function ursa_market()
	dlg_title("Ursa Shop")
	dlg_text("Come Here to buy ursa items")
	dlg_menu("Consumable", 'open_market("consumableUrsa_market")')
	dlg_menu("Soul stone", 'open_market("soulstoneUrsa_market")')
	dlg_menu("Enhance", 'open_market("enhanceUrsa_market")')
	dlg_menu("Pets", 'petUrsa()')
	dlg_show()
end

function hiro_test()
	dlg_title("AP SHOP")
	dlg_text("Hello, this is your Arena Point SHOP")
	dlg_menu("Consumable", 'consumableAP()')
	dlg_menu("Arena Costume", 'open_market("costumeAP_market")')
	dlg_menu("Enhance", 'open_market("enhanceAP_market")')
	dlg_menu("Pet", 'open_market("petap_market")')
	dlg_menu("Soul Stone", 'open_market("soulstoneap_market")')
	dlg_show()
end

function consumableAP()
	dlg_title("consumable")
	dlg_text("Take your consumable and go away")
	dlg_menu("Consumable", 'open_market("consumableAP_market")')
	dlg_menu("Enhanced Altered Pieces", 'open_market("enhanced_altered_pieces")')
	dlg_show()
end


function petUrsa()
	dlg_title("Pet")
	dlg_text("Take your items and go away")
	dlg_menu("Ranged Summoning Scroll", 'open_market("rangedscroll_market")')
	dlg_menu("Melee Summoning Scroll", 'open_market("meleescroll_market")')
	dlg_menu("Tank Summoning Scroll", 'open_market("tankscroll_market")')
	dlg_menu("Healer Summoning Scroll", 'open_market("healscroll_market")')
	dlg_menu("Magic Summoning Scroll", 'open_market("magicscroll_market")')
	dlg_show()
	end


function restinpeace_test()
dlg_title("Restinpeace le plus beau")
dlg_text("xx")
dlg_menu("Boss Card", 'open_market("boss_card_market")') --categorie boss card
dlg_menu("Creature Tools", 'creatureloader()')
dlg_menu("Consumable", 'consumableHiro()')
dlg_menu("Decoration", 'decoration_charHiro()')
dlg_menu("Enhance", 'open_market("enhanceHiro_market")')
dlg_menu("Soul Stone", 'open_market("soulstone_market")')
dlg_menu("Gear Master Class", 'GearMasterClassLoader()')
dlg_menu("Lootpet", 'open_market("lootpetHiro_market")')
dlg_menu("Skill Card", 'skillcardloader()')

dlg_show()
end

function consumableHiro()
	dlg_title("Consumable")
	dlg_text("Consumable")
	dlg_menu("Consumable", 'open_market("consumableHiro_market")')
	dlg_menu("Altered Pieces", 'open_market("Altered_piecesHiro_market")')
	dlg_menu("Pet Potion", 'open_market("pet_potionHiro_market")')
	dlg_menu("Transformation Potion", 'open_market("Transformation_potionHiro_market")')
dlg_show()
end

function decoration_charHiro()
	dlg_title("decoration Character")
	dlg_text("decoration character")
	dlg_menu("Hairdye", 'open_market("design_character_market")')
	dlg_menu("Hairstyle", 'open_market("hairstyle_character_market")')
	dlg_menu("Skin color", 'open_market("skin_color_character_market")')
	dlg_menu("Wings", 'open_market("wings_hiromarket")')
	dlg_menu("cloak", 'open_market("cloak_hiromarket")')
	dlg_menu("Costume", 'open_market("costume_hiromarket")')
	dlg_menu("Mask", 'open_market("mask_hiromarket")')


	dlg_show()
end

function creatureloader()
	dlg_title("creature Tools")
	dlg_text("Creature Items")
	dlg_menu("Creature Empty", 'open_market("creature_empty_market")')
	dlg_menu("Creature Scroll", 'open_market("creature_scoll_market")')
	dlg_menu("Creature Consumable", 'open_market("creature_consumable_market")')
dlg_show()
end

function skillcardloader()
    dlg_title("Skill card")
    dlg_text("Select your class to find your skill card")
    dlg_menu("Basic Skill Card", 'open_market("basic_skillcardhiro")')
    dlg_menu("Asura Skill card", 'npc_cc("no", 0, 0, 0, "Asura")')
    dlg_menu("Deva Skill card", 'npc_cc("no", 0, 0, 0, "Deva")')
    dlg_menu("Gaia Skill card", 'npc_cc("no", 0, 0, 0, "Gaia")')
    dlg_menu("Buff Skill Card", 'open_market("buff_skillcardHiro_market")')
    dlg_show()
end

function npc_cc(job, fJob, sJob, tJob, race)
    dlg_title("Merchand")
    dlg_text("Hello i'm the merchand")

    if job == "no" then
        if race == "Asura" then
        dlg_menu("Slayer", 'npc_cc("load", "strider", "assassin", "slayer")')
        dlg_menu("DeadEye", 'npc_cc("load", "strider", "shadowhunter", "deadeye")')
        dlg_menu("Overlord", 'npc_cc("load", "sorcerer", "battlesummoner", "overlord")')
        dlg_menu("Corruptor", 'npc_cc("load", "darkmagician", "warlock", "corruptor")')
        dlg_menu("Void Mage", 'npc_cc("load", "darkmagician", "chaosmagician", "voidmage")')
        end

        if race == "Deva" then
        dlg_menu("Templar", 'npc_cc("load", "holywarrior", "knight", "templar")')
        dlg_menu("Mercenary", 'npc_cc("load", "holywarrior", "soldier", "mercenary")')
        dlg_menu("Oracle", 'npc_cc("load", "cleric", "priest", "oracle")')
        dlg_menu("Cardinal", 'npc_cc("load", "cleric", "bishop", "cardinal")')
        dlg_menu("Masterbreeder", 'npc_cc("load", "breeder", "soulbreeder", "masterbreeder")')
        end

        if race == "Gaia" then
        dlg_menu("Magus", 'npc_cc("load", "kahuna", "druid", "magus")')
        dlg_menu("War Kahuna", 'npc_cc("load", "kahuna", "battlekahuna", "warkahuna")')
        dlg_menu("Berserker", 'npc_cc("load", "fighter", "champion", "berserker")')
        dlg_menu("Marksman", 'npc_cc("load", "fighter", "archer", "marksman")')
        dlg_menu("Beast Master", 'npc_cc("load", "spellsinger", "evoker", "beastmaster")')
        end

    end
    if job == "load" then

        dlg_menu(fJob, 'open_market("'..fJob..'")')
        dlg_menu(sJob, 'open_market("'..sJob..'")')
        dlg_menu(tJob, 'open_market("'..tJob..'")')

    end
    dlg_menu(" ", 'close()')
    dlg_menu("<<<", 'npc_cc("no", 0, 0, 0)')
    dlg_menu("Close", 'close()')

    dlg_show()
end

function GearMasterClassLoader()
dlg_title("Gear Seller")
dlg_text("Buy your Master Class Gear")


	 dlg_menu("Weapons", 'open_market("weaponshiro_market")')


	dlg_menu("Armor", 'open_market("armorhiro_market")')



	dlg_menu("Gloves", 'open_market("gloveshiro_market")')



	dlg_menu("Boots", 'open_market("bootshiro_market")')



	dlg_menu("Accesories", 'open_market("accesorieshiro_market")')

end

