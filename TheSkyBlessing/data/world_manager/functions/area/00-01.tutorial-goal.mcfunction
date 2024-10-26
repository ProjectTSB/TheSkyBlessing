#> world_manager:area/00-01.tutorial-goal
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

#> Once
# @private
#declare tag TutorialFlag1

# エリアセット
    scoreboard players set $NextInSubArea Temporary 01
# メッセージ
    execute unless entity @s[tag=TutorialFlag1] run function lib:message/tutorial/goal
# 二度と表示されなくする
    tag @s add TutorialFlag1
