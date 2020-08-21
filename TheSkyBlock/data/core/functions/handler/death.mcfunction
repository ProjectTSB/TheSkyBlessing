#> core:handler/death
#
# 死亡時に実行される
#
# @within function core:tick

# DEBUG death
    tellraw @s [{"storage":"core:debug","nbt":"Prefix.DEBUG"},{"text":"Death"}]

# Reset
    scoreboard players reset @s DeathEvent