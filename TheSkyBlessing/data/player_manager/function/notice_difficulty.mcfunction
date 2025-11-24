#> player_manager:notice_difficulty
#
# 難易度を確認して通知します
#
# @within function core:handler/join

function api:global_vars/get_difficulty
function settings:common/get_difficulty_text.m with storage api: Return
tellraw @s [{"text":"難易度: "},{"storage":"settings:","nbt":"DifficultyText","interpret":true}]
