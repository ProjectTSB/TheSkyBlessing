#> asset:sacred_treasure/0981.soulfire_burst/trigger/big_fireball/2.tick
#
#
#
# @within function
#   asset:sacred_treasure/0981.soulfire_burst/trigger/big_fireball/2.tick
#   asset:sacred_treasure/0981.soulfire_burst/trigger/3.main
#   asset:sacred_treasure/0981.soulfire_burst/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=R9.BigFireball] at @s run function asset:sacred_treasure/0981.soulfire_burst/trigger/big_fireball/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=R9.BigFireball] run schedule function asset:sacred_treasure/0981.soulfire_burst/trigger/big_fireball/2.tick 1t