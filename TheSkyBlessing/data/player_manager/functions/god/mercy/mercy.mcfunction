#> player_manager:god/mercy/mercy
#
#
#
# @within function player_manager:god/mercy/on_mercy/check

# 供物アイテムの削除
    data modify storage api: Argument.Target set from storage player_manager:god TargetOfferingData.Next.Item
    data modify storage api: Argument.Amount set from storage player_manager:god TargetOfferingData.Next.Amount
    function api:inventory/clear
# 次の供物アイテムを設定する
    function player_manager:god/mercy/offering/set_next
# アイテム返還
    data modify storage api: Argument.Count set value 20
    execute at @s positioned ~ ~7 ~ run function api:lost_items/give
# 神のメッセージ
    execute if score @s InSubArea matches 1 run function lib:message/god/flora/mercy
    execute if score @s InSubArea matches 2 run function lib:message/god/nyaptov/mercy
    execute if score @s InSubArea matches 3 run function lib:message/god/rumor/mercy
    execute if score @s InSubArea matches 4 run function lib:message/god/urban/mercy
    execute if score @s InSubArea matches 5 run function lib:message/god/wi-ki/mercy
