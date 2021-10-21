#> asset:mob/0101.admiral_zombie/tick/3.check_zombie_count
#
#
#
# @within function asset:mob/0101.admiral_zombie/tick/2.tick

# 周囲にゾンビ類がいないか検知
    execute store result score @s 2T.ZombieCount run execute if entity @e[type=zombie,scores={MobID=95..99},distance=..30,limit=12]

# ゾンビの合計が12体以下の場合、ゾンビを召喚を3回実行
    execute if score @s 2T.ZombieCount matches ..12 run function asset:mob/0101.admiral_zombie/tick/4.summon

# スコアリセット
    scoreboard players reset @s 2T.Tick
    scoreboard players reset @s 2T.ZombieCount