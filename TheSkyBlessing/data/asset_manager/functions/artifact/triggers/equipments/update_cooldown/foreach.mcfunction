#> asset_manager:artifact/triggers/equipments/update_cooldown/foreach
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_cooldown/*

# データを取得
    execute store result score $Tick Temporary run time query gametime
    execute store result score $Max Temporary run data get storage asset:artifact New.CopiedItemData[-1].LocalCooldown
    execute store result score $LatestUsedTick Temporary run data get storage asset:artifact New.CopiedItemData[-1].LatestUseTick
# 使用してからの時間を取得
    scoreboard players operation $Tick Temporary -= $LatestUsedTick Temporary
    scoreboard players operation $Max Temporary -= $Tick Temporary
    execute if score $Max Temporary matches ..-15 run scoreboard players set $Max Temporary -15
# 設定
    data modify storage asset:artifact LocalCooldown append value {}
    execute store result storage asset:artifact LocalCooldown[-1].Value int 1 run scoreboard players get $Max Temporary
    execute store result storage asset:artifact LocalCooldown[-1].Max int 1 run data get storage asset:artifact New.CopiedItemData[-1].LocalCooldown
# リセット
    scoreboard players reset $Max Temporary
    scoreboard players reset $LatestUsedTick Temporary
    data remove storage asset:artifact New.CopiedItemData[-1]
# ループ
    execute if data storage asset:artifact New.CopiedItemData[0] run function asset_manager:artifact/triggers/equipments/update_cooldown/foreach
