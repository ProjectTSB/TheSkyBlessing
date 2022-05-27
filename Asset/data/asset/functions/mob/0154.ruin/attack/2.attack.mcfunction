#> asset:mob/0154.ruin/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0154.ruin/attack/1.trigger

# 腕振るやつ(タグなし)
    execute unless entity @s[tag=4A.Madness] run item replace entity @s weapon.mainhand with stick{CustomModelData:20064}

# 腕振るやつ(タグあり)
    execute if entity @s[tag=4A.Madness] run item replace entity @s weapon.mainhand with stick{CustomModelData:20065}

# 演出
    execute at @p[tag=Victim] run particle block redstone_block ~ ~1 ~ 0.1 0 0.1 4.2 80
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 2 2


# 与えるダメージ
    execute unless entity @s[tag=4A.Madness] run data modify storage lib: Argument.Damage set value 30f
    execute if entity @s[tag=4A.Madness] run data modify storage lib: Argument.Damage set value 66f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset