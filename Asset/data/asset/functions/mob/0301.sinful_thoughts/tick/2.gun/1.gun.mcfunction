#> asset:mob/0301.sinful_thoughts/tick/2.gun/1.gun
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.skill_active

# 最初に実行
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/2.gun/2.first_tick

# プレイヤーの前方を見て発砲
    execute if score @s 8D.Tick matches 14 run function asset:mob/0301.sinful_thoughts/tick/2.gun/3.deviation_rotate
    execute if score @s 8D.Tick matches 17 rotated ~-90 ~ run function asset:mob/0301.sinful_thoughts/tick/common/gun/1.ready
# プレイヤーの前方を見て発砲
    execute if score @s 8D.Tick matches 18 run function asset:mob/0301.sinful_thoughts/tick/2.gun/3.deviation_rotate
    execute if score @s 8D.Tick matches 21 rotated ~-90 ~ run function asset:mob/0301.sinful_thoughts/tick/common/gun/1.ready
# プレイヤーの前方を見て発砲
    execute if score @s 8D.Tick matches 22 run function asset:mob/0301.sinful_thoughts/tick/2.gun/3.deviation_rotate
    execute if score @s 8D.Tick matches 25 rotated ~-90 ~ run function asset:mob/0301.sinful_thoughts/tick/common/gun/1.ready

# リセット
    execute if score @s 8D.Tick matches 40 run function asset:mob/0301.sinful_thoughts/tick/reset