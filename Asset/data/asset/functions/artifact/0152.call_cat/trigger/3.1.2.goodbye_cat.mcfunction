#> asset:artifact/0152.call_cat/trigger/3.1.2.goodbye_cat
#
# 役目を終えたネコにさようならをするfunction
#
# @within function asset:artifact/0152.call_cat/trigger/3.1.entity_manager


# さようなら //killだとログがプレイヤーに出る、死亡音が聞こえるためdataで消す
    playsound minecraft:item.chorus_fruit.teleport neutral @a ~ ~ ~ 1 0.75
    particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.01 200
    effect give @s invisibility 1 0 true
    tp @s ~ -256 ~
    data modify entity @s Health set value 0