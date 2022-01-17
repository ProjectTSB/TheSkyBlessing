#> asset:mob/0046.clock_of_despair/tick/skill/1_oclock/1_oclock
#
# プレイヤーを追尾する
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

execute if score @s 1A.LifeTime matches 101 facing entity @p[sort=random] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_summon

execute if score @s 1A.LifeTime matches 131 facing entity @p[sort=random] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_summon
execute if score @s 1A.LifeTime matches 141 facing entity @p[sort=random] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_summon
execute if score @s 1A.LifeTime matches 151 facing entity @p[sort=random] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_summon
execute if score @s 1A.LifeTime matches 161 facing entity @p[sort=random] eyes positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_summon