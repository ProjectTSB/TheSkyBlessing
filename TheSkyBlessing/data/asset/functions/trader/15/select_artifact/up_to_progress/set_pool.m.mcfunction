#> asset:trader/15/select_artifact/up_to_progress/set_pool.m
#
#
#
# @within function asset:trader/15/select_artifact/up_to_progress/

    $data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[1][]
    $execute if score $Current Temporary matches 29.. run data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[2][]
    $execute if score $Current Temporary matches 54.. run data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[3][]
    $execute if score $Current Temporary matches 75.. run data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[4][]
