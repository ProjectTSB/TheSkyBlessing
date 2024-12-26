#> world_manager:area/00-05.tutorial-spawner
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

#> Once
# @private
#declare tag TutorialFlag5

# エリアセット
    scoreboard players set $NextInSubArea Temporary 05
# メッセージ
    execute unless entity @s[tag=TutorialFlag5] run function lib:message/tutorial/spawner
# 二度と表示されなくする
    tag @s add TutorialFlag5
