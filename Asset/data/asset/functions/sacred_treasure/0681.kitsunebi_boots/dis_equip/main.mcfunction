#> asset:sacred_treasure/0681.kitsunebi_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0681.kitsunebi_boots/dis_equip/

    # 属性耐性の削除
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,681,3]
    # 補正の削除
        function api:player_modifier/defense/magic/remove

    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,681,3]
    # 補正の削除
        function api:player_modifier/defense/fire/remove

# フルセット削除
    execute if entity @s[tag=IV.FullSet] run function asset:sacred_treasure/0679.kitsunebi_armor/15.fullset_disequip