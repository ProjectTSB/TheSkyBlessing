#> asset:mob/0081.snow_cloud/tick/7.snowed
#
#
#
# @within function asset:mob/0081.snow_cloud/tick/6.recursion

# 粉雪が積もる
    execute at @p[] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air

# 重めのデバフ
    effect give @s slowness 4 2 true
    effect give @s mining_fatigue 4 2 true

# 水魔法ダメージ
    # 引数の設定
        # 与えるダメージ
            data modify storage lib: Argument.Damage set value 6.0
        # 第一属性
            data modify storage lib: Argument.AttackType set value "Magic"
        # 第二属性
            data modify storage lib: Argument.ElementType set value "Water"
        # 補正functionを実行
            function lib:damage/modifier
        # ダメージ対象
            execute as @s run function lib:damage/
        # リセット
            data remove storage lib: Argument
