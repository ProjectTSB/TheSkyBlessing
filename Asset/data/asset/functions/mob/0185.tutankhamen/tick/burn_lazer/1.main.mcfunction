#> asset:mob/0185.tutankhamen/tick/burn_lazer/1.main
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/4.attack_branch

# レーザーの進路を一度赤いdustで表示し、その20tick後に発射を3秒ごとに3回繰り返す

# 一定間隔で実行用のスコア
    scoreboard players add @s 55.AttackTick 1

# 照射
    execute if score @s 55.Tick matches ..159 if score @s 55.AttackTick matches 1..11 run function asset:mob/0185.tutankhamen/tick/burn_lazer/2.light

# 発射
    execute if score @s 55.Tick matches ..159 if score @s 55.AttackTick matches 20 run function asset:mob/0185.tutankhamen/tick/burn_lazer/4.shoot

# たまに4回目
    execute if entity @s[tag=!55.4thLazer] if score @s 55.Tick matches 159 if predicate lib:random_pass_per/40 run function asset:mob/0185.tutankhamen/tick/burn_lazer/7.random_4th

# リセット
    execute if score @s 55.Tick matches 159.. run function asset:mob/0185.tutankhamen/tick/5.reset