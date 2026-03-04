# 0. [데이터 감지] 던져진 눈덩이 중 커스텀 데이터가 있는 녀석에게 태그 부여
# 아이템 컴포넌트의 custom_data를 읽어서 엔티티 태그(impact_grenade)를 붙입니다.
execute as @e[type=snowball,tag=!smoke_processed] if data entity @s Item.components."minecraft:custom_data"{grenade_type:"smoke"} run tag @s add smoke_grenade
execute as @e[type=snowball,tag=!smoke_processed] run tag @s add smoke_processed

# 1. [소환] 태그가 붙은 눈덩이 위치에 마커 생성
execute as @e[type=snowball,tag=smoke_grenade,tag=!has_marker] at @s run summon marker ~ ~ ~ {Tags:["smoke_grenade_tracker"]}
execute as @e[type=snowball,tag=smoke_grenade,tag=!has_marker] run tag @s add has_marker

# 2. [추적] 마커가 눈덩이를 따라가게 함
execute as @e[tag=smoke_grenade_tracker] at @s run tp @s @e[type=snowball,tag=smoke_grenade,limit=1,sort=nearest,distance=..2]

# 3. [충돌 감지] 마커 주변에 눈덩이가 없으면 폭발 함수 실행
execute as @e[tag=smoke_grenade_tracker] at @s unless entity @e[type=snowball,tag=smoke_grenade,distance=..2] run function game_logic:grenades/on_hit_smoke_grenade