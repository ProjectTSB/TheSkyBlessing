#> world_manager:area/00-02.tutorial-island
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

#> Once
# @private
#declare tag TutorialFlag2

# エリアセット
    scoreboard players set $NextInSubArea Temporary 02
# メッセージ
    execute unless entity @s[tag=TutorialFlag2] run function lib:message/tutorial/island
# 二度と表示されなくする
    tag @s add TutorialFlag2
