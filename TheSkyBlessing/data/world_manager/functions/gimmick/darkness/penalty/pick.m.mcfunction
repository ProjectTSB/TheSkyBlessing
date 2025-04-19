#> world_manager:gimmick/darkness/penalty/pick.m
#
#
#
# @input args Level : int
# @within function world_manager:gimmick/darkness/penalty/spawn

# 要素数が2以下(= 1なら)直接IDを突っ込んでreturn
    $execute unless data storage asset:mob SpawnPool[$(Level)][1] run return run data modify storage api: Argument.ID set from storage asset:mob SpawnPool[$(Level)][0]
    
# セッションを開ける
    function lib:array/session/open
# ランダムに一つ抽出する
    $data modify storage lib: Array set from storage asset:mob SpawnPool[$(Level)]
    execute store result score $CandidateLength Temporary if data storage lib: Array[]
    data modify storage lib: Args.key set value "penalty_lv-$(Level)"
    execute store result storage lib: Args.max int 1 run scoreboard players get $CandidateLength Temporary
    execute store result storage lib: Args.scarcity_history_size int 0.5 run scoreboard players get $CandidateLength Temporary
    execute store result score $Argument.Index Lib run function lib:random/with_biased/manual.m with storage lib: Args
    function lib:array/move
    data modify storage api: Argument.ID set from storage lib: Array[-1]
    function lib:array/revert
# セッションを閉じる
    function lib:array/session/close
