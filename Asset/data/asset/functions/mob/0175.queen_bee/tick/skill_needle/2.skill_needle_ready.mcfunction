#> asset:mob/0175.queen_bee/tick/skill_needle/2.skill_needle_ready
#
# 発砲準備
#
# @within function asset:mob/0175.queen_bee/tick/skill_needle/1.skill_needle

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4.0
    data modify storage lib: Argument.Spread set value 1

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:mob/0175.queen_bee/tick/skill_needle/3.skill_needle_shot

# 演出
    playsound minecraft:entity.bee.sting hostile @a[distance=..30] ~ ~ ~ 1 1 1

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @s remove Landing