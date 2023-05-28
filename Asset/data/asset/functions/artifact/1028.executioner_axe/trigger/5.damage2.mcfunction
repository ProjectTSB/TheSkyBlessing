#> asset:artifact/1028.executioner_axe/trigger/5.damage2
#
#
#
# @within function asset:artifact/1028.executioner_axe/trigger/3.main

# 演出
    execute positioned as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] positioned ~ ~1.3 ~ run function asset:artifact/1028.executioner_axe/trigger/particle
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# 近接で殴った相手にダメ
# ダメージセット
    data modify storage lib: Argument.Damage set value 1200.0f
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