#> asset:sacred_treasure/0981.soufire_shoot/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0981.soufire_shoot/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    #playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.5

# デカい火の玉を放つ
    summon armor_stand ~ ~ ~ {Marker:1b,Tags:["R9.BigFireball","R9.Init"]}

# デカい火の玉を動かすShcheduleループ開始
    