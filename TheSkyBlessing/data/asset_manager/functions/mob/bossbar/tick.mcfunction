#> asset_manager:mob/bossbar/tick
#
#
#
# @within function asset_manager:mob/tick/

# maxが100倍で入ってるので100倍で現在値を設定する
    execute store result bossbar asset:bossbar value run scoreboard players get @s MobHealth
