#> asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.3.falldistance
#
# 落下量を検知
#
# @within function
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.main
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.1.effectclear

# 落下量を検知
    function api:data_get/fall_distance
    execute store result score $FallDistance Temporary run data get storage api: FallDistance
    execute if score $FallDistance Temporary matches 2.. run tag @s add 25.Landing
    scoreboard players reset $FallDistance