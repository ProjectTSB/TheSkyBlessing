#> asset_manager:artifact/cooldown/common/compare_cooldown
#
#
#
# @within function
#   asset_manager:artifact/cooldown/main_bar/
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/check_second

#> Private
# @private
    #declare score_holder $LCD
    #declare score_holder $TCD

# スコアに移す (TCD は null の可能性があるためデフォルト値として -16 を入れる)
    scoreboard players set $TCD Temporary -16
    execute store result score $LCD Temporary run data get storage asset:artifact LCD.Value
    execute if data storage asset:artifact TCD store result score $TCD Temporary run data get storage asset:artifact TCD.Value
# 比較して追加
    execute if score $LCD Temporary > $TCD Temporary run data modify storage asset:artifact CD set from storage asset:artifact LCD
    execute if score $LCD Temporary <= $TCD Temporary run data modify storage asset:artifact CD set from storage asset:artifact TCD
# リセット
    scoreboard players reset $LCD Temporary
    scoreboard players reset $TCD Temporary
