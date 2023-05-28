#> asset:artifact/1028.executioner_axe/trigger/4.damage
#
#
#
# @within function asset:artifact/1028.executioner_axe/trigger/3.main

# 演出
    execute positioned as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] positioned ~ ~1.3 ~ run function asset:artifact/1028.executioner_axe/trigger/particle
    execute positioned as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] positioned ~ ~1.3 ~ run particle block redstone_block ~ ~ ~ 0.1 0 0.1 0 10
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# 近接で殴った相手にダメ
# ダメージセット
    data modify storage lib: Argument.Damage set value 800.0f
# 第一属性
    data modify storage lib: Argument.AttackType set value "Physical"
# 第二属性
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset