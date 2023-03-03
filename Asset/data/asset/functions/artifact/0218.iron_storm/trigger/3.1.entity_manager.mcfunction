#> asset:artifact/0218.iron_storm/trigger/3.1.entity_manager
#
# 処理対象エンティティに対して着地判定function実行、scheduleを再実行
#
# @within function
#   asset:artifact/0218.iron_storm/trigger/3.main
#   asset:artifact/0218.iron_storm/trigger/3.1.entity_manager

# 処理対象エンティティに対してfunction実行
    execute as @e[type=iron_golem,tag=DA.InAir] run function asset:artifact/0218.iron_storm/trigger/3.2.check_entity

# 次tickのmanager実行予約
    execute if entity @e[type=iron_golem,tag=DA.InAir,limit=1] run schedule function asset:artifact/0218.iron_storm/trigger/3.1.entity_manager 1t replace
