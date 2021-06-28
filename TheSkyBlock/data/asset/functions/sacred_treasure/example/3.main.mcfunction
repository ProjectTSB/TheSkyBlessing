#> asset:sacred_treasure/example/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/example/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く
    execute if entity @s[tag=Equip] run effect give @s night_vision 999999 0 true
    execute if entity @s[tag=DisEquip] run effect clear @s night_vision