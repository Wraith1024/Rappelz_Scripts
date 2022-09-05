function pvp_npc()
	local lv = gv("lv")
	local gold = gv("gold")
	dlg_title("Artemis")
	dlg_text("Hello, you want to fight ?, for fight, you must be level 150 and have 100k gold !")
	if lv >= 150 and gold > 50000000 then

		if get_env("player_pvp_queue_count") == 0 or get_env("player_pvp_queue_count") == 1 then
			dlg_menu("Register to Queue !",'register_to_queue(1,0)')
		else
			dlg_menu("No Arena Availlable !",'register_to_queue(0,0)')
		end

		if get_env("player_1") == gv("name") or get_env("player_2") == gv("name") then
			dlg_menu("Remove me from the list !",'cancel_player_queue()')
		end
		

	else

		dlg_menu("Register to Queue !",'register_to_queue(0,0)')

	end

	dlg_menu("Close",'Close()')
	dlg_show()
end


function register_to_queue(is_able,has_joined) 

	x1 = 111179
	x2 = 109967

	y1 = 67682
	y2 = 67443

	if is_able == 1 and has_joined == 0 then

	dlg_special("confirm_window", "register_to_queue(1,1)", "Would you join the PVP Queue ( 1 V 1 )")

	elseif is_able == 1 and has_joined == 1 then

		-- Code pour créer la file

		if get_env("player_pvp_queue_count") == nil or get_env("player_pvp_queue_count") == "" then

			set_env("player_pvp_queue_count",1)

		else

			set_env("player_pvp_queue_count", tonumber(get_env("player_pvp_queue_count")) + 1)

		end

		-- Code pour créer la file
		local queue_count = tonumber(get_env("player_pvp_queue_count"))
		-- local player_in_queue = get_env("player_"..i)
		set_env("player_"..queue_count, gv('name')) -- Ajout du joueur dans la "liste des joueurs PVP"
		for i=1,queue_count do

			private_notice("Number of player in the Queue : "..queue_count)
			insert_item(910005,5,0,0)
			-- tp du joueur

			if i % 2 <= 0 then

				-- if i = 2: tp player 2 and player 2-1 
				-- if i = 4 : tp player 4 and player 3
				-- etc

				if get_env("player_"..i) == get_env("player_"..i-1) then

				set_env("player_1",gv("name"))
				set_env("player_2",0)
				set_env("player_pvp_queue_count",1)
				dlg_general("WARNING !! <br><br> You can't join two time the PVP Arena ! <br><br> WARNING !!")

				else

				warp(x1,y1,get_env("player_"..i))
				warp(x2,y2,get_env("player_"..i-1))
				set_env("count_of_die",0)

			
				set_pk_mode(1,get_env("player_"..i))
				set_pk_mode(1,get_env("player_"..i-1))
				sv("gold",gv("gold") - 50000000)
				

				notice("The fight between : "..get_env("player_1").." And "..get_env("player_2").." Started !")

				private_notice("Player in the Queue :  "..get_env("player_"..i)) -- Log


				private_notice_log(get_env("player_"..i))

				end

				


				-- check if need to reduce the queue_count value !
				-- add secure on_disconnect -> delete le mec des var env

			end

		end


	else

	dlg_general("You are not able to join the PVP Arena !")

	end

end


function cancel_player_queue()


		set_env("player_1",0)
		set_env("player_2",0)
		set_env("player_pvp_queue_count",0)
		private_notice("Done with Succès")

		

end

function on_player_death_in_pvp()

	if get_env("player_1") == gv("name") or get_env("player_2") == gv("name") then

		if get_env("count_of_die") < 5 then

			set_env("count_of_die",tonumber(get_env("count_of_die")) + 1)
			notice("[Arena-Fight] 1V1 of : "..get_env("player_1").." and "..get_env("player_2").." : "..gv('name').." Die")

		else
			notice("The Fight between : "..get_env("player_1").." and "..get_env("player_2").." : is end !")
			warp(117935,59173,get_env("player_1"))
			warp(118002,59173,get_env("player_2"))
			set_pk_mode(0,get_env("player_1"))
			set_pk_mode(0,get_env("player_2"))
			set_env("player_1",0)
			set_env("player_2",0)
			set_env("player_pvp_queue_count",0)
			set_env("count_of_die",0)
			private_notice("You'r Die !")
		end

		

		

	end

	
end

function fkatan()
	warp(119497,54406)
end


function active_arena()
	set_env("player_1",0)
	set_env("player_2",0)
	set_env("player_pvp_queue_count",0)
end