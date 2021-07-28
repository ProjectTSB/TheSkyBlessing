#> asset:sacred_treasure/0643.raimei_chestplate/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0643.raimei_chestplate/dis_equip/

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,643,5]
# 補正の削除
    function api:player_modifier/defense/thunder/remove
