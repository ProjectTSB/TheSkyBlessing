#> asset:artifact/0613.call_fulstuka/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0613.call_fulstuka/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    data modify storage api: Argument.ID set value 282
    function api:mob/summon


# 演出
    particle dust 1 0 0.749 1 ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 1 0 0.749 1 ~ ~5 ~ 0.7 5 0.7 1 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 8
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50
    function asset:artifact/0613.call_fulstuka/trigger/particle

    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.7 0

