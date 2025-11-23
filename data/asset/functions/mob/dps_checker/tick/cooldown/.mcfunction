#> asset:mob/dps_checker/tick/cooldown/
# @within function asset:mob/dps_checker/tick/

execute store result storage asset:context this.Cooldown int 1 run data get storage asset:context this.Cooldown 0.999999999999
execute if data storage asset:context this{Cooldown:0} run function asset:mob/dps_checker/tick/cooldown/reset
