#> asset_manager:spawner/subtract_hp/subtract
#
# 該当スポナーの体力を減少させる
#
# @within function asset_manager:spawner/subtract_hp/check_id_foreach

scoreboard players remove @s SpawnerHP 1
execute if score @s SpawnerHP matches ..0 run function asset_manager:spawner/subtract_hp/break
execute facing entity @s feet run function asset_manager:spawner/subtract_hp/vfx