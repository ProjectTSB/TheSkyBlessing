#> asset:mob/0210.aurora_eye/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0210.aurora_eye/**
    scoreboard objectives add 5U.AttackCT dummy
    scoreboard objectives add 5U.Shoot dummy

#> Projectile側と共通スコア
# @within function
#   asset:mob/0210.aurora_eye/**
#   asset:mob/0211.aurora_bullet/tick/3.hit
    scoreboard objectives add 5U.DebuffTime dummy