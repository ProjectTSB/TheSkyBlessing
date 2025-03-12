#> world_manager:gimmick/darkness/penalty/spawn
#
#
#
# @within function
#   world_manager:gimmick/darkness/penalty/
#   world_manager:gimmick/darkness/penalty/spawn

# 敵を候補から選定する
    # $Random = Progress(e2) + (0 ~ 10)
        function api:global_vars/game_progress
        execute store result score $Random Temporary run random value 0..14
        execute store result score $Progress Temporary run data get storage api: Return.Progress
        scoreboard players operation $Random Temporary += $Progress Temporary
        scoreboard players operation $Random Temporary < $99 Const
    #
        function lib:array/session/open
        execute if score $Random Temporary matches 00..30 run data modify storage lib: Array set from storage asset:mob SpawnPool[1]
        execute if score $Random Temporary matches 31..55 run data modify storage lib: Array set from storage asset:mob SpawnPool[2]
        execute if score $Random Temporary matches 56..80 run data modify storage lib: Array set from storage asset:mob SpawnPool[3]
        execute if score $Random Temporary matches 81..99 run data modify storage lib: Array set from storage asset:mob SpawnPool[4]

# ランダムに 1 体召喚する
    # データサイズを取得
        execute store result score $CandidateLength Temporary if data storage lib: Array[]
    # 対象 Index を決定
        execute if score $Random Temporary matches 00..30 run data modify storage lib: Args.key set value "penalty_lv-1"
        execute if score $Random Temporary matches 31..55 run data modify storage lib: Args.key set value "penalty_lv-2"
        execute if score $Random Temporary matches 56..80 run data modify storage lib: Args.key set value "penalty_lv-3"
        execute if score $Random Temporary matches 81..99 run data modify storage lib: Args.key set value "penalty_lv-4"
        execute store result storage lib: Args.max int 1 run scoreboard players get $CandidateLength Temporary
        execute store result storage lib: Args.scarcity_history_size int 0.35 run scoreboard players get $CandidateLength Temporary
        execute store result score $Argument.Index Lib run function lib:random/with_biased/manual.m with storage lib: Args
    # 候補データを操作して対象 Index を最後尾に持ってくる
        function lib:array/move
    # 召喚
        data modify storage api: Argument.ID set from storage lib: Array[-1]
        function lib:array/session/close
        function api:mob/summon

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $Progress Temporary
    scoreboard players reset $CandidateLength Temporary
# ループ
    scoreboard players remove $SpawnCount Temporary 1
    execute if score $SpawnCount Temporary matches 1.. run function world_manager:gimmick/darkness/penalty/spawn
