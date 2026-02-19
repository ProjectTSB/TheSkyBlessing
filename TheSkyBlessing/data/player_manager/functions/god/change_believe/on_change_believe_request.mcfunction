#> player_manager:god/change_believe/on_change_believe_request
#
#
#
# @within function player_manager:god/common/send_another_believer_in_temple_menu

function oh_my_dat:please
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function player_manager:god/change_believe/change_process/start
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function player_manager:god/change_believe/send_confirm_button
