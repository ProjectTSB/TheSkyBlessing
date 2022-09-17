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
# 発動
    execute if score @s 76.Time matches 20 run function asset:mob/0258.enemy_teleporter/tick/teleport
# 演出
    function asset:mob/0258.enemy_teleporter/tick/particle

# もし周囲にモブが多すぎた場合死ぬ
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=#lib:hostile,tag=Enemy,distance=..30]
    # もしいたら死ぬ
        execute if score $Count Temporary matches 2.. run kill @s
    # リセット
        scoreboard players reset $Count Temporary