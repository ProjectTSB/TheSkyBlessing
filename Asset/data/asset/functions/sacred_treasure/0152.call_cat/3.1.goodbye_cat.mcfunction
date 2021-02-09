#> asset:sacred_treasure/0152.call_cat/3.1.goodbye_cat
#
# 役目を終えたネコにさようならをするfunction
#
# @within function asset:sacred_treasure/0152.call_cat/3.main

#さようなら
tp @e[type=cat,tag=CalledCat,nbt={Age:0},limit=1] ~ -64 ~
data merge entity @e[type=cat,tag=CalledCat,nbt={Age:0},limit=1] {Health:0f}