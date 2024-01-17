#> asset:artifact/0714.deep_sea_coral_boots/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0714.deep_sea_coral_boots/trigger/dis_equip/

# 演出
    playsound ogg:block.amethyst.break4 player @a ~ ~ ~ 1 0
    particle splash ~ ~0.2 ~ 0.4 0.1 0.4 0 50 normal @a

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    function api:modifier/defense/water/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    function api:modifier/attack/water/remove

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    function api:modifier/heal/remove

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    function api:modifier/defense/fire/remove

# フルセット解除
    execute if entity @s[tag=JR.Fullset] run function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/dis_equip