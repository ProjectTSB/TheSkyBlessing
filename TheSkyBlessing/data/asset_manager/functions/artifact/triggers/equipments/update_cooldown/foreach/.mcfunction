#> asset_manager:artifact/triggers/equipments/update_cooldown/foreach/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_cooldown/**

#> Private
# @private
    #declare score_holder $Max
    #declare score_holder $Current

# データ取得
    execute store result score $Tick Temporary run time query gametime
    data modify storage asset:artifact CopiedTriggers set from storage asset:artifact CopiedItemData[-1].Triggers
    function asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_cooldown
    execute store result storage asset:artifact MaxLCD int 1 run scoreboard players get $Max Temporary
    function asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_tick.m with storage asset:artifact
# 使用してからの時間を取得
    scoreboard players operation $Current Temporary = $Max Temporary
    scoreboard players operation $Tick Temporary -= $LatestUsedTick Temporary
    scoreboard players operation $Current Temporary -= $Tick Temporary
    execute if score $Current Temporary matches ..-15 run scoreboard players set $Current Temporary -15
# 設定
    data modify storage lib: Array append value {}
    execute store result storage lib: Array[-1].Value int 1 run scoreboard players get $Current Temporary
    execute store result storage lib: Array[-1].Max int 1 run scoreboard players get $Max Temporary
# 末尾削除
    data remove storage asset:artifact CopiedItemData[-1]
# リセット
    data remove storage asset:artifact CopiedTriggers
    scoreboard players reset $Max Temporary
    scoreboard players reset $Current Temporary
# 要素があれば再帰
    execute if data storage asset:artifact CopiedItemData[0] run function asset_manager:artifact/triggers/equipments/update_cooldown/foreach/
