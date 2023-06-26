#> asset:artifact/0268.heal_lv.10/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0268.heal_lv.10/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 演出
    playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.6 0.8
    playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.8 1.8
    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.17
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1.0 1.4
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {Age:0,Duration:5,WaitTime:0,Radius:3f,Tags:[],Particle:"dust 1 1 0.5 1"}
    summon minecraft:area_effect_cloud ~ ~0.0 ~ {Age:0,Duration:5,WaitTime:0,Radius:3f,Tags:[],Particle:"dust 1 1 0.5 1"}
    summon minecraft:area_effect_cloud ~ ~0.2 ~ {Age:0,Duration:1,WaitTime:0,Radius:3f,Tags:[],Particle:"totem_of_undying"}
# 回復
    data modify storage lib: Argument.Heal set value 9.6f
    function lib:heal/modifier
    execute as @a[distance=..3,sort=nearest,limit=6] run function lib:heal/
# リセット
    function lib:heal/reset