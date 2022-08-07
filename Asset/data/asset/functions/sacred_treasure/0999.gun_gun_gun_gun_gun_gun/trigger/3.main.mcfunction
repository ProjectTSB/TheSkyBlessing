#> asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.blaze.shoot master @a ~ ~ ~ 1 1
    playsound entity.blaze.shoot master @a ~ ~ ~ 1 0.5

    execute anchored eyes positioned ^1 ^ ^ run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee_summon
    execute anchored eyes positioned ^2 ^ ^1 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee_summon
    execute anchored eyes positioned ^3 ^ ^2 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee_summon
    execute anchored eyes positioned ^-1 ^ ^ run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee_summon
    execute anchored eyes positioned ^-2 ^ ^1 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee_summon
    execute anchored eyes positioned ^-3 ^ ^2 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee_summon

# Scheduleループ
    schedule function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/schedule_loop 1t replace