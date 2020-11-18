#> core:handler/killed
#
# entityをkillした際に実行
#
# @within function core:tick

# asset_managerへの引継ぎ
    function asset_manager:sacred_treasure/triggers/killed

# Reset
    advancement revoke @s only core:handler/killed