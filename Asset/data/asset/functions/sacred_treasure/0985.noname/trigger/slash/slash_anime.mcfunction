#> asset:sacred_treasure/0985.noname/trigger/slash/slash_anime
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/slash/slash_schedule

# スコア加算
    scoreboard players add @s RD.SwordTime 1

# アニメ
    item replace entity @s[scores={RD.SwordTime=2}] weapon.mainhand with potion{CustomModelData:20242}
    item replace entity @s[scores={RD.SwordTime=3}] weapon.mainhand with potion{CustomModelData:20243}
    item replace entity @s[scores={RD.SwordTime=4}] weapon.mainhand with potion{CustomModelData:20244}

# キル
    kill @s[scores={RD.SwordTime=5..}]