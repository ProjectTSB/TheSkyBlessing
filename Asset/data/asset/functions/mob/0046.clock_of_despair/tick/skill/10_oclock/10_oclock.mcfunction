#> asset:mob/0046.clock_of_despair/tick/skill/10_oclock/10_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 1000 run playsound minecraft:block.bell.use master @a
# プレイヤーを引き寄せる
    execute as @a[distance=..30] at @s facing entity @e[type=zombie,tag=this,distance=..100,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.1