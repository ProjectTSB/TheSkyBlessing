#> asset:mob/0237.lunatic_mage/tick/03.select_skill
#
# 技決定
#
# @within function asset:mob/0237.lunatic_mage/tick/2.tick

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $5 Const

# 体力300以下の時に1回だけ行う技
    execute if entity @s[tag=!6J.AlreadyElement] if score @s 6J.Health matches ..300 run scoreboard players set $Random Temporary 10

# 技用Tagを付与
    execute if score $Random Temporary matches 0 run tag @s add 6J.Fire
    execute if score $Random Temporary matches 1 run tag @s add 6J.Water
    execute if score $Random Temporary matches 2 run tag @s add 6J.Thunder
    execute if score $Random Temporary matches 3 run tag @s add 6J.Magic
    execute if score $Random Temporary matches 4 run tag @s add 6J.Fire2

    execute if score $Random Temporary matches 10 run tag @s add 6J.ElementalKill

# リセット
    scoreboard players reset $Random Temporary
