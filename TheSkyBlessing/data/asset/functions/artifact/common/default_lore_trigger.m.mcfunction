#> asset:artifact/common/default_lore_trigger.m
#
# Triggers の先頭の Event から、説明欄に出す使い方 (LoreTrigger) を決める
#
# @input args Event : string
# @within function asset:artifact/common/give

$data modify storage asset:artifact LoreTrigger set from storage asset:artifact TriggerEvents[{Event:"$(Event)"}].LoreTrigger
