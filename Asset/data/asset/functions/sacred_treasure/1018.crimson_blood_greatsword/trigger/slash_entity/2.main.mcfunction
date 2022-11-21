#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/2.main
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/1.tick

# スコア加算
    scoreboard players add @s SA.Tick 1

# アニメ(通常)
    item replace entity @s[tag=!SA.SlashEntityFinish,scores={SA.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:50175}
    item replace entity @s[tag=!SA.SlashEntityFinish,scores={SA.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:50175}
    item replace entity @s[tag=!SA.SlashEntityFinish,scores={SA.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:50175}

# アニメ(フィニッシュ)
    item replace entity @s[tag=SA.SlashEntityFinish,scores={SA.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:8908799}
    item replace entity @s[tag=SA.SlashEntityFinish,scores={SA.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:8908799}
    item replace entity @s[tag=SA.SlashEntityFinish,scores={SA.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:8908799}

# キル
    kill @s[scores={SA.Tick=5..}]
