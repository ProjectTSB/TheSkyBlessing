#> asset:sacred_treasure/0713.deep_sea_coral_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0713.deep_sea_coral_leggings/trigger/dis_equip/

# 演出
    playsound ogg:block.amethyst.break4 player @a ~ ~ ~ 1 0
    particle splash ~ ~0.5 ~ 0.4 0.2 0.4 0 50 normal @a

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/defense/water/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/attack/water/remove

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/heal/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/attack/fire/remove

# フルセット解除
    execute if entity @s[tag=JR.Fullset] run function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/dis_equip