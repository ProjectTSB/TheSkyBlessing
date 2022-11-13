#> asset:sacred_treasure/0665.soul_fire_armor/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0665.soul_fire_armor/trigger/dis_equip/

# 演出
    execute if entity @s[tag=!IG.Fullset] positioned ~ ~0.8 ~ run function asset:sacred_treasure/0664.soul_fire_armor/trigger/particle2
    execute if entity @s[tag=!IG.Fullset] positioned ~ ~1.1 ~ run function asset:sacred_treasure/0664.soul_fire_armor/trigger/particle2
    execute if entity @s[tag=!IG.Fullset] positioned ~ ~1.4 ~ run function asset:sacred_treasure/0664.soul_fire_armor/trigger/particle2
    playsound block.fire.ambient player @a ~ ~ ~ 1.5 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound ogg:mob.vex.idle1 player @a ~ ~ ~ 1 0 0

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    function api:player_modifier/attack/physical/remove

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    function api:player_modifier/defense/fire/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    function api:player_modifier/attack/fire/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    function api:player_modifier/mp_regen/remove

# 最大体力
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-029900000005

# フルセット解除
    execute if entity @s[tag=IG.Fullset] run function asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/fullset_dis_equip