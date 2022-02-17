#> asset:sacred_treasure/0651.red_flame_chestplate/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0651.red_flame_chestplate/trigger/dis_equip/

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,641,5]
# 補正の追加
    function api:player_modifier/defense/fire/remove

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,641,5]
# 補正の追加
    function api:player_modifier/defense/water/remove

# 防御力
    attribute @s generic.armor modifier remove 00000001-0000-0001-0000-028b00000005
    attribute @s generic.armor_toughness modifier remove 00000001-0000-0001-0000-028b00000005