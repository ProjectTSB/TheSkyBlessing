#> world_manager:gimmick/darkness/penalty/
#
# 湧き潰しをサボったプレイヤーへの制裁
#
# @within function world_manager:gimmick/darkness/penalty.m

#> private
# @private
    #declare score_holder $EnemyCount

# 近くの敵の数が多い場合はなかったことにする
    execute store result score $EnemyCount Temporary if entity @e[type=#lib:living_without_player,tag=Enemy,distance=..32,limit=15]
    execute if score $EnemyCount Temporary matches 15 run return run scoreboard players reset $EnemyCount Temporary
    scoreboard players reset $EnemyCount Temporary
# 近くに天使がいる場合はなかったことにする
    execute if entity @e[type=#lib:living_without_player,tag=Enemy.Boss,distance=..64,limit=1] run return fail

# 敵を召喚する
# $SpawnCount = floor( 4 * 0.70~1.00(e2) / e2 )
    execute store result score $SpawnCount Temporary run random value 70..100
    scoreboard players operation $SpawnCount Temporary *= $4 Const
    scoreboard players operation $SpawnCount Temporary /= $100 Const
    execute if score $SpawnCount Temporary matches 1.. run function world_manager:gimmick/darkness/penalty/spawn

# リセット
    scoreboard players reset $SpawnCount Temporary
