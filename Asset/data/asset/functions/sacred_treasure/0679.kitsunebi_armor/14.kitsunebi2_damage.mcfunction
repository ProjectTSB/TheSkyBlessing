#> asset:sacred_treasure/0679.kitsunebi_armor/14.kitsunebi2_damage
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/13.kitsunebi_state2

# 演出
    particle soul_fire_flame ~ ~1.3 ~ 1 0.4 1 0.1 30 normal @a
    playsound block.fire.extinguish master @a ~ ~ ~ 0.4 1.7 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 12.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @e[type=#lib:living,type=!player,distance=..3] run function lib:damage/
# リセット
    data remove storage lib: Argument
