#> asset:sacred_treasure/0669.brizzard_armor/8.attack
#
#
#
# @within function asset:sacred_treasure/0669.brizzard_armor/7.attack_trigger

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim] run particle snowflake ~ ~1.5 ~ 2 0.6 2 0 40 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim] run playsound item.elytra.flying master @a ~ ~ ~ 0.8 2 0

# 水魔法属性攻撃

    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 6.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute at @e[type=#lib:living,type=!player,tag=Victim] as @e[type=#lib:living,type=!player,distance=..3] run function lib:damage/
# リセット
    data remove storage lib: Argument
