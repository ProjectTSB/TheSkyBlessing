#> asset:mob/0185.tutankhamen/tick/burn_laser/01.main
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/04.attack_branch

# レーザーの進路を一度赤いdustで表示し、その20tick後に発射を3秒ごとに3回繰り返す

# 一定間隔で実行用のスコア
    scoreboard players add @s 55.AttackTick 1

# 照射
    execute if entity @s[scores={55.Tick=..59,55.AttackTick=2..11}] run function asset:mob/0185.tutankhamen/tick/burn_laser/02.light

# 発射
    execute if entity @s[scores={55.Tick=..59,55.AttackTick=20}] run function asset:mob/0185.tutankhamen/tick/burn_laser/04.shoot

# たまに4回目
    execute if entity @s[tag=!55.4thLaser,scores={55.Tick=59}] if predicate lib:random_pass_per/40 run function asset:mob/0185.tutankhamen/tick/burn_laser/07.random_4th

# リセット
    execute if entity @s[scores={55.Tick=59}] run function asset:mob/0185.tutankhamen/tick/05.reset