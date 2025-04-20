#> settings:resend_setting_menu/reserve.m
# @input args
#   Resend: int
# @within function settings:**

execute store result score @s SettingMenuResendTime run time query gametime
$scoreboard players add @s SettingMenuResendTime $(Resend)

$schedule function settings:resend_setting_menu/as_schedule $(Resend)t append
