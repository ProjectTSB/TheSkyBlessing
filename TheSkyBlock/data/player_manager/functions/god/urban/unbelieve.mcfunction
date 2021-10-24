#> player_manager:god/urban/unbelieve
#
#
#
# @within function player_manager:god/change_believe/unbelieve

# 演出
    tellraw @s {"text":"ウルバン「貴様！よくもやってくれたな！」"}
# 処理
    # 信仰タグ削除
        tag @s remove Believe.Urban
        tag @s add Believe.None
    # 物理攻撃+25%
        data modify storage api: Argument.UUID set value [1, 2, 0, 13]
        function api:player_modifier/attack/physical/remove
    # 火攻撃+10%
        data modify storage api: Argument.UUID set value [1, 2, 0, 13]
        function api:player_modifier/attack/fire/remove
    # 魔法攻撃-20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 13]
        function api:player_modifier/attack/magic/remove
    # ノックバック軽減+30%
        attribute @s generic.knockback_resistance modifier remove 1-0-2-0-d