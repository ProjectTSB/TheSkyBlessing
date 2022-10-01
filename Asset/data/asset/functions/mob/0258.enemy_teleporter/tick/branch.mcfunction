#> asset:mob/0258.enemy_teleporter/tick/branch
#
#
#
# @within function asset:mob/0258.enemy_teleporter/tick/2.tick

#> private
# @private
    #declare score_holder $Count

# もし周囲にモブが多すぎた場合挙動が変わる
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=#lib:hostile,tag=Enemy,distance=..30]
    # 30以上モブがいない場合
        execute unless score $Count Temporary matches 30.. run function asset:mob/0258.enemy_teleporter/tick/teleport
    # 30以上モブがいる場合
        execute if score $Count Temporary matches 30.. run function asset:mob/0258.enemy_teleporter/tick/weak_teleport
    # リセット
        scoreboard players reset $Count Temporary