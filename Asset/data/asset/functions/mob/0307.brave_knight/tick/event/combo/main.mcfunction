#> asset:mob/0307.brave_knight/tick/event/combo/main
#
# 剣を振り回す
#
# @within function asset:mob/0307.brave_knight/tick/event/attack_mode

# スコア加算
    scoreboard players add @s 0307.Combo 1

# コンボ
    execute if score @s 0307.Combo matches 3 run function asset:mob/0307.brave_knight/tick/event/combo/1
    execute if score @s 0307.Combo matches 6 run function asset:mob/0307.brave_knight/tick/event/combo/2
    execute if score @s 0307.Combo matches 9 run function asset:mob/0307.brave_knight/tick/event/combo/reset

# リセット
    scoreboard players reset @s[scores={0307.Combo=9..}] 0307.Combo