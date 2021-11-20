#> asset:mob/0185.tutankhamen/tick/burn_razer/1.main
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/4.attack_branch

# レーザーの進路を一度赤いdustで表示し、その20tick後に発射を3秒ごとに3回繰り返す

# 一定間隔で実行用のスコア
    scoreboard players add @s 55.AttackTick 1

# 一定間隔で実行

# 照射
    execute if score @s 55.Tick matches ..171 if score @s 55.AttackTick matches 1..11 run function asset:mob/0185.tutankhamen/tick/burn_razer/2.light

# 発射
    execute if score @s 55.Tick matches ..171 if score @s 55.AttackTick matches 20 run function asset:mob/0185.tutankhamen/tick/burn_razer/4.shoot

# リセット
    execute if score @s 55.Tick matches 160.. run function asset:mob/0185.tutankhamen/tick/5.reset