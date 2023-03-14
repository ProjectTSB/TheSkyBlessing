#> asset:artifact/0002.blessing/trigger/show_trigger_chat
#
#
#
# @within function asset:artifact/0002.blessing/trigger/*

#> For tellraw
# @private
#declare score_holder $ReadableHealth

# 体力だけx10000なので戻す
    scoreboard players operation $ReadableHealth Temporary = $MaxHealth Global
    scoreboard players operation $ReadableHealth Temporary /= $10000 Const
# 出力
    tellraw @s {"text":"能力ボーナスを一つ選んでください"}
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"},{"text":" 体力(現在値: +","color":"white"},{"score":{"name": "$ReadableHealth","objective":"Temporary"},"color":"aqua"},{"text":") +","color":"white"},{"text":"1","color":"aqua"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"},{"text":" 魔力(現在値: +","color":"white"},{"score":{"name": "$MaxMP","objective":"Global"},"color":"aqua"},{"text":") +","color":"white"},{"text":"2","color":"aqua"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"},{"text":" 攻撃(現在値: +","color":"white"},{"score":{"name": "$AttackBonus","objective":"Global"},"color":"aqua"},{"text":"%) +","color":"white"},{"text":"1","color":"aqua"},{"text":"%","color":"white"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"},{"text":" 防御(現在値: +","color":"white"},{"score":{"name": "$DefenseBonus","objective":"Global"},"color":"aqua"},{"text":"%) +","color":"white"},{"text":"1","color":"aqua"},{"text":"%","color":"white"}]
# リセット
    scoreboard players reset $ReadableHealth Temporary