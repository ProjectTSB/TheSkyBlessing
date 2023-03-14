#> asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
#
#
#
# @within function asset:artifact/0793.queen_bee_rocket/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 0.6
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    summon vex ~ ~ ~ {NoAI:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20054}}],Tags:["M1.First","M1.Bee","Projectile"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
# 弾を前方拡散に向ける
    tp @e[type=vex,tag=M1.First,distance=..1,limit=1] ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1]
# ユーザーID適応
    scoreboard players operation @e[type=vex,tag=M1.First] M1.UserID = @s UserID
# タグを消す
    tag @e[tag=M1.First] remove M1.First

# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..10]