# 1. 아주 작은 크기(0.01)로 소환
# 초기 상태를 설정하여 소환합니다.
summon block_display ~ ~ ~ {Tags:["smoke_cloud_out","smoke_init"],block_state:{Name:"minecraft:white_wool"},transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
summon block_display ~ ~ ~ {Tags:["smoke_cloud_in","smoke_init"],block_state:{Name:"minecraft:white_wool"},transformation:{translation:[0.5f,0f,0.5f],scale:[-1f,-1f,-1f]}}
# 2. 소리 효과 (치이익-)
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 1 0.5
kill @s