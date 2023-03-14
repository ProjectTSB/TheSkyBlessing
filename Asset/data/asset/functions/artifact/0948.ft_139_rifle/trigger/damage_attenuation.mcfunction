#> asset:artifact/0948.ft_139_rifle/trigger/damage_attenuation
#
#
#
# @within function asset:artifact/0948.ft_139_rifle/trigger/hit

# ダメージ減らす
    scoreboard players operation $Distance_Damping Temporary -= $Appropriate_Distance Temporary
    scoreboard players operation $Distance_Damping Temporary *= $4 Const
    scoreboard players operation $Damage Temporary -= $Distance_Damping Temporary
# ダメージ減らしすぎて最低ダメージを下回った時
    execute if score $Damage Temporary <= $MinDamage Temporary run scoreboard players operation $Damage Temporary = $MinDamage Temporary