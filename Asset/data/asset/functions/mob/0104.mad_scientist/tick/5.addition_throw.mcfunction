#> asset:mob/0104.mad_scientist/tick/5.addition_throw
#
# 追加でポーション投げるfunction
#
# @within function asset:mob/0104.mad_scientist/tick/4.throw_potion

# 一度タグを全消し
    execute if entity @s[tag=2W.Poison] run tag @s remove 2W.Poison
    execute if entity @s[tag=2W.Fire] run tag @s remove 2W.Fire
    execute if entity @s[tag=2W.Water] run tag @s remove 2W.Water
    execute if entity @s[tag=2W.Thunder] run tag @s remove 2W.Thunder

# ポーションを選択
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    execute if score $Random Temporary matches 0 run tag @s add 2W.Poison
    execute if score $Random Temporary matches 1 run tag @s add 2W.Fire
    execute if score $Random Temporary matches 2 run tag @s add 2W.Water
    execute if score $Random Temporary matches 3 run tag @s add 2W.Thunder
    scoreboard players reset $Random Temporary

# 薬品投げ
    data modify storage api: Argument.ID set value 105
    function api:mob/summon
    tp @e[type=armor_stand,scores={MobID=105},distance=..0.01] ~ ~1 ~ ~ ~