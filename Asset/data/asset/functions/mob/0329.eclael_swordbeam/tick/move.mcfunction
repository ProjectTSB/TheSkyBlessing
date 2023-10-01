#> asset:mob/0329.eclael_swordbeam/tick/move
#
# Mobのtick時の処理
#
# @within function asset:mob/0329.eclael_swordbeam/tick/2.tick

# プレイヤーが近くにいる場合，ダメージ発生
    execute if score @s 95.DamageInterval matches 1.. run scoreboard players remove @s 95.DamageInterval 1
    execute if score @s 95.DamageInterval matches ..0 if entity @a[tag=!PlayerShouldInvulnerable,distance=..2.2] run function asset:mob/0329.eclael_swordbeam/tick/attack
