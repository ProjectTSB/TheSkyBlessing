#> world_manager:area/00-02.tutorial-curse
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 02
# メッセージ
    execute unless entity @s[tag=TutorialFlag2] run function lib:message/tutorial/02.curse
# 二度と表示されなくする
    tag @s add TutorialFlag2
