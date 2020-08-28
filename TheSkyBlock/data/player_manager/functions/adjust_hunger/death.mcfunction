#> player_manager:adjust_hunger/death
#
# リスポーン時のために死亡時の満腹度を取得する
#
# @within core:handler/death

# DEBUG test
    tellraw @s [{"storage":"global:debug","nbt":"Prefix.DEBUG"},{"text":"Death >> "},{"score":{"name":"@s","objective":"Hunger"}}]

scoreboard players operation @s HungerTarget = @s Hunger