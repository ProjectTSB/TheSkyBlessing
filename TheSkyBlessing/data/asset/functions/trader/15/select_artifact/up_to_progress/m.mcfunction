#> asset:trader/15/select_artifact/up_to_progress/m
#
#
#
# @within function asset:trader/15/select_artifact/

# 隠しプールにするかの判定
   $execute if predicate lib:random_pass_per/$(Per) run data modify storage asset:temp IsSpecialPool set value true

# プール初期化
    data modify storage asset:temp Pool set value []

# 攻略段階に応じて各ランクのプールを取得
    execute unless data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/normal/1
    execute if score $Current Temporary >= $UnlockLv2 Temporary unless data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/normal/2
    execute if score $Current Temporary >= $UnlockLv3 Temporary unless data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/normal/3
    execute if score $Current Temporary >= $UnlockLv4 Temporary unless data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/normal/4

    execute if data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/extra/daily/1
    execute if score $Current Temporary >= $UnlockLv2 Temporary if data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/extra/daily/2
    execute if score $Current Temporary >= $UnlockLv3 Temporary if data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/extra/daily/3
    execute if score $Current Temporary >= $UnlockLv4 Temporary if data storage asset:temp {IsSpecialPool:true} run function api:artifact/get_registry/extra/daily/4

# プールを設定
    execute unless data storage asset:temp {IsSpecialPool:true} run function asset:trader/15/select_artifact/up_to_progress/set_pool.m {Type:"Normal"}
    execute if data storage asset:temp {IsSpecialPool:true} run function asset:trader/15/select_artifact/up_to_progress/set_pool.m {Type:"Daily"}

# 要素数が0の場合、強制的に通常シャードのプールで上書きする (隠しプールの神器が0個である可能性があるため)
    execute unless data storage asset:temp Pool[0] run function asset:trader/15/select_artifact/up_to_progress/set_pool.m {Type:"Normal"}

# プールから神器を1つ抽出する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Pool
    function asset:trader/15/select_artifact/picks
    data modify storage asset:temp Sell.UpToProgress set from storage lib: Elements[]
    function lib:array/session/close

# リセット
    data remove storage asset:temp IsSpecialPool
    data remove storage asset:temp Pool
