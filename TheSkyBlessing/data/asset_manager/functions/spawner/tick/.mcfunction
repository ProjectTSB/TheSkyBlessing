#> asset_manager:spawner/tick/
#
# スポナーのtick処理
#
# @within function core:tick/

# this付与
    tag @s add this
# プレイヤーがRequiredPlayerRangeの範囲内に居るかのチェック
    function oh_my_dat:please
    execute store result score $RequiredPlayerRange Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.RequiredPlayerRange 10
    scoreboard players operation $RequiredPlayerRange Temporary *= $RequiredPlayerRange Temporary
    execute as @p[gamemode=!spectator,tag=!Death,distance=..40] run function asset_manager:spawner/tick/is_near_player
# this削除
    tag @s remove this
# 範囲内に居る場合tick処理を行う
    execute if entity @s[tag=Success] run scoreboard players remove @s SpawnerCooldown 1
    execute if entity @s[tag=Success] if score @s SpawnerCooldown matches ..-1 run function asset_manager:spawner/spawn/
# リセット
    tag @s remove Success
    scoreboard players reset $RequiredPlayerRange Temporary
    scoreboard players reset @a Temporary
