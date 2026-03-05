execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"m4a1"}] run scoreboard players operation @s ammo = @s m4a1_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"m4a1"}] run scoreboard players operation @s max_ammo = @s m4a1_max_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"m4a1"}] run scoreboard players operation @s cooldown = @s m4a1_cooldown
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"revolver"}] run scoreboard players operation @s ammo = @s revolver_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"revolver"}] run scoreboard players operation @s max_ammo = @s revolver_max_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun_id:"revolver"}] run scoreboard players operation @s cooldown = @s revolver_cooldown
execute as @a unless items entity @s weapon.mainhand *[custom_data~{gun:"true"}] run scoreboard players set @s cooldown 0

execute as @a if items entity @s weapon.mainhand *[custom_data~{gun:"true"}] run function game_logic:ui/ui_1