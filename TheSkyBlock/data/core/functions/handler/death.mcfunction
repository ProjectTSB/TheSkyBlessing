#> core:handler/death
#
# 死亡時に実行される
#
# @within function core:tick

# DEBUG death
    tellraw @s [{"storage":"core:debug","nbt":"Prefix.DEBUG"},{"text":"Death"}]

# 死亡時のアイテム没収処理
    function core:keep_lost_item/take
# Reset
    scoreboard players reset @s DeathEvent