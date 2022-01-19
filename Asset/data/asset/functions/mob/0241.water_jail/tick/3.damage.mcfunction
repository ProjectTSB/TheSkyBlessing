#> asset:mob/0241.water_jail/tick/3.damage
#
# ダメージエリア内の判定
#
# @within function asset:mob/0241.water_jail/tick/2.tick

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=3.5..9] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument
