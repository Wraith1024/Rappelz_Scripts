-- Lua ��ũ��Ʈ ��ȣȭ
function get_module_name()
             return "on_login"
end

function tryagain()

for i=0,37 do
local X = 690400 + i*3
insert_item(X,1)
end

end

function on_login( name )
		
	local race = get_value( "race" )
	local state_code = get_local_info() 	
	
	
	-- ������ ���� ĳ���� ���θ��� ĳ���̹Ƿ� �ʱ⼳��
	if get_value( "job" ) == 0 then
		on_first_login( name )
		
		if state_code == 4 or state_code == 8 or state_code == 128 or state_code == 16384 or state_code == 32768 or state_code == 65536 then


		end
		
	-- ���� ĳ������ ��, ���� �ڵ�=64(�߱�)�� ���� ȭ�� �˾�
	else
		if state_code == 64 then
			
		end
	end
	

	if gv('rx') == 0 and gv('ry') == 0 then
		sv('rx',get_flag( "rx" ))
		sv('ry',get_flag( "ry" ))
	end
	
	local temp_rx
	local temp_ry
	
	-- ��ȯ���� ���� �÷��̾�� ��ȯ���� ����.
	if (gv('rx') == nil or gv('rx') == "") and (gv('ry') == nil or gv('ry') == "") then -- �ؿ�
		temp_rx = get_flag( "rx" )
		temp_ry = get_flag( "ry" )
	else -- ����
		temp_rx = gv( "rx" )
		temp_ry = gv( "ry" )
	end

	if temp_rx == "" or temp_ry == "" then
		
			-- ���� ��ȯ���� ����
			if (gv('rx') == nil or gv('rx') == "") and (gv('ry') == nil or gv('ry') == "") then -- �ؿ�
				if race == 4 then -- ���� ��ȯ���� ����
					set_flag( "rx", 7250 + math.random(0,100))
					set_flag( "ry", 6959 + math.random(0,100))
				elseif race == 5 then -- �Ƽ��� ��ȯ���� ����	
					set_flag( "rx", 116542 + math.random(0,100))
					set_flag( "ry", 58190 + math.random(0,100))
				else -- ���̾� ��ȯ���� ����
					set_flag( "rx", 152742 + math.random(0,100))
					set_flag( "ry", 77401 + math.random(0,100))
				end
			else -- ����
				if race == 4 then -- ���� ��ȯ���� ����
					sv( "rx", 7250 + math.random(0,100))
					sv( "ry", 6959 + math.random(0,100))
				elseif race == 5 then -- �Ƽ��� ��ȯ���� ����
					sv( "rx", 116542 + math.random(0,100))
					sv( "ry", 58190 + math.random(0,100))
				else -- ���̾� ��ȯ���� ����
					sv( "rx", 116542 + math.random(0,100))
					sv( "ry", 58190 + math.random(0,100))
				end
			end
	end
	
	-- ����� ���õ� ĳ���Ͷ�� �� �ָ� ���� ������~
	kick_auto_to_another_world()

	-- ������ ���� �ִ� ������� ����� ���� ������
	local current_x = gv("x")
	local current_y = gv("y")
 
	if current_x >= 161280 and current_x <= 177408 then
		if current_y >= 48384 and current_y <= 64512 then
		
			local is_auto, quest_count
			quest_count, is_auto = anti_auto_quest_check()
	
			if is_auto then
			
		 		if race == 4 then
					RunTeleport_Auto_TO_City( 6625 , 6980 )
				elseif race == 5 then
					RunTeleport_Auto_TO_City( 116799 , 58205 )
				else
					RunTeleport_Auto_TO_City( 153506 , 77175 )
				end
				
			end -- if is_auto then
			
		end -- if current_y >= 48384 and current_y <= 64512 then
	end -- if current_x >= 161280 and current_x <= 177408 then
	
	-- ���� �̺�Ʈ �÷��� ����
	del_flag( "2014_christmas_last_login_date" )	
	del_flag( "2014_christmas_toy_count" )
	del_flag( "2014_christmas_toy_count_yesterday" )
	del_flag( "2014_christmas_team" )
	del_flag( "2014_christmas_team_yesterday" )
	del_flag( "2014_christmas_2013550" )
	del_flag( "2014_christmas_2013551" )
	del_flag( "2014_christmas_2013552" )
	del_flag( "2014_christmas_2013553" )
	del_flag( "2014_christmas_2013554" )
	del_flag( "2014_christmas_2013555" )
	del_flag( "2014_christmas_2013556" )
	del_flag( "2014_christmas_2013557" )
	del_flag( "2014_christmas_2013558" )
	del_flag( "2014_christmas_2013559" )
	del_flag( "2014_christmas_2013560" )
	del_flag( "2014_christmas_2013561" )

	del_flag( "2015_christmas_last_login_date" )	
	del_flag( "2015_christmas_toy_count" )
	del_flag( "2015_christmas_toy_count_yesterday" )
	del_flag( "2015_christmas_team" )
	del_flag( "2015_christmas_team_yesterday" )
	del_flag( "2015_christmas_2013550" )
	del_flag( "2015_christmas_2013551" )
	del_flag( "2015_christmas_2013552" )
	del_flag( "2015_christmas_2013553" )
	del_flag( "2015_christmas_2013554" )
	del_flag( "2015_christmas_2013555" )
	del_flag( "2015_christmas_2013556" )
	del_flag( "2015_christmas_2013557" )
	del_flag( "2015_christmas_2013558" )
	del_flag( "2015_christmas_2013559" )
	del_flag( "2015_christmas_2013560" )
	del_flag( "2015_christmas_2013561" )
	
	del_flag( "2016_christmas_last_login_date" )	
	del_flag( "2016_christmas_toy_count" )
	del_flag( "2016_christmas_toy_count_yesterday" )
	del_flag( "2016_christmas_team" )
	del_flag( "2016_christmas_team_yesterday" )
	del_flag( "2016_christmas_2013550" )
	del_flag( "2016_christmas_2013551" )
	del_flag( "2016_christmas_2013552" )
	del_flag( "2016_christmas_2013553" )
	del_flag( "2016_christmas_2013554" )
	del_flag( "2016_christmas_2013555" )
	del_flag( "2016_christmas_2013556" )
	del_flag( "2016_christmas_2013557" )
	del_flag( "2016_christmas_2013558" )
	del_flag( "2016_christmas_2013559" )
	del_flag( "2016_christmas_2013560" )
	del_flag( "2016_christmas_2013561" )
	
	del_flag( "soccerball_get" )
	del_flag( "quest_compare_time" )
	del_flag( "EU_event_question" )
	del_flag( "yut_get" )
	del_flag( "egg_color" )
	del_flag( "halloween_2014_give" )
	del_flag( "halloween_2014_title" )
	del_flag( "quest_progress4009" )
	
	del_flag( "count_705014" )
	del_flag( "count_705015" )
	del_flag( "count_950078" )
	del_flag( "count_950117" )
	del_flag( "count_960126" )
	del_flag( "count_2010454" )
	del_flag( "count_2013247" )
	del_flag( "count_2013599" )
	del_flag( "count_2013600" )
	del_flag( "count_2013601" )
	del_flag( "count_2013602" )
	del_flag( "count_2013698" )
	del_flag( "count_2013699" )
	del_flag( "count_3800275" )

	
	-- Ž���� �� �÷��� �ʿ���� 2016.12.16
	del_flag( "over_bluepoint_lakcity" )
	del_flag( "over_bluepoint_horizon" )
	del_flag( "over_bluepoint_katan" )
	del_flag( "over_bluepoint_rondoh" )
	
	del_flag( "over_redpoint_lakcity" )
	del_flag( "over_redpoint_horizon" )
	del_flag( "over_redpoint_katan" )
	del_flag( "over_redpoint_rondoh" )
	
	del_flag( "over_greenpoint_lakcity" )
	del_flag( "over_greenpoint_horizon" )
	del_flag( "over_greenpoint_katan" )
	del_flag( "over_greenpoint_rondoh" )
	
	--�ƹ��� ��� ����
	del_flag( "cyan_ticket" )
	del_flag( "green_ticket" )
	
	--��ī���� ����� ���� �����ϹǷ� ����
	del_flag( "Vul1" )
	del_flag( "Vul2" )
	del_flag( "Vul3" )
	
	--����Ʈ �Ϸ�� ����
	--��ȯ�� -1 : �ƹ��͵� �ƴ�  /  0 : ������  /  1 : ������  /  2 : ���ᰡ��   / 100 : ����  /  255 : �̹�����
	local quest_progress3248 = get_quest_progress(3248) -- [����]������ ũ���佺
	local quest_progress3609 = get_quest_progress(3609) -- [ť�긯]�Ǹ� ť�� ��ȭ
	local quest_progress2008 = get_quest_progress(2008) -- [��Ȱ]���ŵ� �ϻ���: ��������
	local quest_progress2025 = get_quest_progress(2025) -- [��Ȱ]���丣 ��ȯ
	
	if quest_progress3248 == 255 then
		del_flag( "count" )
		del_flag( "sx" )
		del_flag( "sy" )
		del_flag( "ex" )
		del_flag( "ey" )
	end
	
	if quest_progress3609 == 255 then
		del_flag( "alram_count_01" )
		del_flag( "alram_count_02" )
		del_flag( "alram_count_03" )
		del_flag( "alram_count_04" )
		del_flag( "alram_count_05" )
		del_flag( "alram_count_06" )
		
		del_flag( "juliet_finding" )
		del_flag( "romeo_finding" )
		
	end
	
	if quest_progress2008 == 255 then
		del_flag( "mainquest_warp" )
	end
	
	if quest_progress2025 == 255 then
		del_flag( "hectorspawn" )
	end

	update_title_condition( 9002001, gv( "max_reached_level" ) )
	
	-- 9.4 ������ �ŵ��� �� : ���ӽ� ���� Ÿ�� �÷��� �ð��̸� �������÷� ��ȯ
	
	if current_x >= 161280 and current_x <= 177408 and  current_y >= 145152 and current_y <= 161280 then						
						
		local onboard_time = get_flag( "onboard_time" )					
							
		if onboard_time == ""  then					
			warp( 155396 + math.random(0,10), 149683 + math.random(0,10) )
		else					
			local current = get_os_time()				
			local elapsed = current - onboard_time
			
			if elapsed > 3360 then  -- ž�±� ��ȿ 56�� (�ڷ���Ʈ�� ����)				
				warp( 155396 + math.random(0,10), 149683 + math.random(0,10) )
			end				
		end					
	end	
		
	on_login_event()
	
	if state_code == 1 then
		local current_time = get_os_date( "%Y-%m-%d %H:%M:%S" )
		
		if '2017-05-11 10:00:00' <= current_time and current_time < '2017-06-01 10:00:00' then -- ��ü �̺�Ʈ �Ⱓ
			local count_time_event = get_account_flag( "count_time_event_201705" )
			if count_time_event ~= "" and count_time_event ~= nil then
				private_notice( count_time_event.."�������� ���Ӻ����� �޾ҽ��ϴ�." ) -- ���� ���� ����			
			end
		end
	end
	
end