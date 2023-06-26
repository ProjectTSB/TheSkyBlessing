#> asset:mob/0282.call_fulstuka/tick/1.skill_gun/3.ready
#
# 発砲準備をします
#
# @within function asset:mob/0282.call_fulstuka/tick/1.skill_gun/1.skill_gun
#> tag
# @private
    #declare tag SpreadMarker


# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 10.0
    data modify storage lib: Argument.Spread set value 2

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute positioned ^-0.4 ^ ^1.4 facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ~ ~-0.425 ~ anchored eyes positioned ^ ^ ^ run function asset:mob/0282.call_fulstuka/tick/1.skill_gun/4.shot

# 演出
    playsound minecraft:entity.shulker.shoot neutral @a ~ ~ ~ 1 1.6
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 2

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @s remove Landing