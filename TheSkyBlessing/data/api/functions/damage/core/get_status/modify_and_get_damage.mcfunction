#> api:damage/core/get_status/modify_and_get_damage
#
# ダメージをModifierで補正し、取得する
#
# @within function api:damage/core/get_status/

# 属性の耐性値で補正値する
    function oh_my_dat:please
    data modify storage lib: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense
    function api:damage/core/modify_damage
    execute store result score $Damage Temporary run data get storage lib: ModifiedDamage 100
# リセット
    data remove storage lib: ModifiedDamage