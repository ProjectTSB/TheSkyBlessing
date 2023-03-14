#> asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill4
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill_active

# スコアを増やす
    execute if score @s RD.Time matches 1.. run scoreboard players add @s RD.Time 1

# 剣を振る
    execute if score @s RD.Time matches 2 anchored eyes positioned ~ ~ ~ run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash/slash2
    execute if score @s RD.Time matches 2 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash


# 飛ぶ剣を召喚する
    execute if score @s RD.Time matches 2 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/sword_summon
# スコアを消す
    execute if score @s RD.Time matches 10 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/reset