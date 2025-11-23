#> asset:mob/dps_checker/tick/cooldown/reset
# @within function asset:mob/dps_checker/tick/cooldown/

data modify entity @s CustomName set value '[{"text":"DPS: waiting...", "color": "white"}]'

data modify storage asset:context this.Color set value "aqua"
data modify storage asset:context this.Sum set value 0
data modify storage asset:context this.Tick set value 0
data modify storage asset:context this.Cooldown set value 0
data modify storage asset:context this.DPSCheckDuration set value 300
data modify storage asset:context this.IsAttacked set value false
