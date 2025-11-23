#> asset_manager:artifact/create/set_left_click
#
#
#
# @within function asset_manager:artifact/create/set_data

data modify storage asset:artifact Item.components.attack_range set value {min_reach:0.0,max_reach:0.0,hitbox_margin:0.0,mob_factor:0.0}
data modify storage asset:artifact Item.components.swing_animation set value {type:"whack"}
data modify storage asset:artifact Item.components.enchantments set value {"core:left_click_detection":1}
data modify storage asset:artifact Item.components.piercing_weapon set value {deals_knockback:false,dismounts:false}
data modify storage asset:artifact Item.components.tooltip_display.hidden_components append value "enchantments"
