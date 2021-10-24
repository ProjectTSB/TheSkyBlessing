#> asset:sacred_treasure/0639.neptune_armor/6.player_tick
#
#
#
# @within function asset:sacred_treasure/0639.neptune_armor/5.schedule_loop

# 演出
    particle rain ~ ~1.3 ~ 0.4 0.6 0.4 0 3 normal @a
    particle dust 0 0 0.659 1 ^ ^1.3 ^-0.6 0.3 0.3 0.3 0 2 normal @a

# スコアをへらす
    scoreboard players remove @s HS.AttackCool 1

# タグを消す(2tick後にこのタグを消さないとダメージライブラリでダメージトリガー炸裂する)
    execute if score @s HS.AttackCool matches ..0 run tag @s remove HS.Attack
    execute if score @s HS.AttackCool matches ..0 run scoreboard players reset @s HS.AttackCool

# バフ
    execute unless predicate lib:weather/is_sunny unless block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/7.water_buff
    execute if block ~ ~ ~ water run function asset:sacred_treasure/0639.neptune_armor/7.water_buff
