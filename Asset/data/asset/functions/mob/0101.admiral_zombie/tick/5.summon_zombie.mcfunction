#> asset:mob/0101.admiral_zombie/tick/5.summon_zombie
#
#
#
# @within function asset:mob/0101.admiral_zombie/tick/4.summon
#
    #declare score_holder $Random
    #declare score_holder $100

# 演出
    particle cloud ~ ~1.2 ~ 0.3 0.4 0.3 0.1 10 normal @a

    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $11 Const
    # ゾンビを召喚するためのIDを選択
        execute if score $Random Temporary matches 1..3 run data modify storage api: Argument.ID set value 95
        execute if score $Random Temporary matches 4..5 run data modify storage api: Argument.ID set value 96
        execute if score $Random Temporary matches 6..7 run data modify storage api: Argument.ID set value 97
        execute if score $Random Temporary matches 8..9 run data modify storage api: Argument.ID set value 98
        execute if score $Random Temporary matches 10..11 run data modify storage api: Argument.ID set value 99

# リセット
    scoreboard players reset $Random Temporary

# 召喚
    execute positioned ~ ~ ~ run function api:mob/summon
