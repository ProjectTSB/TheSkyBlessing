#> asset:sacred_treasure/0985.noname/trigger/sword/sword
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/sword/schedule

# スコア加算
    scoreboard players add @s RD.SwordTime 1

    item replace entity @s[scores={RD.SwordTime=2}] armor.head with potion{CustomModelData:20245}

# アニメ
    execute if score @s RD.SwordTime matches 1..3 run tp ^ ^ ^2
    execute if score @s RD.SwordTime matches 3..6 run tp ^ ^ ^1
    execute if score @s RD.SwordTime matches 6.. run tp ^ ^ ^0.5

# キル
    kill @s[scores={RD.SwordTime=20..}]