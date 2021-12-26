#> asset:mob/0075.watermelon/tick/3.explosion
#
#
#
# @within function asset:mob/0075.watermelon/tick/2.tick


# 演出
    playsound entity.dolphin.swim master @a ~ ~ ~ 2 1 0
    playsound entity.generic.explode master @a ~ ~ ~ 1.3 1 0
    particle dust 1 0.141 0.141 3 ~ ~1.6 ~ 2 2 2 0 30 normal @a
    particle explosion ~ ~1.6 ~ 1 1 1 0 20 normal @a

# スイカスライスを召喚
    summon item ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:16b}}

# 水属性ダメージ

    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 13.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2.5] run function lib:damage/
    # リセット
        data remove storage lib: Argument

# 消滅
    kill @s
