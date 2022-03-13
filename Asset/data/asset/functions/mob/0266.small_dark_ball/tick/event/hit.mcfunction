#> asset:mob/0266.small_dark_ball/tick/event/hit
#
#
#
# @within function asset:mob/0266.small_dark_ball/tick/move

# 引数の設定
    # 与えるダメージ = 7.5
        data modify storage lib: Argument.Damage set value 28.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[dx=0] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 消失
    kill @s