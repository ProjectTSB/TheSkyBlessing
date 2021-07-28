#> asset:sacred_treasure/0642.raimei_helmet/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0642.raimei_helmet/dis_equip/

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,642,6]
# 補正の削除
    function api:player_modifier/defense/thunder/remove
