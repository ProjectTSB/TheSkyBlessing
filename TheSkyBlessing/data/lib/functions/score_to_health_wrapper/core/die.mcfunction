#> lib:score_to_health_wrapper/core/die
#
#
#
# @within function lib:score_to_health_wrapper/proc

# 独自の死亡メッセージを出すためにバニラのを無効化する
    gamerule showDeathMessages false
# ばいばい。
    kill @s
# 死亡メッセージ読み込み用にEntityStorage呼び出し
    function oh_my_dat:please
# 死亡メッセージ
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage[-1] run tellraw @a {"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage","interpret": true}
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage[-1] run function lib:score_to_health_wrapper/core/show_custom_death_message
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage run function lib:score_to_health_wrapper/core/show_common_death_message
# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo
    gamerule showDeathMessages true
    scoreboard players reset @s ScoreToHealth