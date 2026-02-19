#> player_manager:god/mercy/offering/send_require_message
#
#
#
# @within function
#   player_manager:god/mercy/on_check_offering
#   player_manager:god/mercy/on_mercy

function player_manager:god/mercy/offering/get

tellraw @s [{"storage":"player_manager:god","nbt":"TargetOfferingData.GodName","color":"white"},{"text":"に慈悲を乞うには","color":"white"},{"storage":"player_manager:god","nbt":"TargetOfferingData.Next.Name","interpret":true,"color":"green"},{"text":"が","color":"white"},{"storage":"player_manager:god","nbt":"TargetOfferingData.Next.Amount","color":"green"},{"text":"個必要なようだ...","color":"white"}]
