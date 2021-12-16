#> lib:message/common/dispel_island
#
# 「島を浄化した！」
#
# @within function asset_manager:island/dispel/successful

title @a times 10 60 30
title @a title [{"text":"島を浄化した！","bold":true,"color":"light_purple"}]

tellraw @a [{"text":"[!] すべてのアイテムが返還された。","color":"yellow"}]