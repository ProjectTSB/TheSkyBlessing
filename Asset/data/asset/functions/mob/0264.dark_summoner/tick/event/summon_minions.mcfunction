#> asset:mob/0264.dark_summoner/tick/event/summon_minions
#
#
#
# @within function asset:mob/0264.dark_summoner/tick/event/prepare_magic

# パーティクル
    execute rotated ~ 0 positioned ^2 ^0.1 ^ run function asset:mob/0264.dark_summoner/tick/event/particle
    execute rotated ~ 0 positioned ^-2 ^0.1 ^ run function asset:mob/0264.dark_summoner/tick/event/particle

# 召喚
    execute rotated ~ 0 positioned ^2 ^0.1 ^ run function asset:mob/0021.demon_eye/summon/2.summon
    execute rotated ~ 0 positioned ^-2 ^0.1 ^ run function asset:mob/0021.demon_eye/summon/2.summon

# リセット
    scoreboard players reset @s 7C.Attack