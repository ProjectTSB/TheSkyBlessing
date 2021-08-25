#> asset:mob/0100.magic_bullet_of_witch_zombie/tick/4.fire_damage
#
#
#
# @within function asset:mob/0100.magic_bullet_of_witch_zombie/tick/3.fire

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 6.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # 範囲5m以内のゾンビを対象に
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function lib:damage/
    # リセット
        data remove storage lib: Argument