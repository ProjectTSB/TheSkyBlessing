#> player_manager:god/rumor/believe
#
#
#
# @within function player_manager:god/change_believe/believe

# 演出
    tellraw @s {"text":"ルーモア「私を信仰してくれるの？大歓迎だからね！」"}
# 処理
    # 信仰タグ付与
        tag @s add Believe.Rumor
    # 雷攻撃+15%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        data modify storage api: Argument.Amount set value 0.15
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/attack/thunder/add
    # 雷耐性-15%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        data modify storage api: Argument.Amount set value -0.15
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/defense/thunder/add
    # 攻撃-10%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        data modify storage api: Argument.Amount set value -0.1
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/attack/base/add
    # 耐性-10%
        data modify storage api: Argument.UUID set value [1, 2, 0, 12]
        data modify storage api: Argument.Amount set value -0.1
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/defense/base/add