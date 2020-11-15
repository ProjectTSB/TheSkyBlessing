#> core:handler/damage
#
# ダメージを受けた際に実行される
#
# @within function core:tick

# asset_managerへの引継ぎ
    function asset_manager:sacred_treasure/triggers/damage
# 攻撃対象の特定
    function mob_manager:detect_hurt_entity/on_hurt
# Reset
    advancement revoke @s only core:handler/damage