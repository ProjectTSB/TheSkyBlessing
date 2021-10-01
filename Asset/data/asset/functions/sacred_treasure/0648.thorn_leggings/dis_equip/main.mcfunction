#> asset:sacred_treasure/0648.thorn_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0648.thorn_leggings/dis_equip/

#> Private
# @private
    #declare tag HZ.FullSet

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,648,4]
# 補正の削除
    function api:player_modifier/defense/water/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,648,4]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

# フルセットタグを削除
    execute if entity @s[tag=HZ.FullSet] run tag @s remove HZ.FullSet