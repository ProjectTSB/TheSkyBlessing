#> asset:artifact/0002.blessing/give/get_random_name
#
#
#
# @within function asset:artifact/0002.blessing/give/2.give

#> Length
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Argument.Index

# セッション開ける
    function lib:array/session/open
# 名前候補リスト
    data modify storage lib: Array set value ['深淵','奈落','天空','始原','神威','太陽','生命','満月','星雲','極光','蒼天','夜闇']
# 候補リストの長さを取得
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
# ターゲットの名前をランダムに決める
    execute store result score $Argument.Index Lib run function lib:random/
    scoreboard players operation $Argument.Index Lib %= $CandidatesLength Temporary
# 移動
    function lib:array/move
# 取得
    data modify storage asset:temp 02.Name set from storage lib: Array[-1]
# リセット
    function lib:array/session/close
    scoreboard players reset $CandidatesLength