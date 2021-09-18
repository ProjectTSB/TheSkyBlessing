#> asset:sacred_treasure/0639.neptune_armor/9.fullset_dis_equip
#
#
#
# @within function asset:sacred_treasure/????.neptune_*/dis_equip/main

# Tag削除
    tag @s remove HS.Fullset

# 水ダメージ量+10%
    data modify storage api: Argument.UUID set value [I;1,1,639,0]
    function api:player_modifier/defense/water/remove

# 専用スコアリセット
    scoreboard players reset @s HS.AttackCool