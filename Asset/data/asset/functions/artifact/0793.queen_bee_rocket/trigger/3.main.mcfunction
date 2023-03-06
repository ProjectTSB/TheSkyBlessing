#> asset:artifact/0793.queen_bee_rocket/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0793.queen_bee_rocket/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5

    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/trigger/bee_summon

# Scheduleループ
    schedule function asset:artifact/0793.queen_bee_rocket/trigger/schedule_loop 1t replace