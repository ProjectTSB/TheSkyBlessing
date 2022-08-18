#> asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/random_rotation
#
#
#
# @within function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning

#> Private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $13 Const

# 値に応じて角度を変えて再帰 y_rotationが入っている部分は雷の向きが水平になりすぎるのを防ぐため
    execute if score $Random Temporary matches 0 if entity @s[x_rotation=90..] rotated ~ ~ run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    execute if score $Random Temporary matches 1..2 if entity @s[x_rotation=90..] rotated ~ ~10 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    execute if score $Random Temporary matches 3..4 if entity @s[x_rotation=90..] rotated ~ ~20 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    execute if score $Random Temporary matches 5..6 if entity @s[x_rotation=90..] rotated ~ ~25 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    execute if score $Random Temporary matches 7..8 if entity @s[x_rotation=90..] rotated ~ ~-10 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    execute if score $Random Temporary matches 9..10 if entity @s[x_rotation=90..] rotated ~ ~-20 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    execute if score $Random Temporary matches 11..12 if entity @s[x_rotation=90..] rotated ~ ~-25 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning

# 一定以上進んでいない場合、条件が合わずに進まないのを回避する
    execute if score $RecursiveLimit Temporary matches 2..5 if entity @s[x_rotation=..89] rotated ~ ~-20 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning

# リセット
    scoreboard players reset $Random Temporary