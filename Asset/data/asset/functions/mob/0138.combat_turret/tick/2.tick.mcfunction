#> asset:mob/0138.combat_turret/tick/2.tick
#
#
#
# @within function asset:mob/0138.combat_turret/tick/1.trigger

# プレイヤー近くにいる時のみ実行
    execute unless score @s 3U.Time matches 80.. positioned ^ ^ ^10 if entity @p[gamemode=!spectator,distance=..10] at @s run function asset:mob/0138.combat_turret/tick/2.1.near_player

# スコア80以上なら強制実行
    execute if score @s 3U.Time matches 80.. run function asset:mob/0138.combat_turret/tick/2.1.near_player