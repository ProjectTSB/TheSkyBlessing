#> asset:sacred_treasure/0787.aurora_helm/trigger/fullset/equip
#
# フルセット時の処理
#
# @within function
#   asset:sacred_treasure/0787.aurora_helm/trigger/3.main
#   asset:sacred_treasure/0788.aurora_armor/trigger/3.main
#   asset:sacred_treasure/0789.aurora_leggings/trigger/3.main
#   asset:sacred_treasure/0790.aurora_boots/trigger/3.main

# フルセット時の演出
    execute rotated ~ 0 positioned ~ ~0.3 ~ run function asset:sacred_treasure/0787.aurora_helm/trigger/fullset/vfx
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.7 1.8 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.6 0