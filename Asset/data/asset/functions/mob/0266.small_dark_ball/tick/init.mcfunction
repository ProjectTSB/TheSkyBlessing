#> asset:mob/0266.small_dark_ball/tick/init
#
#
#
# @within function asset:mob/0266.small_dark_ball/tick/2.tick

# こっち向く
    execute facing entity @p[gamemode=!spectator,distance=..20] eyes run tp @s ~ ~ ~ ~ ~

# スコア
    scoreboard players set @s 7E.Range 100
    scoreboard players set @s 7E.Speed 2

# タグ整理
    tag @s remove 7E.Init