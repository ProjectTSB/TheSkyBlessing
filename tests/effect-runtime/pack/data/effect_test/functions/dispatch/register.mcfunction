#> effect_test:dispatch/register
# @private


execute if data storage asset:context {id:64995} run function effect_test:register_child
data modify storage asset:effect ID set from storage asset:context id
data modify storage asset:effect Name set value '{"text":"Effect runtime fixture"}'
data modify storage asset:effect Description set value []
data modify storage asset:effect Field set value {Value:0}
data modify storage asset:effect IsBadEffect set value false
execute if data storage asset:context {id:64992} run data modify storage asset:effect IsBadEffect set value true
data modify storage asset:effect RequireClearLv set value 1
execute if data storage asset:context {id:64992} run data modify storage asset:effect RequireClearLv set value 2
execute if data storage asset:context {id:64993} run data modify storage asset:effect RequireClearLv set value 3
data modify storage asset:effect ExtendsSafe set value true
