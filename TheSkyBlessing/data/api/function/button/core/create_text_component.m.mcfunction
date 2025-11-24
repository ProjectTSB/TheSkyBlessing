#> api:button/core/create_text_component.m
# @input args
#   Label: string(TextComponent)
#   TriggerIndex: int
# @within function api:button/create_text_component

$data modify storage api: Return.ButtonTextComponent set value {"text":"","extra":["[",$(Label),"]"],"color":"gold","clickEvent":{"action":"run_command","value":"/trigger Trigger set $(TriggerIndex)"}}
