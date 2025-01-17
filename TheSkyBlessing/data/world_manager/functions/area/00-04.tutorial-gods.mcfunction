#> world_manager:area/00-04.tutorial-gods
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

#> Once
# @private
#declare tag TutorialFlag4

# エリアセット
    scoreboard players set $NextInSubArea Temporary 04
# メッセージ
    execute unless entity @s[tag=TutorialFlag4] run function lib:message/tutorial/04.gods
# 二度と表示されなくする
    tag @s add TutorialFlag4
