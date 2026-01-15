#> asset_manager:artifact/create/set_lore/modifier/priority/define
#
# 各補正の優先度を定義します
#
# @within function core:load_once

# 攻撃
    data modify storage asset:artifact ModifierPriority.attack/base set value 255
    data modify storage asset:artifact ModifierPriority.attack/physical set value 254
    data modify storage asset:artifact ModifierPriority.attack/magic set value 253
    data modify storage asset:artifact ModifierPriority.attack/fire set value 252
    data modify storage asset:artifact ModifierPriority.attack/water set value 251
    data modify storage asset:artifact ModifierPriority.attack/thunder set value 250

# 耐性
    data modify storage asset:artifact ModifierPriority.defense/base set value 249
    data modify storage asset:artifact ModifierPriority.defense/physical set value 248
    data modify storage asset:artifact ModifierPriority.defense/magic set value 247
    data modify storage asset:artifact ModifierPriority.defense/fire set value 246
    data modify storage asset:artifact ModifierPriority.defense/water set value 245
    data modify storage asset:artifact ModifierPriority.defense/thunder set value 244

# その他のTSB固有の補正
    data modify storage asset:artifact ModifierPriority.max_health set value 243
    data modify storage asset:artifact ModifierPriority.heal set value 242
    data modify storage asset:artifact ModifierPriority.receive_heal set value 241
    data modify storage asset:artifact ModifierPriority.max_mp set value 240
    data modify storage asset:artifact ModifierPriority.mp_regen set value 239
    data modify storage asset:artifact ModifierPriority.fall_resistance set value 238

# バニラattribute
    data modify storage asset:artifact ModifierPriority.generic.armor set value 127
    data modify storage asset:artifact ModifierPriority.generic.armor_toughness set value 126
    data modify storage asset:artifact ModifierPriority.generic.movement_speed set value 125
    data modify storage asset:artifact ModifierPriority.generic.knockback_resistance set value 124
