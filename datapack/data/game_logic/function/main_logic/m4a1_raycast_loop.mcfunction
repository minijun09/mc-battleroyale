# 1. 벽 감지 (가장 먼저 체크하여 불필요한 연산 방지)
execute unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute unless entity @s run return 0

# 2. 앞으로 이동
execute at @s as @s run tp @s ^ ^ ^0.5

# 3. 궤적 표시
execute at @s if score @s max_range matches ..47 run particle smoke ~ ~ ~ 0 0 0 0.01 1

# 4. 주변몹 감지 및 데미지
# dx, dy, dz는 양수 값을 권장합니다. (범위 설정 주의)
execute at @s as @e[type=!block_display, distance=..1, limit=1] if score @s bullet_age matches 2.. run damage @s 1 minecraft:arrow by @p
execute at @s if entity @e[type=!block_display, distance=..1, limit=1] if score @s bullet_age matches 2.. run kill @s
execute unless entity @s run return 0

# 5. 최대 사거리 감지 및 재귀 호출
scoreboard players remove @s max_range 1

# 사거리가 다 되면 죽이고 함수 완전히 종료
execute if score @s max_range matches ..0 run kill @s
execute if score @s max_range matches ..0 run return 0

# 위 조건들을 모두 통과했을 때만 다음 루프 실행
function game_logic:main_logic/m4a1_raycast_loop
