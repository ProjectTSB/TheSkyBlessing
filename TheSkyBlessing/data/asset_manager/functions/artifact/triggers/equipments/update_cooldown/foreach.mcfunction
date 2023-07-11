#> asset_manager:artifact/triggers/equipments/update_cooldown/foreach
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_cooldown/*

#> Private
# @private
    #declare score_holder $Max

# データ取得
    execute store result score $Tick Temporary run time query gametime
    execute store result score $Max Temporary run data get storage asset:artifact ItemData[-1].LocalCooldown
    execute store result score $LatestUsedTick Temporary run data get storage asset:artifact ItemData[-1].LatestUseTick
# 使用してからの時間を取得
    scoreboard players operation $Tick Temporary -= $LatestUsedTick Temporary
    scoreboard players operation $Max Temporary -= $Tick Temporary
    execute if score $Max Temporary matches ..-15 run scoreboard players set $Max Temporary -15
# 設定
    data modify storage lib: Array append value {}
    execute store result storage lib: Array[-1].Value int 1 run scoreboard players get $Max Temporary
    execute store result storage lib: Array[-1].Max int 1 run data get storage asset:artifact ItemData[-1].LocalCooldown
# 末尾削除
    data remove storage asset:artifact ItemData[-1]
# 要素があれば再帰
    execute if data storage asset:artifact ItemData[0] run function asset_manager:artifact/triggers/equipments/update_cooldown/foreach