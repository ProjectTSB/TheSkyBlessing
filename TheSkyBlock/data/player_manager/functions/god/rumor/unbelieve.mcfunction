#> player_manager:god/rumor/unbelieve
#
#
#
# @within function player_manager:god/change_believe/unbelieve

# 演出
    tellraw @s {"text":"ルーモア「信じらんない！何を考えてるの！！」"}
# 処理
    # 信仰タグ削除
        tag @s remove Believe.Rumor
        tag @s add Believe.None
    # 雷攻撃+15%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        function api:player_modifier/attack/thunder/remove
    # 雷耐性-15%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        function api:player_modifier/defense/thunder/remove
    # 攻撃-10%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        function api:player_modifier/attack/base/remove
    # 耐性-10%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        function api:player_modifier/defense/base/remove