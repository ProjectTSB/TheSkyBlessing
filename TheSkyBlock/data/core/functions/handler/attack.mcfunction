#> core:handler/attack
#
# entityを殴った際に実行される
#
# @within function core:tick

# asset_managerへの引継ぎ
    function asset_manager:sacred_treasure/triggers/attack

# Reset
    advancement revoke @s only core:handler/attack