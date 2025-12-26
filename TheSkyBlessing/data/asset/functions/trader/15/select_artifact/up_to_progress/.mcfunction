#> asset:trader/15/select_artifact/up_to_progress/
#
#
#
# @within function asset:trader/15/select_artifact/

# 隠しプールにするかの判定
    execute if predicate lib:random_pass_per/3 run data modify storage asset:temp IsHidePool set value true

# プール初期化
    data modify storage asset:temp Pool set value []

# プールを設定
    execute unless data storage asset:temp {IsHidePool:true} run function asset:trader/15/select_artifact/up_to_progress/set_pool.m {Type:"Normal"}
    execute if data storage asset:temp {IsHidePool:true} run function asset:trader/15/select_artifact/up_to_progress/set_pool.m {Type:"Hide"}

# 要素数が0の場合、強制的に通常シャードのプールで上書きする (隠しプールの神器が0個である可能性があるため)
    execute unless data storage asset:temp Pool[0] run function asset:trader/15/select_artifact/up_to_progress/set_pool.m {Type:"Normal"}

# プールから神器を1つ抽出する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Pool
    function asset:trader/15/select_artifact/picks
    data modify storage asset:temp Sell.UpToProgress set from storage lib: Elements[]
    function lib:array/session/close

# リセット
    data remove storage asset:temp IsHidePool
