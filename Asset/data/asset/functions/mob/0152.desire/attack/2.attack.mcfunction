#> asset:mob/0152.desire/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0152.desire/attack/1.trigger

# タグを付与する
    tag @s add RunOnce

# MPを吸収する攻撃
    execute if entity @s[tag=RunOnce,tag=!48.HasMP] run function asset:mob/0152.desire/attack/3.absorption

# MPを吸収した後に放つ攻撃
    execute if entity @s[tag=RunOnce,tag=48.HasMP] run function asset:mob/0152.desire/attack/4.release
