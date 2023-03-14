#> asset:artifact/0927.lexiel_s_oath/trigger/4.critical_hit
#
#
#
# @within function asset:artifact/0927.lexiel_s_oath/trigger/3.main

# 9999の貫通ダメージを与える
    # 与えるダメージ = 9999 ボスは999
        execute if entity @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,distance=..10] run data modify storage lib: Argument.Damage set value 999f
        execute if entity @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,distance=..10] run data modify storage lib: Argument.Damage set value 9999f
    # 防御無視
        data modify storage lib: Argument.FixedDamage set value true