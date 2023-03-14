#> asset:artifact/0738.voltage_striker/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0738.voltage_striker/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound item.trident.riptide_1 player @a ~ ~ ~ 0.6 2 0
    playsound item.trident.riptide_1 player @a ~ ~ ~ 0.6 1.5 0
    playsound entity.illusioner.prepare_mirror player @a ~ ~ ~ 0.5 2 0
    playsound entity.illusioner.prepare_mirror player @a ~ ~ ~ 0.5 1.6 0

# 弾を5回召喚する
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/trigger/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/trigger/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/trigger/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/trigger/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/trigger/4.summon_bullet

# ループ開始
    schedule function asset:artifact/0738.voltage_striker/trigger/bullet/loop 1t replace