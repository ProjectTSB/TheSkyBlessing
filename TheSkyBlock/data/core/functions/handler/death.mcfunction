#> core:handler/death
#
# 死亡時に実行される
#
# @within function core:tick

# DEBUG death
    tellraw @s [{"storage":"global:debug","nbt":"Prefix.DEBUG"},{"text":"Death"}]

# 死亡時のアイテム没収処理
    execute if data entity @s Inventory[0] run function player_manager:keep_lost_item/take
# Reset
    scoreboard players reset @s DeathEvent