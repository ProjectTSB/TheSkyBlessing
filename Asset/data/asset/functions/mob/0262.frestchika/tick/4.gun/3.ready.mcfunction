#> asset:mob/0262.frestchika/tick/4.gun/3.ready
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.gun/1.gun

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4.0
    data modify storage lib: Argument.Spread set value 3

# 前方拡散を実行する
    execute rotated ~ 0 as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute rotated ~ 0 positioned ^-0.4 ^ ^1.4 facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ~ ~-0.425 ~ anchored eyes positioned ^ ^ ^ run function asset:mob/0262.frestchika/tick/4.gun/4.shot

# 演出
    playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 1 1.6
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2

# リセット
    data remove storage lib: Argument
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @s remove Landing