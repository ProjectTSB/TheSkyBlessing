#> asset:sacred_treasure/0662.rainbow_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0662.rainbow_leggings/dis_equip/

# 全属性の補正を削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,662,4]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,662,4]
# 補正の削除
    function api:player_modifier/defense/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,662,4]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,662,4]
# 補正の削除
    function api:player_modifier/defense/water/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,662,4]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

# フルセット補正の削除
    execute if entity @s[tag=ID.FullSet] run function asset:sacred_treasure/0661.rainbow_armor/7.disequip_fullset