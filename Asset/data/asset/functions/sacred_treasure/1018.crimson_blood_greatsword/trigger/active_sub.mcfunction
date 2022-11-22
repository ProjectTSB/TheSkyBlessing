#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_sub
#
# サブ処理。自身にダメージを与える。
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/3.main

# スケジュール開始
    schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/1.tick 1t replace

# スコア加算
    scoreboard players add @s SA.BloodCharge 200

# ブラッドチャージ量でダメージとか変わる
    execute if score @s SA.BloodCharge matches 0..200 run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/level_1
    execute if score @s SA.BloodCharge matches 201..400 run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/level_2
    execute if score @s SA.BloodCharge matches 401.. run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/level_3