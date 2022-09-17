#> asset:mob/0258.enemy_teleporter/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0258.enemy_teleporter/tick/1.trigger

#> private
# @private
    #declare score_holder $Count

# スコアを増やす
    scoreboard players add @s 76.Time 1

# もし周囲にモブが多すぎた場合挙動が変わる
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=#lib:hostile,tag=Enemy,distance=..30]
    # 30以上モブがいない場合
        execute unless score $Count Temporary matches 30.. if score @s 76.Time matches 20 run function asset:mob/0258.enemy_teleporter/tick/teleport
    # 30以上モブがいる場合
        execute if score $Count Temporary matches 30.. if score @s 76.Time matches 20 run function asset:mob/0258.enemy_teleporter/tick/teleport
    # リセット
        scoreboard players reset $Count Temporary

# 演出
    function asset:mob/0258.enemy_teleporter/tick/particle