#> world_manager:area/00-07.tutorial-lost_items
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

#> Once
# @within function
#   debug:tutorial/*
#   world_manager:area/00-07.tutorial-lost_items
#declare tag TutorialFlag7

# エリアセット
    scoreboard players set $NextInSubArea Temporary 07
# メッセージ
    execute unless entity @s[tag=TutorialFlag7] run function lib:message/tutorial/07.lost_items
# 二度と表示されなくする
    tag @s add TutorialFlag7
