#> asset:sacred_treasure/0822.sound_of_a_star/trigger/star/03.hit
#
# ヒット処理
#
# @within function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/02.main

# 演出
    execute at @s run playsound block.beacon.deactivate player @a ~ ~ ~ 0.8 0.8 0
    execute at @s run particle dust 0 1 1 2 ~ ~ ~ 0.4 0.4 0.4 0 30 normal @a

# 鈍足を1秒付与
    effect give @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] slowness 1 1 true

# 自身にtagを付与
    tag @s add MU.This

# ダメージ設定5
    # 与えるダメージ = 15
        data modify storage lib: Argument.Damage set value 65.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 補正
        execute as @a if score @s UserID = @e[type=marker,tag=MU.This,distance=..0.01,sort=nearest,limit=1] MU.UserID run function lib:damage/modifier
    # ダメージ
        execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 消える
    kill @s