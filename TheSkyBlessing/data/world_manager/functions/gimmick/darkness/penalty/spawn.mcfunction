#> world_manager:gimmick/darkness/penalty/spawn
#
#
#
# @within function
#   world_manager:gimmick/darkness/penalty/
#   world_manager:gimmick/darkness/penalty/spawn

# 敵のレベルを決定する
# $Random = Progress(e2) + (0 ~ 30)
    function api:global_vars/game_progress
    execute store result score $Random Temporary run random value 0..30
    execute store result score $Progress Temporary run data get storage api: Return.Progress 100
    scoreboard players operation $Random Temporary += $Progress Temporary
    # scoreboard players operation $Random Temporary < $99 Const
# ID を一覧から選定して召喚
    execute if score $Random Temporary matches 000..044 run function world_manager:gimmick/darkness/penalty/pick.m {Level:0}
    execute if score $Random Temporary matches 045..064 run function world_manager:gimmick/darkness/penalty/pick.m {Level:1}
    execute if score $Random Temporary matches 065..084 run function world_manager:gimmick/darkness/penalty/pick.m {Level:2}
    execute if score $Random Temporary matches 085..104 run function world_manager:gimmick/darkness/penalty/pick.m {Level:3}
    execute if score $Random Temporary matches 105..130 run function world_manager:gimmick/darkness/penalty/pick.m {Level:4}
    function api:mob/summon

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $Progress Temporary
    scoreboard players reset $CandidateLength Temporary
# ループ
    scoreboard players remove $SpawnCount Temporary 1
    execute if score $SpawnCount Temporary matches 1.. run function world_manager:gimmick/darkness/penalty/spawn
