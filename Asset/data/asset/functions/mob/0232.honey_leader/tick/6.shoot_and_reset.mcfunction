#> asset:mob/0232.honey_leader/tick/6.shoot_and_reset
#
# ビーム発射の処理とリセット処理を行うよ
#
# @within function asset:mob/0232.honey_leader/tick/2.tick

# ビーム発射
    playsound entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 1 1.5 0.8
    playsound block.honey_block.hit hostile @a[distance=..32] ~ ~ ~ 1 1 0.8
    playsound block.honey_block.hit hostile @a[distance=..32] ~ ~ ~ 1 1.2 0.8
    execute anchored eyes run function asset:mob/0232.honey_leader/tick/7.beam

# ヒット処理
    execute as @a[tag=LandingTarget,distance=..20] at @s run function asset:mob/0232.honey_leader/tick/8.hit

# NoAIとビームスコアリセット
    data modify entity @s NoAI set value 0b
    scoreboard players set @s 6G.Tick -60
    scoreboard players reset @s 6G.SkillSelect