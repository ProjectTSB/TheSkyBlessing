#> asset:sacred_treasure/0644.raimei_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0644.raimei_leggings/dis_equip/
    #declare tag HV.Full

# タグを消す
    tag @s remove HV.Full


# 引数の設定
    # UUID
    data modify storage api: Argument.UUID set value [I;1,1,644,4]
# 補正の削除
    function api:player_modifier/defense/thunder/remove
