#> asset:mob/dps_checker/hurt/
# @within function asset:mob/alias/65500/hurt

data modify storage asset:context this.IsAttacked set value true

execute if data storage asset:context this{Cooldown:0} run function asset:mob/dps_checker/hurt/add_to_sum
