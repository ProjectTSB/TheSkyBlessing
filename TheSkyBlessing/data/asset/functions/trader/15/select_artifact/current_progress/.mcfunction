#> asset:trader/15/select_artifact/current_progress/
#
#
#
# @within function asset:trader/15/select_artifact/

# 攻略度段階に応じてプールを決める
# シャード村人に対応した攻略度で設定しておく

# プールを設定
    execute if score $Current Temporary matches 00..28 run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:1}
    execute if score $Current Temporary matches 29..53 run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:2}
    execute if score $Current Temporary matches 54..74 run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:3}
    execute if score $Current Temporary matches 75.. run function asset:trader/15/select_artifact/current_progress/set_pool.m {Rarity:4}

# プールから神器を1つ抽出する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Pool
    function asset:trader/15/select_artifact/picks
    data modify storage asset:temp Sell.CurrentProgress set from storage lib: Elements[]
    function lib:array/session/close
