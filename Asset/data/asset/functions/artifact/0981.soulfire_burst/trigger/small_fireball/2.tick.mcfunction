#> asset:sacred_treasure/0981.soulfire_burst/trigger/small_fireball/2.tick
#
#
#
# @within function
#   asset:sacred_treasure/0981.soulfire_burst/trigger/big_fireball/split
#   asset:sacred_treasure/0981.soulfire_burst/trigger/small_fireball/2.tick
#   asset:sacred_treasure/0981.soulfire_burst/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=R9.SmallFireball] at @s run function asset:sacred_treasure/0981.soulfire_burst/trigger/small_fireball/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=R9.SmallFireball] run schedule function asset:sacred_treasure/0981.soulfire_burst/trigger/small_fireball/2.tick 1t