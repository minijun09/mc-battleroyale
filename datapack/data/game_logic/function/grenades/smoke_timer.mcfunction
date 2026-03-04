scoreboard players add @e[tag=smoke_cloud_in] smoke_timer 1
scoreboard players add @e[tag=smoke_cloud_out] smoke_timer 1

execute as @e[tag=smoke_cloud_in,scores={smoke_timer=2}] run data merge entity @s {start_interpolation:0, interpolation_duration:40, transformation:{translation:[2f, 3f, 2f] ,scale:[-4.0f,-4.0f,-4.0f]}}
execute as @e[tag=smoke_cloud_in,scores={smoke_timer=160}] run data merge entity @s {start_interpolation:0,interpolation_duration:40,transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=smoke_cloud_in,scores={smoke_timer=200}] run kill @s

execute as @e[tag=smoke_cloud_out,scores={smoke_timer=2}] run data merge entity @s {start_interpolation:0, interpolation_duration:40, transformation:{translation:[-2f, -1f,-2f] ,scale:[4.0f,4.0f,4.0f]}}
execute as @e[tag=smoke_cloud_out,scores={smoke_timer=160}] run data merge entity @s {start_interpolation:0,interpolation_duration:40,transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=smoke_cloud_out,scores={smoke_timer=200}] run kill @s