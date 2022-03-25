#> asset:mob/0232.honey_leader/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0232.honey_leader/tick/1.trigger

# バフ間隔スコア
    execute unless entity @s[scores={6G.BeamCool=50..}] run scoreboard players add @s 6G.BuffCool 1

# ビーム間隔スコア
    execute unless entity @s[scores={6G.BeamCool=89..}] positioned ^ ^ ^10 if entity @a[gamemode=!spectator,distance=..10] run scoreboard players add @s 6G.BeamCool 1
    execute if entity @s[scores={6G.BeamCool=89..}] run scoreboard players add @s 6G.BeamCool 1

# 周囲にバフ&回復
    execute if entity @s[scores={6G.BuffCool=80..}] run function asset:mob/0232.honey_leader/tick/03.buff_and_heal

# ビームの予備動作演出
    execute if entity @s[scores={6G.BeamCool=90}] anchored eyes positioned ^ ^ ^0.3 run function asset:mob/0232.honey_leader/tick/04.ready_shoot

# ビーム発射とリセット
    execute if entity @s[scores={6G.BeamCool=100..}] run function asset:mob/0232.honey_leader/tick/05.shoot_and_reset