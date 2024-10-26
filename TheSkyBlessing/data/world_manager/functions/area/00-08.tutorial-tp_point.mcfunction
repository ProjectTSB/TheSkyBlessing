#> world_manager:area/00-08.tutorial-tp_point
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

#> Once
# @private
#declare tag TutorialFlag8

# エリアセット
    scoreboard players set $NextInSubArea Temporary 08
# 盲目を1秒にする
    effect clear @s blindness
    effect give @s blindness 1 0 true
# 落下ダメージ無くそうね
    effect give @s slow_falling 1 0 true
# テレポート
    tp @s @s
    tp @s 23.5 3.5 24.5 180 ~
# チュートリアル完了済フラグ
    tag @s add TutorialEnded
