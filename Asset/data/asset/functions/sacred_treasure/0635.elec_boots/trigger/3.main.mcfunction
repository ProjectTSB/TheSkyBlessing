#> asset:sacred_treasure/0635.elec_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0635.elec_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/feet

# ここから先は神器側の効果の処理を書く

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,635,3]
    # 補正値
        data modify storage api: Argument.Amount set value 0.03
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/thunder/add

#ちょっとした演出
    particle dust 1 1 0 1 ~ ~0.3 ~ 0.4 0.1 0.4 0 6 normal @a
    particle firework ~ ~0.3 ~ 0.4 0.2 0.4 0 6 normal @a
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.5 0

# 一式効果
    execute if data storage asset:context id.all{head:632,chest:633,legs:634,feet:635} run function asset:sacred_treasure/0633.elec_armor/trigger/4.fullset