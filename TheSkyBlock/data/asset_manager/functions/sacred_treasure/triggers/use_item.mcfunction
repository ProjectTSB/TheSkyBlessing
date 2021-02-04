#> asset_manager:sacred_treasure/triggers/use_item
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

#> private
# @private
    #declare score_holder $isSuccess

# イベント発火前に実行するやつ
    # mainhand?
        data modify storage asset:sacred_treasure Temp set from storage asset:context Old.Items.mainhand
        execute store success score $isSuccess Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context New.Items.mainhand
        execute if score $isSuccess Temporary matches 1 run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'mainhand'
    # offhand?
        data modify storage asset:sacred_treasure Temp set from storage asset:context Old.Items.offhand
        execute store success score $isSuccess Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context New.Items.offhand
        execute if score $isSuccess Temporary matches 1 run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'offhand'
    # リセット
        scoreboard players reset $isSuccess Temporary
        data remove storage asset:sacred_treasure Temp
        data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items
    function asset_manager:sacred_treasure/core/data/pre_event_put/old
# 神器側に受け渡し
    function #asset:sacred_treasure/use_item