#> asset:artifact/0002.blessing/trigger/on_trigger
#
#
#
# @within function asset:artifact/0002.blessing/trigger/listener

# エラー値
    execute unless score @s 02.Trigger matches 1..4 run function lib:message/invalid_operation
    execute unless score @s 02.Trigger matches 1..4 run function asset:artifact/0002.blessing/trigger/show_trigger_chat
# 体力
    execute if score @s 02.Trigger matches 1 run scoreboard players add $MaxHealth Global 10000
    execute if score @s 02.Trigger matches 1 as @a run function player_manager:bonus/update_health_bonus
# MP
    execute if score @s 02.Trigger matches 2 run scoreboard players add $MaxMP Global 2
    execute if score @s 02.Trigger matches 2 as @a run function player_manager:bonus/update_mp_bonus
# 攻撃
    execute if score @s 02.Trigger matches 3 run scoreboard players add $AttackBonus Global 1
    execute if score @s 02.Trigger matches 3 as @a run function player_manager:bonus/update_attack_bonus
# 防御
    execute if score @s 02.Trigger matches 4 run scoreboard players add $DefenseBonus Global 1
    execute if score @s 02.Trigger matches 4 as @a run function player_manager:bonus/update_defense_bonus
# リセット
    scoreboard players reset @s 02.Trigger