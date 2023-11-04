#> asset:mob/1013.tultaria_shot/tick/5.hit
#
#
#
# @within function asset:mob/1013.tultaria_shot/tick/2.tick


# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset

# 消失
    kill @s