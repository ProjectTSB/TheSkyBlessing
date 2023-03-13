#> asset:artifact/0787.aurora_helm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0787.aurora_helm/trigger/dis_equip/

# 演出
    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 1.4 0
    particle dust_color_transition 0.000 1.000 0.886 1.5 0 0 0 ~ ~1.7 ~ 0.4 0.2 0.4 0 40 normal @a

# 以下の補正を消す

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    function api:modifier/defense/magic/remove

# 雷耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    function api:modifier/defense/thunder/remove

# 雷攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    function api:modifier/attack/thunder/remove

# MP回復+5%
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    function api:modifier/mp_regen/remove

# 物理耐性-10%
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    function api:modifier/defense/physical/remove

# フルセット解除
    execute if entity @s[tag=LT.Fullset] run function asset:artifact/0787.aurora_helm/trigger/fullset/dis_equip