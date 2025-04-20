#> lib:score_to_health_wrapper/core/die
#
#
#
# @within function lib:score_to_health_wrapper/proc

# 独自の死亡メッセージを出すためにバニラのを無効化する
    gamerule showDeathMessages false
# ばいばい。
    kill @s
# 死亡メッセージ読み込み用準備
    data modify storage lib: Return.AttackerName set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Name
# 死亡メッセージ
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage[-1] run tellraw @a {"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage","interpret": true}
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage[-1] run function lib:score_to_health_wrapper/core/show_custom_death_message
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage run function lib:score_to_health_wrapper/core/show_common_death_message
# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo
    data remove storage lib: Return.AttackerName
    gamerule showDeathMessages true
    scoreboard players reset @s ScoreToHealth
