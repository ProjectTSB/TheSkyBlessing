#> player_manager:god/mercy/offering/get
#
#
#
# @within function
#   player_manager:god/mercy/on_mercy/check
#   player_manager:god/mercy/offering/send_require_message

# 初期化
    data remove storage player_manager:god TargetOfferingData
# 取得
    execute if score @s InSubArea matches 10 run data modify storage player_manager:god TargetOfferingData set from storage player_manager:god OfferingData.Flora
    execute if score @s InSubArea matches 11 run data modify storage player_manager:god TargetOfferingData set from storage player_manager:god OfferingData.Nyaptov
    execute if score @s InSubArea matches 12 run data modify storage player_manager:god TargetOfferingData set from storage player_manager:god OfferingData.Rumor
    execute if score @s InSubArea matches 13 run data modify storage player_manager:god TargetOfferingData set from storage player_manager:god OfferingData.Urban
    execute if score @s InSubArea matches 14 run data modify storage player_manager:god TargetOfferingData set from storage player_manager:god OfferingData.Wi-ki
# 未設定の場合設定する
    execute unless data storage player_manager:god TargetOfferingData.Next run function player_manager:god/mercy/offering/set_next