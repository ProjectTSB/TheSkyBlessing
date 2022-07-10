#> asset:mob/0046.clock_of_despair/tick/skill/7_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 700 run playsound minecraft:block.bell.use master @a

# メイジを召喚
    execute if score @s 1A.LifeTime matches 710 run data modify storage api: Argument.ID set value 187
    execute if score @s 1A.LifeTime matches 710 positioned ^ ^ ^5 run function api:mob/summon
    execute if score @s 1A.LifeTime matches 710 positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage

    execute if score @s 1A.LifeTime matches 730 run data modify storage api: Argument.ID set value 189
    execute if score @s 1A.LifeTime matches 730 rotated ~120 ~ positioned ^ ^ ^5 run function api:mob/summon
    execute if score @s 1A.LifeTime matches 730 rotated ~120 ~ positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage

    execute if score @s 1A.LifeTime matches 750 run data modify storage api: Argument.ID set value 190
    execute if score @s 1A.LifeTime matches 750 rotated ~-120 ~ positioned ^ ^ ^5 run function api:mob/summon
    execute if score @s 1A.LifeTime matches 750 rotated ~-120 ~ positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage

# 追尾弾召喚
    execute if score @s 1A.LifeTime matches 760 facing entity @a[sort=random,limit=1] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/summon