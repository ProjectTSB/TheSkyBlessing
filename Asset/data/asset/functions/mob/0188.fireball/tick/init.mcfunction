#> asset:mob/0188.fireball/tick/init
#
#
#
# @within function asset:mob/0188.fireball/tick/2.tick

# 付近の人に向かう
    #tp @s ~ ~3 ~
    execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# スコア
    scoreboard players set @s Chuz.Range 100
    scoreboard players set @s Chuz.Speed 4

# タグ整理
    tag @s remove 0188.Init
    tag @s add 0188.Start