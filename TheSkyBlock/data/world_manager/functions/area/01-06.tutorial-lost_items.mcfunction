#> world_manager:area/01-06.tutorial-lost_items
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

#> Once
# @private
#declare tag TutorialFlag6

# エリアセット
    scoreboard players set $NextInSubArea Temporary 06
# メッセージ
    execute unless entity @s[tag=TutorialFlag6] run function lib:message/tutorial/lost_items
# 二度と表示されなくする
    tag @s add TutorialFlag6