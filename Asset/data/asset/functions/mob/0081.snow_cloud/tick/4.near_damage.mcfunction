#> asset:mob/0081.snow_cloud/tick/4.near_damage
#
#
#
# @within function asset:mob/0081.snow_cloud/tick/2.tick

# 水魔法ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function lib:damage/
    # リセット
        data remove storage lib: Argument
