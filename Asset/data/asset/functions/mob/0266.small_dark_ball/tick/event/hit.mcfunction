#> asset:mob/0266.small_dark_ball/tick/event/hit
#
#
#
# @within function asset:mob/0266.small_dark_ball/tick/move

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[dx=0] unless entity @s[tag=PlayerShouldInvulnerable] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 消失
    function asset:mob/0266.small_dark_ball/tick/event/kill