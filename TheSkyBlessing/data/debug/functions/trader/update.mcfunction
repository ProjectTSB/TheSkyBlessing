#> debug:trader/update
#
#
#
# @within function core:load

#> tag
# @private
#declare tag Trader

execute as @e[tag=Trader] at @s run function debug:trader/core/update
