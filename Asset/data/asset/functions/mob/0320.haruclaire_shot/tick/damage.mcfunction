#> asset:mob/0320.haruclaire_shot/tick/damage
#
# Mobのtick時の処理
#
# @within function asset:mob/0320.haruclaire_shot/tick/move

# TODO：ダメージを調整する
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 1.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[distance=..1] unless entity @s[tag=PlayerShouldInvulnerable] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 移動速度低下付与
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..1] slowness 3 1 true

# 消失
    scoreboard players set @s 8W.Range 0
    kill @s