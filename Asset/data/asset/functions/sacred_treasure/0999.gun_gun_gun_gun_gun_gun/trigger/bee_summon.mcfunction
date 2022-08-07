#> asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee_summon
#
#
#
# @within function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/3.main

# 弾を召喚
    summon vex ~ ~ ~ {NoAI:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20054}}],Tags:["RR.First","RR.Bee","Projectile"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
# 銃を前に向ける
    execute as @e[type=vex,tag=RR.First,distance=..1,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~
# ユーザーID適応
    scoreboard players operation @e[type=vex,tag=RR.First] RR.UserID = @s UserID
# タグを消す
    tag @e[tag=RR.First] remove RR.First
