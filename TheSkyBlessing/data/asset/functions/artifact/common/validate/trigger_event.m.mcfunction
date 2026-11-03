#> asset:artifact/common/validate/trigger_event.m
# @input args Event : string
# @within function asset:artifact/common/validate/triggers

$execute unless data storage asset:artifact TriggerEvents[{Event:"$(Event)"}] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていない Event が指定されています: "},{"text":"$(Event)","color":"red"}]
