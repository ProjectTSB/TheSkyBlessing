#> asset:mob/0275.destroyed_block/init
#
#
#
# @within function asset:mob/0275.destroyed_block/tick/2.tick

# タイマー設定
    scoreboard players set @s 7N.RemainingTime 60
    scoreboard players set @s 7N.Timer 0

# タグ消し
    tag @s remove 7N.Init
