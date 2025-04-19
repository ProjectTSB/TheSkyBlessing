#> api:button/core/create_text_component.m
# @input args
#   Label: string(TextComponent)
#   TriggerIndex: int
#   Enabled: boolean
# @within function api:button/create_text_component

$execute if data storage global Boolean.$(Enabled) run data modify storage api: Return.ButtonTextComponent set value '{"text":"","extra":["[",$(Label),"]"],"color":"gold","clickEvent":{"action":"run_command","value":"/trigger Trigger set $(TriggerIndex)"}}'
$execute unless data storage global Boolean.$(Enabled) run data modify storage api: Return.ButtonTextComponent set value '{"text":"","extra":["[",$(Label),"]"],"color":"gray"}'
