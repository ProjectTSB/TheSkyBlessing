#> debug:trader/core/update
#
#
#
# @within function debug:trader/update

#> Private
# @private
#declare storage debug:trader

function oh_my_dat:please

data modify storage debug:trader Args.Type set value "trader"
data modify storage debug:trader Args.ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.ID
function debug:world_asset/force_fetch.m with storage debug:trader Args

kill @s
