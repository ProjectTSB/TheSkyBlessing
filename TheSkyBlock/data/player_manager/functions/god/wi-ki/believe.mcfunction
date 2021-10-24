#> player_manager:god/wi-ki/believe
#
#
#
# @within function player_manager:god/change_believe/believe

# 演出
    tellraw @s {"text":"ウィ＝キ「僕か、まあ...期待しておくことにするよ」"}
# 処理
    # 信仰タグ付与
        tag @s add Believe.Wi-ki
    # 魔法攻撃+15%
        data modify storage api: Argument.UUID set value [1, 2, 0, 14]
        data modify storage api: Argument.Amount set value 0.15
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/attack/magic/add
    # 魔法耐性+20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 14]
        data modify storage api: Argument.Amount set value 0.2
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/defense/magic/add
    # 火耐性-30%
        data modify storage api: Argument.UUID set value [1, 2, 0, 14]
        data modify storage api: Argument.Amount set value -0.3
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/defense/fire/add