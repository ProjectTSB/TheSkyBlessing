#> asset_manager:artifact/cooldown/mini_bar/choose_max_cds/push_compare_result
#
#
#
# @within function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach

# #> Private
# # @private
#     #declare score_holder $LCDMax
#     #declare score_holder $LCD
#     #declare score_holder $TCDMax

# # スコアに移す (TCD は null の可能性があるためデフォルト値として -1 を入れる)
#     execute store result score $LCD Temporary run data get storage asset:artifact LCDs[-1].Value
#     execute store result score $LCDMax Temporary run data get storage asset:artifact LCDs[-1].Max
#     execute store result score $TCDMax Temporary run data get storage asset:artifact TCD.Max
# # 比較して追加
#     execute if score $LCD Temporary matches 1.. if score $LCDMax Temporary > $TCDMax Temporary run data modify storage asset:artifact CDs append from storage asset:artifact LCDs[-1]
#     execute if score $LCD Temporary matches 1.. if score $LCDMax Temporary <= $TCDMax Temporary run data modify storage asset:artifact CDs append from storage asset:artifact TCD
#     execute if score $LCD Temporary matches ..0 run data modify storage asset:artifact CDs append from storage asset:artifact TCD
# # リセット
#     scoreboard players reset $LCDMax Temporary
#     scoreboard players reset $TCDMax Temporary


#> Private
# @private
    #declare score_holder $LCD
    #declare score_holder $TCD

# スコアに移す (TCD は null の可能性があるためデフォルト値として -1 を入れる)
    execute store result score $LCD Temporary run data get storage asset:artifact LCDs[-1].Value
    execute store result score $TCD Temporary run data get storage asset:artifact TCD.Value
# 比較して追加
    execute if score $LCD Temporary > $TCD Temporary run data modify storage asset:artifact CDs append from storage asset:artifact LCDs[-1]
    execute if score $LCD Temporary <= $TCD Temporary run data modify storage asset:artifact CDs append from storage asset:artifact TCD
# リセット
    scoreboard players reset $LCD Temporary
    scoreboard players reset $TCD Temporary
