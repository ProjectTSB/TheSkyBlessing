#> player_manager:god/flora/unbelieve
#
#
#
# @within function player_manager:god/change_believe/unbelieve

# 演出
    tellraw @s {"text":"フローラ「...裏切り者」"}
# 処理
    # 信仰タグ削除
        tag @s remove Believe.Flora
        tag @s add Believe.None
    # 水攻撃+20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 10]
        function api:player_modifier/attack/water/remove
    # 水耐性+20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 10]
        function api:player_modifier/defense/water/remove
    # 火耐性-20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 10]
        function api:player_modifier/defense/fire/remove