function staff_event_buff(state)

	local buff_tab_id = {1003,1004}
	local buff_tab_lv = {1,1}

	-- Fonction staff_event_buff
	-- usage : /run staff_event_buff(1) - add buff
	-- usage : /run staff_event_buff(0) - rem buff

	if state == 1 then


		for i=0, table.getn(buff_tab_id) - 1 do
			add_event_state(buff_tab_id[i],buff_tab_lv[i]) -- la fonction pour add les buff event
		end

	else

		for i=0, table.getn(buff_tab_id) - 1 do
			remove_event_state(buff_tab_id[i]) -- la fonction pour remove les buff event
		end


	end
end