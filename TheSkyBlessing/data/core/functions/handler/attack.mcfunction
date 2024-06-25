#> core:handler/attack
#
# entityを殴った際に実行される
#
# @within function core:tick/player/

# ダメージ計算
    execute as @e[tag=AttackedEntity] if score @s AttackedEntity = @p[tag=this] UserID at @s run function player_manager:vanilla_attack
# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Attack
# Reset
    advancement revoke @s only core:handler/attack
