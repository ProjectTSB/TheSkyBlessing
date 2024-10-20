#> asset:mob/dps_checker/tick/dps_check/end
# @within function asset:mob/dps_checker/tick/dps_check/

data modify storage asset:context this.Color set value "gold"
function asset:mob/dps_checker/tick/dps_check/set_name.m with storage asset:context this

tellraw @a[distance=..50] [{"text":"DPS: "},{"storage":"asset:context","nbt":"this.DPS"}]

data modify storage asset:context this.IsDPSCheckEnded set value true
data modify storage asset:context this.Cooldown set value 100
