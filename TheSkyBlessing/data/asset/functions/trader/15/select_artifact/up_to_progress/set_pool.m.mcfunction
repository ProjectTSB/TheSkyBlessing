#> asset:trader/15/select_artifact/up_to_progress/set_pool.m
# @input args:
#   Type : string (Normal | Hide)
# @within function asset:trader/15/select_artifact/up_to_progress/

    $data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[1][]
    $execute if score $Current Temporary >= $UnlockLv2 Temporary run data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[2][]
    $execute if score $Current Temporary >= $UnlockLv3 Temporary run data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[3][]
    $execute if score $Current Temporary >= $UnlockLv4 Temporary run data modify storage asset:temp Pool append from storage api: Return.Registry.$(Type)[4][]
