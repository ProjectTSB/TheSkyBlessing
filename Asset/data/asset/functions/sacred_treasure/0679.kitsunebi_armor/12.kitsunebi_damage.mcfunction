#> asset:sacred_treasure/0679.kitsunebi_armor/12.kitsunebi_damage
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/11.kitsunebi_state

# 演出
    particle flame ~ ~1.3 ~ 0.5 0.4 0.5 0 10 normal @a
    playsound block.fire.extinguish master @a ~ ~ ~ 0.4 1.5 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    function lib:damage/
# リセット
    data remove storage lib: Argument
