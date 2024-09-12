#> asset_manager:artifact/cooldown/main_bar/append_bar.m
#
# 値をUnicodeに変換
#
# @within function asset_manager:artifact/cooldown/main_bar/
#   asset_manager:artifact/cooldown/main_bar/

$data modify storage asset:artifact MainBarMessage append value '{"text":"\\u$(Value)"}'
