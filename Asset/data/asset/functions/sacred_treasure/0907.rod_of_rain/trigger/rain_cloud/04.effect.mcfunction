#> asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/04.effect
#
# 雨のダメージ処理と回復処理
#
# @within function asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/02.main

# 自身を判別するTagを自身に付与
    tag @s add P8.This

# ダメージ

    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 300.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute as @a if score @s UserID = @e[type=marker,tag=P8.This,limit=1] P8.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[type=#lib:living,tag=Enemy,tag=P8.TargetEntity,distance=..10] run function lib:damage/

# 回復

# 水攻撃補正を代入
    execute store result storage api: Argument.Amount double 1 run function api:player_modifier/attack/water/get

# 体力回復量補正に水攻撃補正を掛ける
    data modify storage api: Argument.UUID set value [I;1,1,907,0]
    data modify storage api: Argument.Operation set value "multiply"
    execute as @a if score @s UserID = @e[type=marker,tag=P8.This,limit=1] P8.UserID run function api:player_modifier/heal/add

# 範囲内のプレイヤーを回復
    data modify storage lib: Argument.Heal set value 7.0f
    execute as @a if score @s UserID = @e[type=marker,tag=P8.This,limit=1] P8.UserID run function lib:heal/modifier
    execute as @a[tag=P8.TargetEntity,distance=..10] run function lib:heal/

# 体力回復補正から水攻撃補正を取り除く
    data modify storage api: Argument.UUID set value [I;1,1,907,0]
    execute as @a if score @s UserID = @e[type=marker,tag=P8.This,limit=1] P8.UserID run function api:player_modifier/heal/remove

# リセット
    tag @e[type=#lib:living,tag=P8.TargetEntity,distance=..10] remove P8.TargetEntity
    tag @s remove P8.This
    data remove storage lib: Argument