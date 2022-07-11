#> asset:mob/0282.call_fulstuka/tick/1.skill_gun/1.skill_gun
#
#
#
# @within function asset:mob/0282.call_fulstuka/tick/4.skill_active

# 最初に実行
    execute if score @s 7U.Tick matches 0 run function asset:mob/0282.call_fulstuka/tick/1.skill_gun/2.first_tick

# 発砲
    execute if score @s 7U.Tick matches 15..30 run function asset:mob/0282.call_fulstuka/tick/1.skill_gun/3.ready

# リセット
    execute if score @s 7U.Tick matches 50 at @s run function asset:mob/0282.call_fulstuka/tick/reset