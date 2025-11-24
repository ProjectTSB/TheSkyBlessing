#> lib:macro/get_and_remove.m
# @input args
#   Source: string
# @output result Source
# @api

$data modify storage lib: Temp.Value set from $(Source)
$data modify storage lib: Temp.Source set value "$(Source)"

return run function lib:macro/core/get_and_remove.m with storage lib: Temp
