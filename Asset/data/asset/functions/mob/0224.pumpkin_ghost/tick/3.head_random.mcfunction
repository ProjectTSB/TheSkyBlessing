#> asset:mob/0224.pumpkin_ghost/tick/3.head_random
#
#
#
# @within function asset:mob/0224.pumpkin_ghost/tick/2.tick

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $6 Const

# スキル選択
    execute if score $Random Temporary matches 0 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20201}
    execute if score $Random Temporary matches 1 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20202}
    execute if score $Random Temporary matches 2 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20203}
    execute if score $Random Temporary matches 3 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20204}
    execute if score $Random Temporary matches 4 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20205}
    execute if score $Random Temporary matches 5 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20206}
# リセット
    scoreboard players reset $Random Temporary

# 最寄りのプレイヤーを見る
    tp @s ~ ~ ~ facing entity @p

# タグつける
    tag @s add 68.Init