#> api:button/core/create_disable_text_component.m
# @input args
#   Label: string
# @within function api:button/create_text_component

$data modify storage api: Return.ButtonTextComponent set value {"text":"","extra":["[",$(Label),"]"],"color":"gray"}
