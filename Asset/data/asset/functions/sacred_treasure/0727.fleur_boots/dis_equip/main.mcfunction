#> asset:sacred_treasure/0727.fleur_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0727.fleur_boots/dis_equip/

#> Private
# @private
    #declare tag K5.Fullset

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,727,3]
# 補正の削除
    function api:player_modifier/defense/magic/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,727,3]
# 補正の削除
    function api:player_modifier/defense/water/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,727,3]
# 補正の削除
    function api:player_modifier/heal/remove

# フルセット解除
    execute if entity @s[tag=K5.Fullset] run function asset:sacred_treasure/0725.fleur_armor/5.fullset_dis_equip