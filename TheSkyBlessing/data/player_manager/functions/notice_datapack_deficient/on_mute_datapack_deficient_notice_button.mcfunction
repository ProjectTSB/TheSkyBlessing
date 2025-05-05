#> player_manager:notice_datapack_deficient/on_mute_datapack_deficient_notice_button
#
#
#
# @within function player_manager:notice_datapack_deficient/

tellraw @s [{"text":"データパック欠損の通知を無効化しました。"}]
data modify storage global MuteDatapackDeficientNotice set value true
