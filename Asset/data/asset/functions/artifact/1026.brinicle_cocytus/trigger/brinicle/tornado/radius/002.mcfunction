#厳密にはスコア分のタグを召喚時に付与し、タグ判定で分岐していく

execute unless entity @s[tag=146tmp.002] run function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/tornado/radius/001
execute if entity @s[tag=146tmp.002] positioned ^ ^ ^0.02 run function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/tornado/radius/001