
-- Fonction de test //// Produit non final, simple test
-- But de la fonction : Add un buff pendant x Seconde ( 60 pour tester )
-- Au bout de ces 60 secondes : on add l autre 
-- may not work


function event_buff()
	if get_env("game.buff_for_server") == "" then -- Si les valeurs existent pas on crée et met le buff temps
	    set_env("game.buff_for_server",get_os_time())
	    set_env("game.buff_for_server_remove",get_os_time() + 60) --> Add du temps de buff ( en seconde ? a check)
	    notice("Server Buff Added by : "..gv('name').." !") --> Annonce de buff
	    add_event_state(1003,50) --> add le buff
	    set_env("game.waiting_buff",0) --> Variable car pour dire que le premier buff est mis
	elseif get_os_time() - get_env("game.buff_for_server_remove") <= 0 then --> check si temps dépassé
		if get_env("game.waiting_buff") == 0 then --> On check si on a mis le deuxieme buff
			add_event_state(1004,50) --> add du new
			remove_event_state(1003) --> on enleve l ancien
			set_env("game.wainting_buff",1) --> on update car on a bien mis le deuxieme buff
			set_env("game.buff_for_server",get_os_time()) --> New timer pour le buff
	    	set_env("game.buff_for_server_remove",get_os_time() + 60) --> //
		else
			if get_os_time() - get_env("game.buff_for_server_remove") <= 0 then --> On check le temps du deuxieme buff
				remove_event_state(1004) --> on enleve
				notice("removed buff : Automatic event end") --> annonce de fin d event
			end
		end
	end
end