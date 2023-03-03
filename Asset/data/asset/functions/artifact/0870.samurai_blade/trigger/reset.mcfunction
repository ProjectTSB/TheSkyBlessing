#> asset:artifact/0870.samurai_blade/trigger/reset
#
# リセットする。
#
# @within function asset:artifact/0870.samurai_blade/trigger/**

# スコアを戻す
    scoreboard players reset @s O6.Time
    scoreboard players reset @s O6.Turn
    scoreboard players reset @s O6.WaitingTime

# ちょっとした演出
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2