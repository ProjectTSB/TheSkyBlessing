#> asset:mob/1004.tultaria/tick/1.melee_attack/slash_entity/2.main
#
#
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/slash_entity/1.tick

# スコア加算
    scoreboard players add @s RW.Tick 1

# アニメ(通常)
    item replace entity @s[scores={RW.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:16711680}
    item replace entity @s[scores={RW.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:16711680}
    item replace entity @s[scores={RW.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:16711680}

# キル
    kill @s[scores={RW.Tick=5..}]
