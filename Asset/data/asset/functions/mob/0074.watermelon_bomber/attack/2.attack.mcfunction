#> asset:mob/0074.watermelon_bomber/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0074.watermelon_bomber/attack/1.trigger

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 16.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってスイカに取り込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってスイカの栄養となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.splash hostile @a ~ ~ ~ 0.8 0.8 0
    execute at @p[tag=Victim,distance=..6] run particle dust 1 0.141 0.141 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.173 1 0.243 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a