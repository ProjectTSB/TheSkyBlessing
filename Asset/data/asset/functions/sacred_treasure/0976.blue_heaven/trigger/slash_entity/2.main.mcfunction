#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/2.main
#
#
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/1.tick

# 向き
    #execute store result entity @s Pose.RightArm.[1] float 1 run data get entity @p Rotation[1]

# 同IDのプレイヤーを特定
    execute at @a[distance=..10] if score @s R4.UserID = @p UserID run tag @p add R4.OwnerPlayer

# 向きを揃える
    execute at @p[distance=..10] run tp @s ~ ~-0.3 ~

# スコア加算
    scoreboard players add @s R4.Tick 1

# 判定
    execute if entity @s[scores={R4.Tick=..3}] rotated ~ 0 positioned ^ ^ ^1.5 as @e[tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/damage

# アニメ(通常)
    item replace entity @s[tag=!R4.SlashFinish,scores={R4.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:50175}
    item replace entity @s[tag=!R4.SlashFinish,scores={R4.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:50175}
    item replace entity @s[tag=!R4.SlashFinish,scores={R4.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:50175}

# アニメ(フィニッシュ)
    item replace entity @s[tag=R4.SlashFinish,scores={R4.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:8908799}
    item replace entity @s[tag=R4.SlashFinish,scores={R4.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:8908799}
    item replace entity @s[tag=R4.SlashFinish,scores={R4.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:8908799}

# リセット
    tag @a[tag=R4.OwnerPlayer] remove R4.OwnerPlayer

# キル
    kill @s[scores={R4.Tick=5..}]
