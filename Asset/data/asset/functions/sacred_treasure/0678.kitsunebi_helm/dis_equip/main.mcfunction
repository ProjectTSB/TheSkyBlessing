#> asset:sacred_treasure/0678.kitsunebi_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0678.kitsunebi_helm/dis_equip/

#> Private
# @private
    #declare tag IV.Fullset

# 補正の削除
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,678,6]
    # 補正の削除
        function api:player_modifier/attack/fire/remove

    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,678,6]
    # 補正の削除
        function api:player_modifier/defense/magic/remove

    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,678,6]
    # 補正の削除
        function api:player_modifier/defense/fire/remove

# フルセット削除
    execute if entity @s[tag=IV.Fullset] run function asset:sacred_treasure/0679.kitsunebi_armor/14.fullset_dis_equip