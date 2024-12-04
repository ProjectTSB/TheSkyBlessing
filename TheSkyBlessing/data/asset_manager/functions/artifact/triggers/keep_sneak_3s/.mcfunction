#> asset_manager:artifact/triggers/keep_sneak_3s/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# フラグが存在しているか確認する
    execute if entity @s[tag=!TriggerFlag.Sneak] run return fail
# スニークしている時間を取得する
    function asset_manager:artifact/triggers/event/sneak/get_sneak_time/
    execute store result score $SneakTime Temporary run data get storage asset:context SneakTime
# 使用条件を満たしているか確認する
    execute if score $SneakTime Temporary matches 60.. run function asset_manager:artifact/check/
    execute if score $SneakTime Temporary matches 60.. run function asset_manager:artifact/triggers/keep_sneak_3s/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/keep_sneak_3s/use

# リセット
    scoreboard players reset $SneakTime Temporary
    tag @s remove CanUsed
    data remove storage asset:context SneakTime
