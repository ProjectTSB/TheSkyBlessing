#> api:damage/core/mp_heal
#
#
#
# @within function api:damage/core/attack

data modify storage api: Argument.Fluctuation set from storage api: Argument.AdditionalMPHeal
data modify storage api: Argument.DisableLog set value true
function api:mp/fluctuation
