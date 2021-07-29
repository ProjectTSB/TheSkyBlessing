#> asset:sacred_treasure/0643.raimei_chestplate/3.2.fullset_attack
#
# フルセット時で攻撃を与えた時
#
# @within function asset:sacred_treasure/0643.raimei_chestplate/1.1.attacktrigger

# ダメージ設定
    # 与えるダメージ = 15
        data modify storage lib: Argument.Damage set value 15.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    data remove storage lib: Argument