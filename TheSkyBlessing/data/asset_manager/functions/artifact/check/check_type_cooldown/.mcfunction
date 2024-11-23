#> asset_manager:artifact/check/check_type_cooldown/
#
#
#
# @within function asset_manager:artifact/check/

#> private
# @private
    #declare score_holder $Duration

# プレイヤーの TypeCooldown 現在値を取得するために EntityStorage を呼び出す
    function oh_my_dat:please

# その神器に該当する種別クールダウンの現在値を取得する
    scoreboard players set $Duration Temporary -15
    execute if data storage asset:artifact TargetItem.TypeCooldown store result score $Duration Temporary run function asset_manager:artifact/check/check_type_cooldown/get_duration.m with storage asset:artifact TargetItem.TypeCooldown
# クールダウンが終わっていなければタグを付与する
    execute if score $Duration Temporary matches 1.. run tag @s add CheckFailed

# リセット
    scoreboard players reset $Duration Temporary
