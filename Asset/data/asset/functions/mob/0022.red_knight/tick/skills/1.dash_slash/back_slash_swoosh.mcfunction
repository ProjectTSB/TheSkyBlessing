#> asset:mob/0022.red_knight/tick/skills/1.dash_slash/back_slash_swoosh
#
# 演出とダメージ判定を同時にやる
#
# @within function asset:mob/0022.red_knight/tick/skills/1.dash_slash/1.tick

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.2

# ダメージ判定
    execute as @a[distance=..3] run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/damage_back_slash