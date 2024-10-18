#> asset:mob/dps_checker/register
# @within function asset:mob/dps_checker/65500/register

data modify storage asset:mob ID set value 65500

data modify storage asset:mob Type set value "Enemy"

data modify storage asset:mob Interferable set value true

data modify storage asset:mob Name set value '[{"text":"DPS: "},{"text":"waiting..."}]'
data modify storage asset:mob Health set value 1000000

data modify storage asset:mob Armor.Head set value {id:"minecraft:target",Count:1b}

data modify storage asset:mob KnockBackResist set value 1
data modify storage asset:mob Speed set value 0

data modify storage asset:mob Field.Color set value "aqua"
data modify storage asset:mob Field.Sum set value 0
data modify storage asset:mob Field.Tick set value 0
data modify storage asset:mob Field.Cooldown set value 0
data modify storage asset:mob Field.DPSCheckDuration set value 300
data modify storage asset:mob Field.IsAttacked set value false
