#> asset:mob/0075.watermelon/tick/3.explosion
#
#
#
# @within function asset:mob/0075.watermelon/tick/2.tick


# 演出
    playsound entity.dolphin.swim hostile @a ~ ~ ~ 2 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1.3 1 0
    particle dust 1 0.141 0.141 3 ~ ~1.6 ~ 2 2 2 0 30 normal @a
    particle explosion ~ ~1.6 ~ 1 1 1 0 20 normal @a

# スイカスライスを召喚
    summon item ~ ~ ~ {Age:5900s,PickupDelay:5s,Item:{id:"minecraft:melon_slice",Count:5b}}

# 水属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 13.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってスイカの爆発に巻き込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの爆発の衝撃波に巻き込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function lib:damage/
    # リセット
        function lib:damage/reset

# 消滅
    kill @s
