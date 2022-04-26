#> asset:mob/0217.medousa_eye/tick/05.beam_shoot
#
# ビーム発射と
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

# スコアが70以上で石化ビーム発射
    execute positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/06.beam

# ビームがヒット
    execute as @a[tag=LandingTarget,distance=..20] at @s run function asset:mob/0217.medousa_eye/tick/07.beam_hit

# 音
    playsound minecraft:entity.elder_guardian.death hostile @a[distance=..25] ~ ~ ~ 0.6 2 0.1

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players reset @s 61.Tick