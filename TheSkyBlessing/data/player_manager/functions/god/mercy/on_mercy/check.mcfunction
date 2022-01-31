#> player_manager:god/mercy/on_mercy/check
#
#
#
# @within function player_manager:god/mercy/on_mercy/pre

#> 返り値
# @private
    #declare score_holder $Amount
    #declare score_holder $Return.Amount

# 供物データを取得
    function player_manager:god/mercy/offering/get
# 供物アイテムの個数取得
    data modify storage api: Argument.Target set from storage player_manager:god TargetOfferingData.Next.Item
    data modify storage api: Argument.Amount set value 0
    function api:inventory/clear
# 個数チェック
    execute store result score $Amount Temporary run data get storage player_manager:god TargetOfferingData.Next.Amount
    execute unless score $Amount Temporary <= $Return.Amount Lib run function player_manager:god/mercy/offering/send_require_message
    execute if score $Amount Temporary <= $Return.Amount Lib run function player_manager:god/mercy/mercy
# リセット
    scoreboard players reset $Amount
    scoreboard players reset $Return.Amount