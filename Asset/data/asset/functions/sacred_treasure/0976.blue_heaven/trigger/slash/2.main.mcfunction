#> asset:sacred_treasure/0976.blue_heaven/trigger/slash/2.main
#
#
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash/1.tick

#
    #execute store result entity @s Pose.RightArm.[1] float 1 run data get entity @p Rotation[1]

# スコア加算
    scoreboard players add @s R4.Tick 1

# アニメ
    item replace entity @s[scores={R4.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:50175}
    item replace entity @s[scores={R4.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:50175}
    item replace entity @s[scores={R4.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:50175}
    kill @s[scores={R4.Tick=5..}]