#> asset_manager:spawner/subtract_hp/break
#
#
#
# @within function asset_manager:spawner/subtract_hp/subtract

# VFX
    function asset_manager:spawner/subtract_hp/vfx/break
# タグ追加
    tag @s add BreakSpawner
# プレイヤーへの干渉をなくす
    setblock ~ ~ ~ air
    data modify entity @s Item set value {id:"debug_stick",Count:1b,tag:{CustomModelData:4040}}