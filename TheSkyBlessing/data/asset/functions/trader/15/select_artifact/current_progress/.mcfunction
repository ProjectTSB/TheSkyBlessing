#> asset:trader/15/select_artifact/current_progress/
#
#
#
# @within function asset:trader/15/select_artifact/

# 攻略度段階に応じてプールを決める
# シャード村人に対応した攻略度で設定しておく

# プールを設定
    execute if score $Current Temporary >= $UnlockLv1 Temporary unless score $Current Temporary >= $UnlockLv2 Temporary run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:1}
    execute if score $Current Temporary >= $UnlockLv2 Temporary unless score $Current Temporary >= $UnlockLv3 Temporary run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:2}
    execute if score $Current Temporary >= $UnlockLv3 Temporary unless score $Current Temporary >= $UnlockLv4 Temporary run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:3}
    execute if score $Current Temporary >= $UnlockLv4 Temporary run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:4}

# プールから神器を1つ抽出する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Pool
    function asset:trader/15/select_artifact/picks
    data modify storage asset:temp Sell.CurrentProgress set from storage lib: Elements[]
    function lib:array/session/close

# リセット
    data remove storage asset:temp Pool
