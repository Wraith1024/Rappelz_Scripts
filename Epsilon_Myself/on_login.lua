-- Lua 스크립트 암호화
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
	
	
	-- 직업이 없는 캐릭은 새로만든 캐릭이므로 초기설정
	if get_value( "job" ) == 0 then
		on_first_login( name )
		
		if state_code == 4 or state_code == 8 or state_code == 128 or state_code == 16384 or state_code == 32768 or state_code == 65536 then


		end
		
	-- 기존 캐릭터일 때, 국가 코드=64(중국)만 광고 화면 팝업
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
	
	-- 귀환지역 없는 플레이어는 귀환지역 설정.
	if (gv('rx') == nil or gv('rx') == "") and (gv('ry') == nil or gv('ry') == "") then -- 해외
		temp_rx = get_flag( "rx" )
		temp_ry = get_flag( "ry" )
	else -- 국내
		temp_rx = gv( "rx" )
		temp_ry = gv( "ry" )
	end

	if temp_rx == "" or temp_ry == "" then
		
			-- 데바 귀환지역 설정
			if (gv('rx') == nil or gv('rx') == "") and (gv('ry') == nil or gv('ry') == "") then -- 해외
				if race == 4 then -- 데바 귀환지역 설정
					set_flag( "rx", 7250 + math.random(0,100))
					set_flag( "ry", 6959 + math.random(0,100))
				elseif race == 5 then -- 아수라 귀환지역 설정	
					set_flag( "rx", 116542 + math.random(0,100))
					set_flag( "ry", 58190 + math.random(0,100))
				else -- 가이아 귀환지역 설정
					set_flag( "rx", 152742 + math.random(0,100))
					set_flag( "ry", 77401 + math.random(0,100))
				end
			else -- 국내
				if race == 4 then -- 데바 귀환지역 설정
					sv( "rx", 7250 + math.random(0,100))
					sv( "ry", 6959 + math.random(0,100))
				elseif race == 5 then -- 아수라 귀환지역 설정
					sv( "rx", 116542 + math.random(0,100))
					sv( "ry", 58190 + math.random(0,100))
				else -- 가이아 귀환지역 설정
					sv( "rx", 116542 + math.random(0,100))
					sv( "ry", 58190 + math.random(0,100))
				end
			end
	end
	
	-- 오토로 세팅된 캐릭터라면 저 멀리 날려 버리자~
	kick_auto_to_another_world()

	-- 수련자 섬에 있는 오토들은 본토로 날려 버리자
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
	
	-- 지난 이벤트 플래그 삭제
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

	
	-- 탐험의 왕 플래그 필요없음 2016.12.16
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
	
	--아무런 사용 없음
	del_flag( "cyan_ticket" )
	del_flag( "green_ticket" )
	
	--불카누스 입장시 새로 생성하므로 삭제
	del_flag( "Vul1" )
	del_flag( "Vul2" )
	del_flag( "Vul3" )
	
	--퀘스트 완료로 삭제
	--반환값 -1 : 아무것도 아님  /  0 : 수락가  /  1 : 수행중  /  2 : 종료가능   / 100 : 실패  /  255 : 이미종료
	local quest_progress3248 = get_quest_progress(3248) -- [집착]에르곤 크라토스
	local quest_progress3609 = get_quest_progress(3609) -- [큐브릭]악마 큐브 정화
	local quest_progress2008 = get_quest_progress(2008) -- [부활]광신도 암살자: 붉은농장
	local quest_progress2025 = get_quest_progress(2025) -- [부활]헥토르 소환
	
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
	
	-- 9.4 잊혀진 신들의 섬 : 접속시 이전 타임 플레이 시간이면 유적도시로 소환
	
	if current_x >= 161280 and current_x <= 177408 and  current_y >= 145152 and current_y <= 161280 then						
						
		local onboard_time = get_flag( "onboard_time" )					
							
		if onboard_time == ""  then					
			warp( 155396 + math.random(0,10), 149683 + math.random(0,10) )
		else					
			local current = get_os_time()				
			local elapsed = current - onboard_time
			
			if elapsed > 3360 then  -- 탑승권 유효 56분 (텔레포트시 세팅)				
				warp( 155396 + math.random(0,10), 149683 + math.random(0,10) )
			end				
		end					
	end	
		
	on_login_event()
	
	if state_code == 1 then
		local current_time = get_os_date( "%Y-%m-%d %H:%M:%S" )
		
		if '2017-05-11 10:00:00' <= current_time and current_time < '2017-06-01 10:00:00' then -- 전체 이벤트 기간
			local count_time_event = get_account_flag( "count_time_event_201705" )
			if count_time_event ~= "" and count_time_event ~= nil then
				private_notice( count_time_event.."일차까지 접속보상을 받았습니다." ) -- 접속 보상 공지			
			end
		end
	end
	
end