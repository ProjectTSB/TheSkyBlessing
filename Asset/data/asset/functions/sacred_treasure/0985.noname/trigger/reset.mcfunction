#> asset:sacred_treasure/0985.noname/trigger/reset
#
# リセットする。
#
# @within function asset:sacred_treasure/0985.noname/trigger/**

# スコアを戻す
    scoreboard players reset @s RD.Time
    scoreboard players reset @s RD.Turn
    scoreboard players reset @s RD.WaitingTime

# ちょっとした演出
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2