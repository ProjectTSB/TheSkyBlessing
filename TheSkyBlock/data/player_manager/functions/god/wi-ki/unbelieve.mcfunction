#> player_manager:god/wi-ki/unbelieve
#
#
#
# @within function player_manager:god/change_believe/unbelieve

# 演出
    tellraw @s {"text":"ウィ＝キ「結局君もその程度だったのか」"}
# 処理
    # 信仰タグ削除
        tag @s remove Believe.Wi-ki
        tag @s add Believe.None
    # 魔法攻撃+15%
        data modify storage api: Argument.UUID set value [1, 2, 0, 14]
        function api:player_modifier/attack/magic/remove
    # 魔法耐性+20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 14]
        function api:player_modifier/defense/magic/remove
    # 火耐性-30%
        data modify storage api: Argument.UUID set value [1, 2, 0, 14]
        function api:player_modifier/defense/fire/remove