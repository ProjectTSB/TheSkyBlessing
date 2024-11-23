#> asset:artifact/example/attack/kill
#
#
#
# @within function asset:artifact/example/attack/

#> private
# @private
    #declare tag RemovingEntity
    #declare score_holder $Fluctuation
    #declare function lib:status_log/show_health

tag @s add RemovingEntity

function api:mob/get_health
execute store result score $Fluctuation Lib run data get storage api: Return.Health -100
function lib:status_log/show_health
