#> asset:sacred_treasure/0650.red_flame_helmet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0650.red_flame_helmet/trigger/dis_equip/

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,640,6]
# 補正の追加
    function api:player_modifier/defense/fire/remove

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,640,6]
# 補正の追加
    function api:player_modifier/defense/water/remove

# 防御力
    attribute @s generic.armor modifier remove 00000001-0000-0001-0000-028a00000006
    attribute @s generic.armor_toughness modifier remove 00000001-0000-0001-0000-028a00000006