#> asset:artifact/0172.icicle/trigger/laser/2.laser_directing
#
#
#
# @within function asset:artifact/0172.icicle/trigger/laser/1.laser

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    particle firework ~ ~ ~ 0 0 0 1 10
    particle electric_spark ~ ~ ~ 0.5 0.4 0.5 1 20 normal
    playsound minecraft:entity.firework_rocket.twinkle_far player @a[distance=..30  ] ~ ~ ~ 0.72 2 0.72

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 2.3

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] feet as @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] run function asset:artifact/0172.icicle/trigger/laser/particle_special

# 前方拡散キル
    kill @e[type=marker,tag=SpreadMarker,distance=..50]