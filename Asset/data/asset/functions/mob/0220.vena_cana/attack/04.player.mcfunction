#> asset:mob/0220.vena_cana/attack/04.player
#
# プレイヤーの処理(演出など)をするよ
#
# @within function asset:mob/0220.vena_cana/attack/03.schedule_loop

# 演出
    particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 0.6 0.3 0.6 0 3 normal @a

# 効果時間スコア減少
    scoreboard players remove @s 64.DebuffTime 1

# 死亡で終了
    execute if entity @s[tag=Death] run function asset:mob/0220.vena_cana/attack/05.end_debuff

# 効果時間が0以下で終了の処理
    execute if score @s 64.DebuffTime matches ..0 run function asset:mob/0220.vena_cana/attack/05.end_debuff

