#> api:concurrent_health_manager/core/show_common_death_message
#
#
#
# @within function api:concurrent_health_manager/core/die

# Enumをもとにメッセージを表示
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:0} run function lib:message/common/die/unknown
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:1} run function lib:message/common/die/fire
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:2} run function lib:message/common/die/water
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:3} run function lib:message/common/die/thunder
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:4} run function lib:message/common/die/physical
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo{Type:5} run function lib:message/common/die/magic