#> asset:artifact/0976.brave_sword/trigger/slash_entity/2.main
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/slash_entity/1.tick

# スコア加算
    scoreboard players add @s R4.Tick 1

# アニメ(通常)
    item replace entity @s[tag=!R4.SlashFinish,scores={R4.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:50175}
    item replace entity @s[tag=!R4.SlashFinish,scores={R4.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:50175}
    item replace entity @s[tag=!R4.SlashFinish,scores={R4.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:50175}

# アニメ(フィニッシュ)
    item replace entity @s[tag=R4.SlashFinish,scores={R4.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:8908799}
    item replace entity @s[tag=R4.SlashFinish,scores={R4.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:8908799}
    item replace entity @s[tag=R4.SlashFinish,scores={R4.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:8908799}

# キル
    kill @s[scores={R4.Tick=5..}]
