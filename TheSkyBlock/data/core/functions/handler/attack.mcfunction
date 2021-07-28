#> core:handler/attack
#
# entityを殴った際に実行される
#
# @within function core:tick/player

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Attack
# Reset
    advancement revoke @s only core:handler/attack