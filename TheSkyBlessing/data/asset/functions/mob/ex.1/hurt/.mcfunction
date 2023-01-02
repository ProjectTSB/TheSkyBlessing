#> asset:mob/ex.1/hurt/
#
#
#
# @within function asset:mob/ex.1/_/hurt

tellraw @a [{"selector":"@a[tag=Attacker]"},{"text":": "},{"storage":"asset:context","nbt":"this.myValue"}]

data modify storage asset:mob Implement set value true