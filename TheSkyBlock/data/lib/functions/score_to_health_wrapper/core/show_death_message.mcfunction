#> lib:score_to_health_wrapper/core/show_death_message
#
#
#
# @within function lib:score_to_health_wrapper/core/die

# Enumをもとにメッセージを表示
    function oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:0} run function lib:message/common/die/water
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:1} run function lib:message/common/die/fire
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:2} run function lib:message/common/die/water
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:3} run function lib:message/common/die/thunder
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:4} run function lib:message/common/die/physical
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:5} run function lib:message/common/die/magic
# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo