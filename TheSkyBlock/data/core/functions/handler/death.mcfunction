#> core:handler/death
#
# 死亡時に実行される
#
# @within function core:tick/player

# 死亡時タグを付与
    tag @s add Death
# 満腹度を保存
    function player_manager:adjust_hunger/death
# 死亡時のアイテム没収処理
    function api:data_get/inventory
    execute if data storage api: Inventory[0] run function player_manager:keep_lost_item/take
# Reset
    scoreboard players reset @s DeathEvent