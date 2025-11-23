#> asset_manager:artifact/cooldown/main_bar/construct_message.m
#
# actionbarに表示するtext componentを構築
#
# @within function asset_manager:artifact/cooldown/main_bar/

$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Message.MainBar set value ['{"text":"\\uC051","font":"space"}','{"text":"\\u$(Value)","font":"cooldown/main_bar","color":"$(Color)"}','{"text":"\\uC051","font":"space"}']
