#> asset:mob/0038.laser_eye/tick/2.4.attack2
#
# ビームを撃っちゃう
#
# @within function asset:mob/0038.laser_eye/tick/2.1.attack

#> Temp
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4.0
    data modify storage lib: Argument.Spread set value 0.8

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:mob/0038.laser_eye/tick/2.2.shoot

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
    stopsound @a hostile minecraft:block.beacon.ambient

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @s remove Landing
    tag @s remove C.Charge
    scoreboard players reset @s C.LaserTime