#> asset:mob/0076.golden_watermelon_bomber/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/attack/1.trigger

# 引数の設定

    # 水属性ダメージ
        # 与えるダメージ
            data modify storage lib: Argument.Damage set value 5.0
        # 第一属性
            data modify storage lib: Argument.AttackType set value "Physical"
        # 第二属性
            data modify storage lib: Argument.ElementType set value "Water"
        # デスログ
            data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sの金色の輝きにより心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]','[{"translate": "%1$sは%2$sのスイカの電撃により死亡した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
        # 補正functionを実行
            function lib:damage/modifier
        # ダメージ対象
            execute as @p[tag=Victim] run function lib:damage/

    #　雷属性ダメージ
        # 第二属性
            data modify storage lib: Argument.ElementType set value "Thunder"
         # デスログ
            data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sの金色の輝きにより心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]','[{"translate": "%1$sは%2$sの電撃により死亡した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
        # 補正functionを実行
            function lib:damage/modifier
        # ダメージ対象
            execute as @p[tag=Victim] run function lib:damage/
        # リセット
            data remove storage lib: Argument

# 演出
    execute at @p[tag=Victim] run playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1.8 0
    execute at @p[tag=Victim] run particle dust 1 0.941 0.141 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a
    execute at @p[tag=Victim] run particle dust 0.173 1 0.243 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a