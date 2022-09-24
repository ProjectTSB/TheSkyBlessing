#> asset:mob/0057.none_fighter/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0057.none_fighter/attack/1.trigger

# 演出
    execute at @p[tag=Victim] run particle minecraft:block white_concrete ~ ~1.2 ~ 1.0 0.5 1.0 0 40 normal @a
    execute at @p[tag=Victim] run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 1 1.2 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sとの闘いに敗北した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより殺された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# 範囲
    execute at @p[tag=Victim,distance=..32] as @a[gamemode=!spectator,distance=..2.5] run function lib:damage/
# リセット
    function lib:damage/reset