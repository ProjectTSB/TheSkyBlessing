#> asset:mob/0101.admiral_zombie/tick/3.check_zombie_count
#
#
#
# @within function asset:mob/0101.admiral_zombie/tick/2.tick
    #declare score_holder $2T.ZombieCount

# 周囲にゾンビ類がいないか検知
    execute as @e[type=zombie,scores={MobID=95..99},distance=..20] run scoreboard players add $2T.ZombieCount 2T.ZombieCount 1

# ゾンビの合計が12体以下の場合、ゾンビを召喚を3回実行
    execute unless score $2T.ZombieCount 2T.ZombieCount matches 13.. rotated ~ 0 positioned ^ ^ ^3 if block ~ ~ ~ #lib:no_collision run function asset:mob/0101.admiral_zombie/tick/4.select_zombie
    execute unless score $2T.ZombieCount 2T.ZombieCount matches 13.. rotated ~ 0 positioned ^-2.598 ^ ^-1.5 if block ~ ~ ~ #lib:no_collision run function asset:mob/0101.admiral_zombie/tick/4.select_zombie
    execute unless score $2T.ZombieCount 2T.ZombieCount matches 13.. rotated ~ 0 positioned ^2.598 ^ ^-1.5 if block ~ ~ ~ #lib:no_collision run function asset:mob/0101.admiral_zombie/tick/4.select_zombie

# スコアリセット
    scoreboard players reset @s 2T.Tick
    scoreboard players reset $2T.ZombieCount 2T.ZombieCount