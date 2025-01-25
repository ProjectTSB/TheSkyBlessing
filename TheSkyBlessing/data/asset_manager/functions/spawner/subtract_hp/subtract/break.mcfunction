#> asset_manager:spawner/subtract_hp/subtract/break
#
#
#
# @within function asset_manager:spawner/subtract_hp/subtract/

# VFX
    function asset_manager:spawner/subtract_hp/subtract/vfx/break
# プレイヤーへの干渉をなくす
    setblock ~ ~ ~ air
# 殺す
    kill @s
