#> world_manager:area/00-07.tutorial-recommend
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

#> Once
# @private
#declare tag TutorialFlag7

# エリアセット
    scoreboard players set $NextInSubArea Temporary 07
# メッセージ
    execute unless entity @s[tag=TutorialFlag7] run function lib:message/tutorial/recommend
# 盲目
    effect give @s blindness 30 0 true
# 二度と表示されなくする
    tag @s add TutorialFlag7
