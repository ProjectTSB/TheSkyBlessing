#> asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/04.damage
#
# 雨のダメージ処理
#
# @within function asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/02.main

#> Private
# @private
    #declare tag P8.This

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 300.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute as @a if score @s UserID = @e[type=marker,tag=P8.This,limit=1] P8.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[type=#lib:living,tag=Enemy,tag=P8.TargetEntity,distance=..4.5] run function lib:damage/
