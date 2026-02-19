#> api:artifact/core/from_rarity/construct_and_set_key.m
# @input args
#   Argument.Rarity : (1 | 2 | 3 | 4)
#   Argument.Color : ("normal" | "red" | "blue" | "green")
# @within function api:artifact/core/from_rarity/

$data modify storage lib: Args.key set value "artifact_$(Color)_lv-$(Rarity)"
