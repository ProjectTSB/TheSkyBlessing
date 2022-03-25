#> asset:mob/0232.honey_leader/tick/05.shoot_and_reset
#
# ビーム発射の処理とリセット処理を行うよ
#
# @within function asset:mob/0232.honey_leader/tick/2.tick

# ビーム発射
    execute positioned ~ ~1.5 ~ run playsound block.honey_block.hit hostile @a[distance=..20] ~ ~ ~ 1 1 0.5
    execute positioned ~ ~1.5 ~ run playsound block.honey_block.hit hostile @a[distance=..20] ~ ~ ~ 1 1.2 0.5
    execute positioned ~ ~1.5 ~ run function asset:mob/0232.honey_leader/tick/06.beam

# ヒット処理
    execute as @a[tag=LandingTarget,distance=..20] run function asset:mob/0232.honey_leader/tick/07.hit

# NoAIとビームスコアリセットと鈍足削除
    data modify entity @s NoAI set value 0b
    scoreboard players reset @s 6G.BeamCool
    effect clear @s slowness
