#> rom:access/
#
#
#
# @within function api:rom/access

#> Val
# @private
#declare score_holder $RequireProvide

# 新たに提供する必要があるかをチェックする
    execute store success score $RequireProvide Temporary run data modify storage rom: LatestProvidedAddress set from storage api: Argument.Address
# 必要な場合は提供する
    execute if score $RequireProvide Temporary matches 1 run function rom:access/provide
# リセット
    scoreboard players reset $RequireProvide Temporary