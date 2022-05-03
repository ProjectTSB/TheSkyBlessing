#> asset:mob/0237.lunatic_mage/tick/3.select_skill
#
# 技決定
#
# @within function asset:mob/0237.lunatic_mage/tick/2.tick

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    execute if entity @s[tag=!6L.HealthLess50Per] run scoreboard players operation $Random Temporary %= $8 Const
    execute if entity @s[tag=6L.HealthLess50Per] run scoreboard players operation $Random Temporary %= $10 Const

# デバッグ用
   #scoreboard players set $Random Temporary 5
# 技用Tagを付与
    execute if score $Random Temporary matches 0 run tag @s add 6L.Fire
    execute if score $Random Temporary matches 1 run tag @s add 6L.Fire2
    execute if score $Random Temporary matches 2..3 run tag @s add 6L.Water
    execute if score $Random Temporary matches 4..5 run tag @s add 6L.Thunder
    execute if score $Random Temporary matches 6..7 run tag @s add 6L.Magic
    execute if score $Random Temporary matches 8..9 run tag @s add 6L.ElementalConfine

# リセット
    scoreboard players reset $Random Temporary
