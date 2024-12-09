#> asset_manager:artifact/triggers/event/attack/mp_heal
#
#
#
# @within function asset_manager:artifact/triggers/attack*/foreach

#> private
# @private
    #declare score_holder $MPHeal
    #declare score_holder $Hits

execute if data storage asset:artifact TargetItem.MPHealWhenHit store result score $MPHeal Temporary run data get storage asset:artifact TargetItem.MPHealWhenHit
execute if data storage asset:artifact TargetItem.MPHealWhenHit store result score $Hits Temporary if data storage asset:context Attack.To[]
execute if data storage asset:artifact TargetItem.MPHealWhenHit store result storage api: Argument.Fluctuation int 1 run scoreboard players operation $MPHeal Temporary *= $Hits Temporary
execute if data storage asset:artifact TargetItem.MPHealWhenHit run data modify storage api: Argument.DisableLog set value true
execute if data storage asset:artifact TargetItem.MPHealWhenHit run function api:mp/fluctuation
scoreboard players reset $MPHeal Temporary
scoreboard players reset $Hits Temporary
