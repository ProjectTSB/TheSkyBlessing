#> player_manager:fall_damage/deal_damage/calc
#
#
#
# @within function player_manager:fall_damage/deal_damage/

#> Val
# @private
    #declare score_holder $DamageableFallDistance (e1)
    #declare score_holder $FixedDamagePart (e5)
    #declare score_holder $FlexibleDamagePart (e5)

# $JumpBoost(e1) = ($JumpBoost(e1) ?? -1(e1)) + 1(e1)
# $DamageableFallDistance(e1) = $FallDistance(e1) - 3(e1) - $JumpBoost(e1)
# $FixedDamagePart(e5) = $DamageableFallDistance(e1) * 0.5(e1) * 1(e3)
# $FlexibleDamagePart(e5) = $DamageableFallDistance(e1) * 0.5(e3) / 20 * $MaxHealth(e2) / 1(e1)
# $Damage(e2) = ($FixedDamagePart(e5) + $FlexibleDamagePart(e5)) * 1(e-2) * $DamageMultiplier(e1) * 1(e-2)

# $DamageableFallDistance(e1) = $FallDistance(e1) - 3(e1) - $JumpBoost(e1)
    scoreboard players operation $DamageableFallDistance Temporary = $FallDistance Temporary
    scoreboard players remove $DamageableFallDistance Temporary 30
    scoreboard players operation $DamageableFallDistance Temporary -= $JumpBoost Temporary
# $FixedDamagePart(e5) = $DamageableFallDistance(e1) * 0.5(e4)
    scoreboard players operation $FixedDamagePart Temporary = $DamageableFallDistance Temporary
    scoreboard players operation $FixedDamagePart Temporary *= $5000 Const
# $FlexibleDamagePart(e5) = $DamageableFallDistance(e1) * 0.025[*0.5/20](e3) * $MaxHealth(e2) / 1(e1)
    scoreboard players operation $FlexibleDamagePart Temporary = $DamageableFallDistance Temporary
    scoreboard players operation $FlexibleDamagePart Temporary *= $25 Const
    scoreboard players operation $FlexibleDamagePart Temporary *= $MaxHealth Temporary
    scoreboard players operation $FlexibleDamagePart Temporary /= $10 Const
# $Damage(e4) = ($FixedDamagePart(e5) + $FlexibleDamagePart(e5)) * 1(e-2) * $DamageMultiplier(e1)
    scoreboard players operation $Damage Temporary = $FixedDamagePart Temporary
    scoreboard players operation $Damage Temporary += $FlexibleDamagePart Temporary
    scoreboard players operation $Damage Temporary /= $100 Const
    scoreboard players operation $Damage Temporary *= $DamageMultiplier Temporary

# リセット
    scoreboard players reset $DamageableFallDistance Temporary
    scoreboard players reset $FixedDamagePart Temporary
    scoreboard players reset $FlexibleDamagePart Temporary
