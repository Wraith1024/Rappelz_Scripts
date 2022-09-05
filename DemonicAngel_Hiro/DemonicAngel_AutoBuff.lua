
-- Fonction de test //// Produit non final, simple test
-- But de la fonction : Add un buff pendant x Seconde ( 10 pour tester )
-- Au bout de ces 10 secondes : on add l autre 
-- may not work


function event_buff()
	if get_global_variable("game.allow_buff_from_GM") == 1 then

		----------------------- Logs -------------------------------
		--notice("allow_buff_from_GM -> 1 - Processing")
		----------------------- Logs -------------------------------

		if get_global_variable("game.buff_for_server") == "" then -- Si les valeurs existent pas on crée et met le buff temps

		----------------------- Logs -------------------------------
		--notice("Creating Server Buff -> Processing")
		----------------------- Logs -------------------------------

		    set_global_variable("game.buff_for_server",get_os_time())
		    set_global_variable("game.buff_for_server_remove",get_os_time() + 20) --> Add du temps de buff ( en seconde ? a check)
		    add_event_state(1003,50) --> add le buff
		    set_global_variable("game.waiting_buff",0) --> Variable car pour dire que le premier buff est mis

		elseif get_os_time() - get_global_variable("game.buff_for_server_remove") <= 0 then

		----------------------- Logs -------------------------------
		notice("Checking Buff ::: "..(get_os_time() - get_global_variable('game.buff_for_server_remove')) * -1 .."s time remaining")
		----------------------- Logs -------------------------------

		elseif get_os_time() - get_global_variable("game.buff_for_server_remove") >= 0 then --> check si temps dépassé

			if get_global_variable("game.waiting_buff") == 0 then --> On check si on a mis le deuxieme buff

		----------------------- Logs -------------------------------
		notice("We are now adding the Automatic second buff !")
		----------------------- Logs -------------------------------

				add_event_state(1004,50) --> add du new
				remove_event_state(1003) --> on enleve l ancien
				set_global_variable("game.waiting_buff",1) --> on update car on a bien mis le deuxieme buff
				set_global_variable("game.buff_for_server",get_os_time()) --> New timer pour le buff
		    	set_global_variable("game.buff_for_server_remove",get_os_time() + 20) --> //
			else
				if get_os_time() - get_global_variable("game.buff_for_server_remove") >= 0 then --> On check le temps du deuxieme buff

		----------------------- Logs -------------------------------
		notice("Removing event Buff")
		----------------------- Logs -------------------------------
					remove_event_state(1004) --> on enleve
					set_global_variable("game.allow_buff_from_GM",0) -- check pour add un reset mode
					--notice("removed buff : Automatic event end") --> annonce de fin d event
					reset_buff()
				end
			end
		end

	else

		notice("Benefit not availlable : Ask to a GM")

	end
	
end

function start_event_buff()
	set_global_variable("game.allow_buff_from_GM",1)
	event_buff()
end

function try1()
set_global_variable("N:game.buff_for_server_remove",get_os_time() + 10)
notice("N:game.buff_for_server_remove")
end

function reset_buff()
del_global_variable("game.allow_buff_from_GM")
del_global_variable("game.buff_for_server")
del_global_variable("game.buff_for_server_remove")
del_global_variable("game.waiting_buff")
end

function clear_chat()

for i=0,50 do
message(" ")
end

end