#> world_manager:area/00-06.tutorial-tomb
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 06
# メッセージ
    execute unless entity @s[tag=TutorialFlag6] run function lib:message/tutorial/06.tomb
# 二度と表示されなくする
    tag @s add TutorialFlag6
