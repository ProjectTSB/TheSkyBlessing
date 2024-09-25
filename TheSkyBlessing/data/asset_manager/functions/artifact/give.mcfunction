#> asset_manager:artifact/give
#
#
#
# @within function api:artifact/*/from_rarity

#> For calc
# @private
    #declare score_holder $CandidateLength
    #declare score_holder $Argument.Index

# セッション開ける
    function lib:array/session/open
# 該当レアリティのデータを取得
    execute if data storage api: Argument{Rarity:1} run data modify storage lib: Array set from storage asset:artifact RarityRegistry[1]
    execute if data storage api: Argument{Rarity:2} run data modify storage lib: Array set from storage asset:artifact RarityRegistry[2]
    execute if data storage api: Argument{Rarity:3} run data modify storage lib: Array set from storage asset:artifact RarityRegistry[3]
    execute if data storage api: Argument{Rarity:4} run data modify storage lib: Array set from storage asset:artifact RarityRegistry[4]
# データサイズを取得
    execute store result score $CandidateLength Temporary if data storage lib: Array[]
# 対象Indexを決定
    execute if data storage api: Argument{Rarity:1} run data modify storage lib: Args.key set value "artifact_lv-1"
    execute if data storage api: Argument{Rarity:2} run data modify storage lib: Args.key set value "artifact_lv-2"
    execute if data storage api: Argument{Rarity:3} run data modify storage lib: Args.key set value "artifact_lv-3"
    execute if data storage api: Argument{Rarity:4} run data modify storage lib: Args.key set value "artifact_lv-4"
    execute store result storage lib: Args.max int 1 run scoreboard players get $CandidateLength Temporary
    execute store result storage lib: Args.scarcity_history_size int 0.35 run scoreboard players get $CandidateLength Temporary
    execute store result score $Argument.Index Lib run function lib:random/with_biased/manual.m with storage lib: Args
# 候補データを操作して対象Indexを-1に持ってくる
    function lib:array/move
# asset:context idがある場合は退避
    function asset_manager:common/context/id/stash
# 取得してそのまま引数に代入
    data modify storage asset:context id set from storage lib: Array[-1]
# 呼び出し
    function #asset:artifact/give
# asset:context idを戻す
    function asset_manager:common/context/id/pop
# リセット
    function lib:array/session/close
    scoreboard players reset $CandidateLength Temporary
    data remove storage lib: Args
    data remove storage lib: Array
