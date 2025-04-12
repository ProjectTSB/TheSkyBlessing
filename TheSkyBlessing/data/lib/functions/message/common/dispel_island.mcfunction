#> lib:message/common/dispel_island
#
# 「島を浄化した！」
#
# @within function asset_manager:island/dispel/successful

function api:global_vars/game_progress
execute store result storage lib: Temp.Progress int 1 run data get storage api: Return.Progress 100

title @a times 10 60 30
title @a title [{"text":"ISLAND PURIFIED","bold":true,"color":"light_purple"}]
title @a subtitle {"text":"","bold":true,"extra":[{"text":"PROGRESS ","color":"green"},{"score":{"name":"$PurifiedIslands","objective":"Global"},"color":"white"},{"text":"\u0002","font":"space"},{"text":"/","color":"gray"},{"text":"\u0002","font":"space"},{"score":{"name":"$TotalIslands","objective":"Global"},"color":"white"},{"text":" ("},{"storage":"lib:","nbt":"Temp.Progress"},{"text":"%)"}]}

tellraw @a [{"text":"[!] すべてのアイテムが神殿に返還された。","color":"yellow"}]

data remove storage lib: Temp
