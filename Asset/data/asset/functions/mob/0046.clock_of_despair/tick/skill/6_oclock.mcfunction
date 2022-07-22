#> asset:mob/0046.clock_of_despair/tick/skill/6_oclock
#
# メイジ召喚
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# メイジを召喚
    execute if score @s 1A.LifeTime matches 1210 run data modify storage api: Argument.ID set value 187
    execute if score @s 1A.LifeTime matches 1210 positioned ^ ^ ^5 run function api:mob/summon
    execute if score @s 1A.LifeTime matches 1210 positioned ^ ^ ^5 run particle soul_fire_flame ~ ~1 ~ 0.4 0.7 0.4 0.1 40

    execute if score @s 1A.LifeTime matches 1250 run data modify storage api: Argument.ID set value 189
    execute if score @s 1A.LifeTime matches 1250 rotated ~120 ~ positioned ^ ^ ^5 run function api:mob/summon
    execute if score @s 1A.LifeTime matches 1250 rotated ~120 ~ positioned ^ ^ ^5 run particle soul_fire_flame ~ ~1 ~ 0.4 0.7 0.4 0.1 40

    execute if score @s 1A.LifeTime matches 1290 run data modify storage api: Argument.ID set value 190
    execute if score @s 1A.LifeTime matches 1290 rotated ~-120 ~ positioned ^ ^ ^5 run function api:mob/summon
    execute if score @s 1A.LifeTime matches 1290 rotated ~-120 ~ positioned ^ ^ ^5 run particle soul_fire_flame ~ ~1 ~ 0.4 0.7 0.4 0.1 40