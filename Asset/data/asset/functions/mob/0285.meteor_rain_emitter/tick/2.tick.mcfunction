#> asset:mob/0285.meteor_rain_emitter/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0285.meteor_rain_emitter/tick/1.trigger

# スコア加算
    scoreboard players add @s 7X.MoveTime 1

# 一定の数値で隕石を撃つ
    execute if score @s 7X.MoveTime matches 10.. run function asset:mob/0285.meteor_rain_emitter/tick/event/cast_meteor

# ここは熱いですよ感を出す
    particle lava ~ ~ ~ 10 10 10 0 1

# 消滅
    kill @s[scores={7X.Count=10..}]