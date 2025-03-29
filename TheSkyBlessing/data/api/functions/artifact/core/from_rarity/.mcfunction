#> api:artifact/core/from_rarity/
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
# 対象 Index を決定
    execute if data storage api: Argument{Rarity:1} run data modify storage lib: Args.key set value "artifact_lv-1"
    execute if data storage api: Argument{Rarity:2} run data modify storage lib: Args.key set value "artifact_lv-2"
    execute if data storage api: Argument{Rarity:3} run data modify storage lib: Args.key set value "artifact_lv-3"
    execute if data storage api: Argument{Rarity:4} run data modify storage lib: Args.key set value "artifact_lv-4"
    execute store result storage lib: Args.max int 1 run scoreboard players get $CandidateLength Temporary
    execute store result storage lib: Args.scarcity_history_size int 0.35 run scoreboard players get $CandidateLength Temporary
    execute store result score $Argument.Index Lib run function lib:random/with_biased/manual.m with storage lib: Args
# 候補データを操作して対象 Index を -1 に持ってくる
    function lib:array/move
# 一旦リセット
    data modify storage api: Picks set from storage lib: Array[-1]
    function lib:array/session/close
# 候補データの再設定
    function lib:array/session/open
    data modify storage lib: Array set from storage api: Picks
# プル数を乱数により設定
# $Pulls = floor( $CandidateLength * 0.30~0.70(e2) ) / e2
    execute store result score $CandidateLength Temporary if data storage lib: Array[]
    scoreboard players remove $CandidateLength Temporary 1
    execute store result score $Pulls Temporary run random value 30..70
    scoreboard players operation $Pulls Temporary *= $CandidateLength Temporary
    scoreboard players operation $Pulls Temporary /= $100 Const
# シャッフルして取り出す
    function lib:array/shuffle
    data modify storage api: Picks set from storage lib: Array
    function lib:array/session/close
    execute if score $Pulls Temporary matches 0.. run function api:artifact/core/from_rarity/foreach
# リセット
    scoreboard players reset $CandidateLength Temporary
    scoreboard players reset $Pulls Temporary
    data remove storage lib: Args
    data remove storage api: Picks
