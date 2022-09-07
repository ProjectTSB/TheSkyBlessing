#> player_manager:fall_damage/check_invulnerable
#
#
#
# @within function player_manager:fall_damage/

execute if entity @s[tag=!PlayerShouldInvulnerable,tag=!FallDamageImmunity] run function player_manager:fall_damage/deal_damage/