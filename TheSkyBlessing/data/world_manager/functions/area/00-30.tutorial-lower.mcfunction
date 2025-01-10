#> world_manager:area/00-30.tutorial-lower
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 30
# ふわふわと初期リスにテレポートする
    effect give @s slow_falling 1 0 true
    tp @s 4257 197 -443 90 0
