#> asset:sacred_treasure/0985.noname/trigger/skill_list/skill_4/skill
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_active

# スコアを増やす
    execute if score @s RD.Time matches 1.. run scoreboard players add @s RD.Time 1

# 剣を振る
    execute if score @s RD.Time matches 2 anchored eyes positioned ~ ~ ~ run function asset:sacred_treasure/0985.noname/trigger/slash/slash2
    execute if score @s RD.Time matches 2 run function asset:sacred_treasure/0985.noname/trigger/slash


# 飛ぶ剣を召喚する
    execute if score @s RD.Time matches 2 run function asset:sacred_treasure/0985.noname/trigger/sword/sword_summon
# スコアを消す
    execute if score @s RD.Time matches 10 run function asset:sacred_treasure/0985.noname/trigger/reset