#> world_manager:area/00-05.tutorial-spawner
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 05
# メッセージ
    execute unless entity @s[tag=TutorialFlag5] run function lib:message/tutorial/05.spawner
# 二度と表示されなくする
    tag @s add TutorialFlag5
