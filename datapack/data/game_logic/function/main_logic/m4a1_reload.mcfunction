#조건 안맞으면 리턴
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute unless score @s m4a1_cooldown matches 0 run return fail
execute if score @s m4a1_ammo = @s m4a1_max_ammo run return fail
execute unless items entity @s container.* minecraft:iron_nugget[item_name={"text":"5.56mm STANAG 탄창"}] run return fail

#재장전코드
scoreboard players operation @s m4a1_ammo = @s m4a1_max_ammo
clear @s minecraft:iron_nugget[item_name={"text":"5.56mm STANAG 탄창"}] 1
scoreboard players set @s m4a1_cooldown 10