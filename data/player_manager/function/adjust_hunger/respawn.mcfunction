#> player_manager:adjust_hunger/respawn
#
# リスポーン時に死亡時の満腹度に強制的に戻すよ
#
# @within function core:handler/respawn

execute unless score @s HungerTarget matches 20 run effect give @s hunger 4 255 true