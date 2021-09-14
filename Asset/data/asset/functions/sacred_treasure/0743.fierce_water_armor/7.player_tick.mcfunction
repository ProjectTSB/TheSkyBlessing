#> asset:sacred_treasure/0743.fierce_water_armor/7.player_tick
#
#
#
# @within function asset:sacred_treasure/0743.fierce_water_armor/6.schedule_loop
    #declare tag Victim

# 演出
    particle rain ~ ~1.2 ~ 1 0.4 1 0 2 normal @a

# ダッシュ時のスコア
    execute if predicate lib:is_sprinting if score @s KN.Sprinting matches ..149 run scoreboard players add @s KN.Sprinting 1

# ダッシュスコアに応じてspeedを得る 最大なら演出付き
    execute if score @s KN.Sprinting matches 21..50 run effect give @s speed 1 0 true
    execute if score @s KN.Sprinting matches 51..80 run effect give @s speed 1 1 true
    execute if score @s KN.Sprinting matches 81.. run function asset:sacred_treasure/0743.fierce_water_armor/8.acceled

# ダッシュしてないときスコアを3減少 リセットは一式解除時に
    execute unless predicate lib:is_sprinting if score @s KN.Sprinting matches 3.. run scoreboard players remove @s KN.Sprinting 3