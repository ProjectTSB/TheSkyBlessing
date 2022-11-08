#> asset:mob/0022.red_knight/tick/skills/slash_entity/3.main
#
# 斬撃エンティティのメイン処理部分
#
# @within function asset:mob/0022.red_knight/tick/skills/slash_entity/2.tick

# スコア加算
    scoreboard players add @s M.Tick 1

# アニメ(通常)
    item replace entity @s[scores={M.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:16711680}
    item replace entity @s[scores={M.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:16711680}
    item replace entity @s[scores={M.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:16711680}

# キル
    kill @s[scores={M.Tick=5..}]
