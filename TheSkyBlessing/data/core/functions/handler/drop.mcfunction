#> core:handler/drop
#
# アイテムを投げた時に実行される
#
# @within function core:tick/player/

# 神器Asset用の誤検知対策タグ
    tag @s add StrictCheckMainhand
# Reset
    scoreboard players reset @s DropEvent