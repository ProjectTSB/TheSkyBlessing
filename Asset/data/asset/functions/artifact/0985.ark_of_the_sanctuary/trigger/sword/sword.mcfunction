#> asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/sword
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/schedule

#> private
# @private
    #declare score_holder $2tInterval

# スコア加算
    scoreboard players add @s RD.SwordTime 1

# 少し遅らせて表示
    item replace entity @s[scores={RD.SwordTime=2}] armor.head with potion{CustomModelData:20245}

# 2tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $2tInterval Temporary = @s RD.SwordTime
# 2tickおきに実行
    scoreboard players operation $2tInterval Temporary %= $2 Const
    execute if score $2tInterval Temporary matches 0 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/damage
# リセット
    scoreboard players reset $2tInterval Temporary

# 移動
    execute if score @s RD.SwordTime matches 1..3 run tp ^ ^ ^2
    execute if score @s RD.SwordTime matches 3..6 run tp ^ ^ ^1
    execute if score @s RD.SwordTime matches 6.. run tp ^ ^ ^0.5

# キル
    kill @s[scores={RD.SwordTime=20..}]