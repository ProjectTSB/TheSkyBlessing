#> asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill3
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill_active

# スコアを増やす
    execute if score @s RD.Time matches 1.. run scoreboard players add @s RD.Time 1

# 剣を振る
    execute if score @s RD.Time matches 2 anchored eyes positioned ~ ~ ~ run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash/slash3
    execute if score @s RD.Time matches 2 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash

# 剣を振る
    execute if score @s RD.Time matches 4 anchored eyes positioned ~ ~ ~ run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash/slash4
    execute if score @s RD.Time matches 4 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash

# 剣を振る
    execute if score @s RD.Time matches 6 anchored eyes positioned ~ ~ ~ run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash/slash5
    execute if score @s RD.Time matches 6 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash

# 剣を振る
    execute if score @s RD.Time matches 8 anchored eyes positioned ~ ~ ~ run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash/slash6
    execute if score @s RD.Time matches 8 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash


# スコアを消す
    execute if score @s RD.Time matches 10 run scoreboard players reset @s RD.Time