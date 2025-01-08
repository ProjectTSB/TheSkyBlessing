#> world_manager:area/00-03.tutorial-artifact
#
#
#
# @within function world_manager:area/00.tutorial/on_tick

#> Once
# @private
#declare tag TutorialFlag3
#> 解呪数取得用
# @within function world_manager:area/00-03.*
#declare score_holder $Temp

# エリアセット
    scoreboard players set $NextInSubArea Temporary 03
# 前のエリアで解呪してなかったら戻して終わり
    function api:global_vars/islands_purified
    execute store result score $Temp Temporary run data get storage api: Return.Purified 1
    execute if score $Temp Temporary matches 0 run return run function world_manager:area/00-03.1.tutorial-run_through
    scoreboard players reset $Temp Temporary
    # execute unless function api:global_vars/islands_purified run return run function world_manager:area/00-03.1.tutorial-run_through
# メッセージ
    execute unless entity @s[tag=TutorialFlag3] run function lib:message/tutorial/03.artifact
# 二度と表示されなくする
    tag @s add TutorialFlag3
