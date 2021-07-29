#> asset:sacred_treasure/0645.raimei_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0645.raimei_boots/dis_equip/
    #declare tag HV.Full

# タグを消す
    tag @s[tag=HV.Full] remove HV.Full

# 引数の設定
    # UUID
    data modify storage api: Argument.UUID set value [I;1,1,645,3]
# 補正の削除
    function api:player_modifier/defense/thunder/remove
