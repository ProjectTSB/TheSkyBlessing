#> asset:mob/dps_checker/tick/
# @within function asset:mob/alias/65500/tick

execute if data storage asset:context this{Cooldown:0,IsAttacked:true} run function asset:mob/dps_checker/tick/dps_check/
execute unless data storage asset:context this{Cooldown:0} run function asset:mob/dps_checker/tick/cooldown/
