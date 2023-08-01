#> asset:mob/0322.haruclaire_icerain_center/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0322.haruclaire_icerain_center/tick/1.trigger

# 生存タイマー減少
    scoreboard players remove @s 8W.LiveTimer 1
# 消去
    execute if score @s 8W.LiveTimer matches ..0 run kill @s

# 攻撃タイマー減少
    scoreboard players remove @s 8W.AttackTimer 1
# 攻撃
    execute if score @s 8W.AttackTimer matches ..0 run function asset:mob/0322.haruclaire_icerain_center/tick/attack_random

# プレイヤー狙い攻撃タイマー減少
    scoreboard players remove @s 8W.PlayerAttackTimer 1
# 攻撃
    execute if score @s 8W.PlayerAttackTimer matches ..0 run function asset:mob/0322.haruclaire_icerain_center/tick/attack_target_player
