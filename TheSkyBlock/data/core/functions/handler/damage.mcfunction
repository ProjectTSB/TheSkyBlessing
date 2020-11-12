#> core:handler/damage
#
# ダメージを受けた際に実行される
#
# @within function core:tick

# asset_managerへの引継ぎ
    function asset_manager:sacred_treasure/triggers/damage

# Reset
    advancement revoke @s only core:handler/damage