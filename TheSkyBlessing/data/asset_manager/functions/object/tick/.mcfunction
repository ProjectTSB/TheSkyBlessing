#> asset_manager:object/tick/
#
# ObjectのTick処理
#
# @within function asset_manager:object/tick/call_super_method

# EntityStorage呼び出し
    function oh_my_dat:please

# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
    data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField

# 取得した数値でマクロ実行
    function asset_manager:object/tick/tick.m with storage asset:context

# super.tick呼び出し
    execute unless data storage asset:object {Implement:true} run function asset_manager:object/tick/call_super_method
    data remove storage asset:object Implement
