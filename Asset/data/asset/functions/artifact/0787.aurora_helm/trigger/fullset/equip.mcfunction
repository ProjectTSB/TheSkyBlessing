#> asset:artifact/0787.aurora_helm/trigger/fullset/equip
#
# フルセット時の処理
#
# @within function
#   asset:artifact/0787.aurora_helm/trigger/3.main
#   asset:artifact/0788.aurora_armor/trigger/3.main
#   asset:artifact/0789.aurora_leggings/trigger/3.main
#   asset:artifact/0790.aurora_boots/trigger/3.main

# フルセットTag
    tag @s add LT.Fullset

# フルセット時の演出
    execute rotated ~ 0 positioned ~ ~0.3 ~ run function asset:artifact/0787.aurora_helm/trigger/fullset/vfx
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.7 1.8 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.6 0

# 雷攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,787,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# MP回復+10%
    data modify storage api: Argument.UUID set value [I;1,1,787,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# スケジュールループ
    schedule function asset:artifact/0787.aurora_helm/trigger/fullset/loop 1t replace