#> asset:mob/0046.clock_of_despair/tick/skill/1_oclock
#
# プレイヤーを追尾する
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 100 run playsound minecraft:block.bell.use master @a
# 追尾弾召喚
    execute if score @s 1A.LifeTime matches 131 facing entity @a[sort=random,limit=1] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/summon
    execute if score @s 1A.LifeTime matches 141 facing entity @a[sort=random,limit=1] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/summon
    execute if score @s 1A.LifeTime matches 151 facing entity @a[sort=random,limit=1] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/summon
    execute if score @s 1A.LifeTime matches 161 facing entity @a[sort=random,limit=1] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/summon