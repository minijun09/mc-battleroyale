#총알수 감지 & 재장전
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:revolver}] run scoreboard players operation @s ammo = @s revolver_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:revolver}] run scoreboard players operation @s max_ammo = @s revolver_max_ammo
execute as @a if items entity @s weapon.offhand *[custom_data~{gun_id:"revolver"}] run function game_logic:main_logic/revolver_reload


execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:m4a1}] run scoreboard players operation @s ammo = @s m4a1_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:m4a1}] run scoreboard players operation @s max_ammo = @s m4a1_max_ammo
execute as @a if items entity @s weapon.offhand *[custom_data~{gun_id:"m4a1"}] run function game_logic:main_logic/m4a1_reload
