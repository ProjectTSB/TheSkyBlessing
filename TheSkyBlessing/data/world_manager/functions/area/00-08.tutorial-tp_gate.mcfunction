#> world_manager:area/00-08.tutorial-tp_gate
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

#> Once
# @private
#declare tag TutorialFlag8

# エリアセット
    scoreboard players set $NextInSubArea Temporary 08
# メッセージ
    execute unless entity @s[tag=TutorialFlag8] run function lib:message/tutorial/08.tp_gate
# 二度と表示されなくする
    tag @s add TutorialFlag8
# 短時間の盲目を付与
    effect clear @s blindness
    effect give @s blindness 3 0 true
# 落下ダメージ無くそうね
    effect give @s slow_falling 1 0 true
# テレポート
    tp @s @s
    tp @s 23.5 3.5 24.5 180 ~
# チュートリアル完了済フラグ
    tag @s add TutorialEnded
