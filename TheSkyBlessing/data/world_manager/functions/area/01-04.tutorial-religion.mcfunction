#> world_manager:area/01-04.tutorial-religion
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

#> Once
# @private
#declare tag TutorialFlag4

# エリアセット
    scoreboard players set $NextInSubArea Temporary 04
# メッセージ
    execute unless entity @s[tag=TutorialFlag4] run function lib:message/tutorial/religion
# 二度と表示されなくする
    tag @s add TutorialFlag4