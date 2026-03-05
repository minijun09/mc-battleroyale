execute unless items entity @s weapon.mainhand *[custom_data~{gun:"true"}] run return fail
execute if score @s cooldown matches 1.. run title @s actionbar [{"text":"[","color":"gray"},{"text":"쿨타임중...","color":"gray"},{"text":"]","color":"gray"}]
execute if score @s cooldown matches 1.. run return fail
execute if score @s ammo = @s max_ammo run title @s actionbar [{"text":"[ ","color":"green"},{"score":{"name":"@s","objective":"ammo"},"color":"green"},{"text":" / ","color":"green"},{"score":{"name":"@s","objective":"max_ammo"},"color":"green"},{"text":" ]","color":"green"}]
execute if score @s ammo < @s max_ammo unless score @s ammo matches 0 run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"ammo"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"max_ammo"},"color":"gold"},{"text":" ]","color":"gold"}]
execute if score @s ammo matches 0 run title @s actionbar [{"text":"[ ","color":"dark_red","bold":true},{"score":{"name":"@s","objective":"ammo"},"color":"red"},{"text":" / ","color":"dark_red"},{"score":{"name":"@s","objective":"max_ammo"},"color":"red"},{"text":" ]","color":"dark_red","bold":true}]
