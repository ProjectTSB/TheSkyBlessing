#> world_manager:gimmick/darkness/penalty/pick.m
#
#
#
# @input args Level : int
# @within function world_manager:gimmick/darkness/penalty/spawn

# セッションを開ける
    function lib:array/session/open
# ランダムに一つ抽出する
    $data modify storage lib: Array set from storage asset:mob SpawnPool[$(Level)]
    execute store result score $CandidateLength Temporary if data storage lib: Array[]
    data modify storage lib: Args.key set value "penalty_lv-$(Level)"
    execute store result storage lib: Args.max int 1 run scoreboard players get $CandidateLength Temporary
    execute store result storage lib: Args.scarcity_history_size int 0.35 run scoreboard players get $CandidateLength Temporary
    execute store result score $Argument.Index Lib run function lib:random/with_biased/manual.m with storage lib: Args
    function lib:array/move
    data modify storage api: Argument.ID set from storage lib: Array[-1]
# セッションを閉じる
    function lib:array/session/close
