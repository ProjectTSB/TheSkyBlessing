#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/init
#
# Init処理
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/3.main

# ID付与
    scoreboard players operation @s R4.UserID = @p[tag=this] UserID

# 向きを揃える
    execute at @p[tag=this] run tp @s ~ ~0.3 ~ ~ ~

# タグ削除
    tag @s remove R4.SlashInit