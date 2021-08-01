#> asset:sacred_treasure/0625.flame_armor/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0625.flame_armor/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/chest

# ここから先は神器側の効果の処理を書く

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,625,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.03
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/fire/add

#ちょっとした演出
    particle flame ~ ~1.3 ~ 0.4 0.3 0.4 0 10 normal @a
    playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.4 1

# 一式検知
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:624}}},{Slot:102b,tag:{TSB:{ID:625}}},{Slot:101b,tag:{TSB:{ID:626}}},{Slot:100b,tag:{TSB:{ID:627}}}]} run function asset:sacred_treasure/0625.flame_armor/4.fullset

