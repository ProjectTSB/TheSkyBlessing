#> asset_manager:artifact/triggers/event/attack/get_max_amount
#
#
#
# @within function
#   asset_manager:artifact/triggers/vanilla/
#   asset_manager:artifact/triggers/attack*/foreach

function lib:array/session/open
data modify storage lib: Array set from storage asset:context Attack.Amounts
function lib:array/math/max
data modify storage asset:context Attack.Amount set from storage lib: MaxResult
function lib:array/session/close
