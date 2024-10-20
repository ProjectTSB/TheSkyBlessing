#> api:damage/core/health_subtract/non-player/kill
#
#
#
# @within function api:damage/core/health_subtract/non-player/

execute if data storage api: Argument{DamageType:"Projectile"} run tag @s add AttackedByProjectile
execute as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add Killer
execute as @p[tag=Killer] run advancement grant @s only core:handler/killed
effect clear @s resistance
damage @s 9999 player_attack by @p[tag=Killer]

tag @s remove AttackedByProjectile
