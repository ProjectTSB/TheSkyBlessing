#> settings:resend_setting_menu/as_schedule
#
#
#
# @within function settings:resend_setting_menu/reserve

#> Private
# @private
#declare score_holder $Time

execute store result score $Time Temporary run time query gametime
execute as @a if score @s SettingMenuResendTime = $Time Temporary run function settings:send_setting_menu
execute as @a if score @s SettingMenuResendTime = $Time Temporary run scoreboard players reset @s SettingMenuResendTime
