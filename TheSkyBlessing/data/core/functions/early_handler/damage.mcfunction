#> core:early_handler/damage
#
# ダメージを受けた際に実行される
#
# @within advancement core:handler/damage

execute if entity @s[advancements={core:handler/damage={is-dummy=true}}] run scoreboard players reset @s TakenDamage
execute if entity @s[advancements={core:handler/damage={is-dummy=true}}] run advancement revoke @s only core:handler/damage
