#> asset:sacred_treasure/0152.call_cat/3.1.goodbye_cat
#
# 役目を終えたネコにさようならをするfunction
#
# @within function asset:sacred_treasure/0152.call_cat/3.main

#>
# 役目を終えるネコ
# @private
    #declare entity @e[type=cat,tag=CalledCat,nbt={Age:0},limit=1]

#さようなら
    execute at @e[type=cat,tag=CalledCat,nbt={Age:0},limit=1] run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 1 0.75
    execute at @e[type=cat,tag=CalledCat,nbt={Age:0},limit=1] run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.01 200
    tp @e[type=cat,tag=CalledCat,nbt={Age:0},limit=1] ~ -64 ~
    data modify entity @e[type=cat,tag=CalledCat,nbt={Age:0},limit=1] Health set value 0
    #TODO asで実行させてnbtチェック減らす