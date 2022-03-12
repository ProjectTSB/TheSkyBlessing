#> asset:mob/0264.dark_summoner/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0264.dark_summoner/tick/1.trigger

# 付近にプレイヤーがいるならスコア加算 Predicateなどが完成したらそれに移行したい
    execute positioned ^ ^ ^5 if entity @p[distance=..5] at @s run function asset:mob/0264.dark_summoner/tick/event/prepare_magic

# 実行
    #execute if score @s 7C.Attack matches 80.. run

# 射撃攻撃キャンセル
    execute unless entity @p[distance=..10] run scoreboard players reset @s 7C.Attack
