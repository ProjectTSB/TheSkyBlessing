#> asset:mob/0055.hetukedah/tick/skill/charge/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s 1J.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/charge/windup

# しばらくこっち見る
    execute if score @s 1J.Tick matches 0..40 facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 突進
    execute if score @s 1J.Tick matches 40..50 run function asset:mob/0055.hetukedah/tick/skill/charge/move_forward

# 爆発
    execute if score @s 1J.Tick matches 50 run function asset:mob/0055.hetukedah/tick/skill/charge/end

# リセット
    execute if score @s 1J.Tick matches 70.. run function asset:mob/0055.hetukedah/tick/reset
