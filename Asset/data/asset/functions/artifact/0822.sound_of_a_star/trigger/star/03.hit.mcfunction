#> asset:artifact/0822.sound_of_a_star/trigger/star/03.hit
#
# ヒット処理
#
# @within function asset:artifact/0822.sound_of_a_star/trigger/star/02.main

# 演出
    execute at @s run playsound block.beacon.deactivate neutral @a ~ ~ ~ 0.8 0.8 0
    execute at @s run particle dust 0 1 1 2 ~ ~ ~ 0.4 0.4 0.4 0 15 normal @a
    execute at @s run particle scrape ~ ~ ~ 0.5 0.5 0.5 0 30 normal @a

# 鈍足を1秒付与
    effect give @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] slowness 1 1 true

# 自身にtagを付与
    tag @s add MU.This

# ダメージ
    data modify storage lib: Argument.Damage set value 800.0f
    execute if entity @s[tag=MU.2] run data modify storage lib: Argument.Damage set value 1000.0f
    execute if entity @s[tag=MU.3] run data modify storage lib: Argument.Damage set value 1200.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    execute at @s as @a if score @s UserID = @e[type=marker,tag=MU.This,distance=..0.01,sort=nearest,limit=1] MU.UserID run function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 消える
    kill @s