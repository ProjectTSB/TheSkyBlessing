#> asset_manager:spawner/subtract_hp/subtract/
#
# 該当スポナーの体力を減少させる
#
# @within function asset_manager:spawner/subtract_hp/attempt_subtract.m

# 見つかったことを storage に設定しておく
    data modify storage asset:spawner AlreadyFind set value true

# 体力減算
    scoreboard players remove @s SpawnerHP 1
# 体力が無ければ破壊処理
    execute if score @s SpawnerHP matches ..0 at @s run function asset_manager:spawner/subtract_hp/subtract/break
# あればVFX
    execute if score @s SpawnerHP matches 1.. at @s run function asset_manager:spawner/subtract_hp/subtract/damage
# Entity -> SpawnerへのVFX
    execute positioned ~ ~1 ~ facing entity @s feet run function asset_manager:spawner/subtract_hp/subtract/vfx/line
