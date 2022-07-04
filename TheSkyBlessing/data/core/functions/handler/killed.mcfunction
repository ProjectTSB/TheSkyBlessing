#> core:handler/killed
#
# entityをkillした際に実行
#
# @within function core:tick/player/

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Killed
# Reset
    advancement revoke @s only core:handler/killed