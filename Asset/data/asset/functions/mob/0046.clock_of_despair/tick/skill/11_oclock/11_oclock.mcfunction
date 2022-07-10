#> asset:mob/0046.clock_of_despair/tick/skill/11_oclock/11_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 1100 run playsound minecraft:block.bell.use master @a
# ウィッチを消しておく
    execute if score @s 1A.LifeTime matches 1100 run tp @e[type=zombie,scores={MobID=187},distance=..50,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 1100 run tp @e[type=zombie,scores={MobID=189},distance=..50,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 1100 run tp @e[type=zombie,scores={MobID=190},distance=..50,sort=nearest,limit=1] ~ -100 ~

# 自分を爆破し続ける
    execute if score @s 1A.LifeTime matches 1140.. run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_damage