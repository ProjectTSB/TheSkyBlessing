#> asset_manager:artifact/give/
#
#
#
# @within function api:artifact/*/from_rarity

#> For calc
# @private
    #declare score_holder $CandidateLength
    #declare score_holder $Argument.Index
    #declare score_holder $Pulls

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
# 一旦リセット
    data modify storage asset:artifact Picks set from storage lib: Array[-1]
    function lib:array/session/close
# 候補データの再設定
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact Picks
# プル数を乱数により設定
# $Pulls = floor( $CandidateLength * 0.30~0.70(e2) ) / e2
    execute store result score $CandidateLength Temporary if data storage lib: Array[]
    scoreboard players remove $CandidateLength Temporary 1
    execute store result score $Pulls Temporary run function lib:random/
    scoreboard players operation $Pulls Temporary %= $41 Const
    scoreboard players add $Pulls Temporary 30
    scoreboard players operation $Pulls Temporary *= $CandidateLength Temporary
    scoreboard players operation $Pulls Temporary /= $100 Const
# シャッフルして取り出す
    scoreboard players add $CandidateLength Temporary 1
    data modify storage asset:artifact Type set from storage asset:context Type
    function asset_manager:artifact/give/candidates
# リセット
    function lib:array/session/close
    scoreboard players reset $CandidateLength Temporary
    scoreboard players reset $Pulls Temporary
    data remove storage lib: Args
    data remove storage asset:artifact Type
