#> asset:mob/0316.blazing_mine/tick/event/bomb/explosion
#
# 爆発する
#
# @within function asset:mob/0316.blazing_mine/tick/event/bomb/tick

# パーティクル
    particle minecraft:explosion ~ ~ ~ 1.5 1 1.5 0 10 force @a[distance=..60]

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1.5 0.5

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える。
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/

# リセット
    function lib:damage/reset

# 消失
    kill @s