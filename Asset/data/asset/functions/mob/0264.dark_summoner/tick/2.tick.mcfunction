#> asset:mob/0264.dark_summoner/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0264.dark_summoner/tick/1.trigger

# 付近にプレイヤーがいるならスコア加算 Predicateなどが完成したらそれに移行したい
    execute if entity @s[tag=!7C.CastStart] positioned ^ ^ ^5 if entity @p[distance=..5] at @s run function asset:mob/0264.dark_summoner/tick/event/cast_start

# 一度詠唱動作に入ると離れても唱える
    execute if entity @s[tag=7C.CastStart] run function asset:mob/0264.dark_summoner/tick/event/casting

# 攻撃キャンセル
    execute unless entity @p[distance=..20] run function asset:mob/0264.dark_summoner/tick/event/cast_finish
