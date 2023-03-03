#> asset:artifact/0981.soulfire_burst/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=R9.SmallFireball] run schedule function asset:artifact/0981.soulfire_burst/trigger/small_fireball/2.tick 1t
    execute if entity @e[type=armor_stand,tag=R9.BigFireball] run schedule function asset:artifact/0981.soulfire_burst/trigger/big_fireball/2.tick 1t