#> player_manager:adjust_hunger/death
#
# リスポーン時のために死亡時の満腹度を取得する
#
# @within core:handler/death

scoreboard players operation @s HungerTarget = @s Hunger