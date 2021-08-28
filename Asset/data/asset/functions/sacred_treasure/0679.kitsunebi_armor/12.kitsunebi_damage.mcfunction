#> asset:sacred_treasure/0679.kitsunebi_armor/12.kitsunebi_damage
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/11.kitsunebi_state

# 演出
    particle flame ~ ~1.3 ~ 0.5 0.4 0.5 0.05 10 normal @a
    particle soul_fire_flame ~ ~1.3 ~ 0.5 0.4 0.5 0.15 10 normal @a
    playsound block.fire.extinguish master @a ~ ~ ~ 0.4 1.5 0

# スコアをリセット
    scoreboard players reset @s IV.DamageTick

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @e[type=#lib:living,type=!player,distance=..2.5] run function lib:damage/
# リセット
    data remove storage lib: Argument
