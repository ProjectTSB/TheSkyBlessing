#> asset:mob/0188.fireball/tick/init
#
#
#
# @within function asset:mob/0188.fireball/tick/2.tick

# スコア
    scoreboard players set @s 58.Range 100
    scoreboard players set @s 58.Speed 4

# タグ整理
    tag @s remove 58.Init
    tag @s add 58.Start