execute if score @s max_range matches 0 run kill @s
execute if score @s max_range matches 0 run return fail
#궤적 표시
execute at @s if score @s max_range matches ..47 run particle smoke ~ ~ ~ 0 0 0 0.01 1

#앞으로 이동
tp @s ^ ^ ^0.5

#주변몹 감지 및 데미지
execute at @s as @e[type=!block_display,dx=-0.5,dy=-0.5,dz=-0.5,limit=1] if score @s bullet_age matches 2.. run damage @s 1 minecraft:arrow by @p
execute at @s if entity @e[type=!block_display ,dx=-0.5,dy=-0.5,dz=-0.5,limit=1] if score @s bullet_age matches 2.. run kill @s

#벽 감지
execute unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute unless entity @s run return 1

#최대 사거리 감지
scoreboard players remove @s max_range 1
function game_logic:main_logic/revolver_raycast_loop
