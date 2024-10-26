#> world_manager:area/00-03.tutorial-artifact
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

#> Once
# @private
#declare tag TutorialFlag3

# エリアセット
    scoreboard players set $NextInSubArea Temporary 03
# メッセージ
    execute unless entity @s[tag=TutorialFlag3] run function lib:message/tutorial/artifact
# 二度と表示されなくする
    tag @s add TutorialFlag3
