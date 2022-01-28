#> asset:mob/0138.combat_turret/tick/2.2.ready
#
# 発砲準備をします
#
# @within function asset:mob/0138.combat_turret/tick/2.1.near_player
#> tag
# @private
    #declare tag SpreadMarker


# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4.0
    data modify storage lib: Argument.Spread set value 1

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:mob/0138.combat_turret/tick/2.3.shot

# 演出
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.8 2

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @s remove Landing