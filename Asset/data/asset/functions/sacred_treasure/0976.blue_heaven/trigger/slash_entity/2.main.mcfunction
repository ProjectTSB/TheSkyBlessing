#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/2.main
#
#
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/1.tick

# 向き
    #execute store result entity @s Pose.RightArm.[1] float 1 run data get entity @p Rotation[1]

#
    execute at @p run tp @s ~ ~-0.3 ~

# スコア加算
    scoreboard players add @s R4.Tick 1

# 判定
    execute if entity @s[scores={R4.Tick=..3}] rotated ~ 0 positioned ^ ^ ^2 as @e[tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/damage

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
