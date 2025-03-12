#> world_manager:gimmick/darkness/penalty/
#
# 湧き潰しをサボったプレイヤーへの制裁
#
# @within function world_manager:gimmick/darkness/penalty.m

# 敵を召喚する
# $SpawnCount = floor( 4 * 0.70~1.30(e2) / e2 )
    execute store result score $SpawnCount Temporary run random value 70..130
    scoreboard players operation $SpawnCount Temporary *= $4 Const
    scoreboard players operation $SpawnCount Temporary /= $100 Const
    execute if score $SpawnCount Temporary matches 1.. run function world_manager:gimmick/darkness/penalty/spawn
    
# リセット
    scoreboard players reset $SpawnCount Temporary
