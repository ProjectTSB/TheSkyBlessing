#> core:handler/death
#
# 死亡時に実行される
#
# @within function core:tick/player/post

# 満腹度を保存
    function player_manager:adjust_hunger/death
# 死亡時のアイテム没収処理
    function api:data_get/inventory
    execute if entity @s[tag=HasGrave] run function player_manager:grave/take_items
    execute if data storage api: Inventory[0] unless predicate player_manager:is_believe/null at @s run function player_manager:grave/build/
    execute if data storage api: Inventory[0] if predicate player_manager:is_believe/null run function player_manager:lost_item/drop/
# Reset
    scoreboard players reset @s DeathEvent
