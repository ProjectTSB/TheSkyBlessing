#> player_manager:void_damage/
#
#
#
# @within function core:tick/player/

# プレイヤーが奈落にいないならクールダウンを0にしてreturn
    execute unless predicate lib:is_deep_void run return run scoreboard players set @s VoidDamageCooldown 0

# 奈落にいてかつクールダウンが0ならダメージを与える
    execute if predicate lib:is_deep_void if score @s VoidDamageCooldown matches 0 run function player_manager:void_damage/damage

# 奈落にいてかつクールダウンが1以上ならクールダウン減少
    execute if predicate lib:is_deep_void if score @s VoidDamageCooldown matches 1.. run scoreboard players remove @s VoidDamageCooldown 1
