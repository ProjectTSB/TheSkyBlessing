#> asset:artifact/0985.ark_of_the_sanctuary/trigger/reset
#
# リセットする。
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/**

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