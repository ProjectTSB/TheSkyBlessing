#> asset:trader/15/select_artifact/picks
#
# プールから1つの神器を選択する
#
# @within function
#   asset:trader/15/select_artifact/current_progress/
#   asset:trader/15/select_artifact/up_to_progress/
#   asset:trader/15/select_artifact/picks

#> private
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Random

# pickする
    data modify storage lib: Picks set value [0]
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
    execute store result score $Random Temporary run random value 0..65535
    execute store result storage lib: Picks[0] int 1 run scoreboard players operation $Random Temporary %= $CandidatesLength Temporary
    function lib:array/picks

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength Temporary

# 選択した配列が2次元でかつ、要素数が2以上でなければ、次元を1減らしてreturnする
    execute if data storage lib: Elements[][] unless data storage lib: Elements[][1] run return run data modify storage lib: Elements set from storage lib: Elements[]

# 1次元配列ならreturn
    execute unless data storage lib: Elements[][] run return fail

# 配列の次元を1減らす
    data modify storage lib: Array set from storage lib: Elements[]

# 再帰
    function asset:trader/15/select_artifact/picks
