#> asset:sacred_treasure/0985.noname/trigger/slash/slash_anime
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/slash/slash_schedule

# スコア加算
    scoreboard players add @s RD.SwordTime 1

# アニメ
    item replace entity @s[scores={RD.SwordTime=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:50175}
    item replace entity @s[scores={RD.SwordTime=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:50175}
    item replace entity @s[scores={RD.SwordTime=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:50175}

# キル
    kill @s[scores={RD.SwordTime=5..}]