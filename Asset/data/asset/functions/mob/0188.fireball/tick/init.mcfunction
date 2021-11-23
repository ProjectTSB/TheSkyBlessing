#> asset:mob/0188.fireball/tick/init
#
#
#
# @within function asset:mob/0188.fireball/tick/2.tick

# 付近の人に向かう
    execute at @s positioned ~ ~-1 ~ facing entity @p feet positioned ~ ~1 ~ run tp @s ~ ~ ~ ~ ~

# スコア
    scoreboard players set @s Chuz.Range 100
    scoreboard players set @s Chuz.Speed 4

# タグ整理
    tag @s remove 0188.Init
    tag @s add 0188.Start