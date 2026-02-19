#> world_manager:nexus_loader/register
#
#
#
# @within function core:load_once

data modify storage world_manager:nexus_loader DummyCompoundsForOffset2 set value [{},{}]
data modify storage world_manager:nexus_loader DummyCompoundsForOffset3 set value [{},{},{}]

# [0] / minecraft:the_nether
# [1] / minecraft:overworld
# [2] / minecraft:the_end
data modify storage world_manager:nexus_loader Registry set value [{B:{},N:[],Outliers:[]},{B:{},N:[],Outliers:[]},{B:{},N:[],Outliers:[]}]
function #asset:nexus_loader/register
