#> player_manager:show_progress
#
#
#
# @within function core:handler/join

#> Private
# @private
#declare storage player_manager:show_progress

function api:global_vars/islands_purified
function api:global_vars/total_islands
function api:global_vars/game_progress

execute store result storage player_manager:show_progress Progress int 1 run data get storage api: Return.Progress 100

tellraw @a {"text":"","color":"white","extra":[{"text":"攻略進捗: "},{"storage":"api:","nbt":"Return.Purified"},{"text":"\u0002","font":"space"},{"text":"/","color":"gray"},{"text":"\u0002","font":"space"},{"storage":"api:","nbt":"Return.TotalIslands"},{"text":" ("},{"storage":"player_manager:show_progress","nbt":"Progress"},{"text":"%)"}]}

data remove storage player_manager:show_progress Progress
