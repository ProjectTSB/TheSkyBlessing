#> core:handler/attack
#
# entityを殴った際に実行される
#
# @within function core:tick

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Attack
# 攻撃対象の特定
    function mob_manager:entity_finder/attacked_entity/on_attack
# Reset
    advancement revoke @s only core:handler/attack