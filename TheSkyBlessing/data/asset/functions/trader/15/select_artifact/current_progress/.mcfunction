#> asset:trader/15/select_artifact/current_progress/
#
#
#
# @within function asset:trader/15/select_artifact/

# 攻略度段階に応じてプールを決める
# シャード村人に対応した攻略度で設定しておく

# プールを設定
# Lv1は最初から買えるようにする
    data modify storage asset:temp Temp.Rarity set value 1
    execute if score $Current Temporary >= $UnlockLv2 Temporary run data modify storage asset:temp Temp.Rarity set value 2
    execute if score $Current Temporary >= $UnlockLv3 Temporary run data modify storage asset:temp Temp.Rarity set value 3
    execute if score $Current Temporary >= $UnlockLv4 Temporary run data modify storage asset:temp Temp.Rarity set value 4
    function asset:trader/15/select_artifact/current_progress/set_pool.m with storage asset:temp Temp

# プールから神器を1つ抽出する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Pool
    function asset:trader/15/select_artifact/picks
    data modify storage asset:temp Sell.CurrentProgress set from storage lib: Elements[]
    function lib:array/session/close

# リセット
    data remove storage asset:temp Pool
