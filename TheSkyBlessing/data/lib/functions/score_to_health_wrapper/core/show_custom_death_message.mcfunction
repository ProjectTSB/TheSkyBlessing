#> lib:score_to_health_wrapper/core/show_custom_death_message
#
# カスタム死亡メッセージを表示
#
# @within function lib:score_to_health_wrapper/core/die

# メッセージを表示
    tellraw @a {"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage","interpret": true}
# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage