function on_change_weapon()


if get_global_variable("switch_"..gv('name').."_time") == "" then

    set_global_variable("switch_"..gv('name').."_time",get_os_time())
    set_global_variable("switch_"..gv('name').."_count",0)
    message("Added player in Anti Spam System")

elseif get_os_time() - get_global_variable("switch_"..gv('name').."_time") <= 0 then

    local swap_count = get_global_variable("switch_"..gv('name').."_count")
    set_global_variable("switch_"..gv('name').."_count", swap_count + 1)
    message("Stop Spamming Swith : "..swap_count)

if get_global_variable("switch_"..gv('name').."_count") > 10 then

    set_global_variable("switch_"..gv('name').."_count",0)
    notice(gv('name').." is a Switch Weapons Spammer !!!!")
    add_state(6012,1,500)

end

else
    set_global_variable("switch_"..gv('name').."_time",get_os_time())
    set_global_variable("switch_"..gv('name').."_count",0)
end

end