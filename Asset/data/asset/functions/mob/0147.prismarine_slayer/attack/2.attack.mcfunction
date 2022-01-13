#> asset:mob/0147.prismarine_slayer/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0147.prismarine_slayer/attack/1.trigger

# 自身に移動速度上昇
    effect give @s speed 2 2 true

# プレイヤーと同じ剣(鎌)の振り方
    item replace entity @s weapon.mainhand with stick{CustomModelData:20048}

# 演出
    execute at @p[tag=Victim,distance=..6] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.078 0.471 0.486 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 0.8 1.5 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.splash.high_speed master @a ~ ~ ~ 0.4 1.7 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.attack.sweep master @a ~ ~ ~ 0.4 1.4 0

# バフを解除
    effect clear @p[tag=Victim,distance=..6] water_breathing
    effect clear @p[tag=Victim,distance=..6] regeneration
    effect clear @p[tag=Victim,distance=..6] dolphins_grace

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 29f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument

