#> asset:mob/1004.tultaria/tick/skill/dash_slash/back_slash_swoosh
#
# 演出とダメージ判定を同時にやる
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/5.delay_slash

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.2
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0
    playsound block.glass.break hostile @a ~ ~ ~ 1 1.8 0

# ダメージ判定
    execute as @a[distance=..3] run function asset:mob/1004.tultaria/tick/skill/dash_slash/damage_back_slash