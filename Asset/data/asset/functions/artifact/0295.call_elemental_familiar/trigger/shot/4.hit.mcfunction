#> asset:artifact/0295.call_elemental_familiar/trigger/shot/4.hit
#
#
#
# @within function asset:artifact/0295.call_elemental_familiar/trigger/shot/3.main

# 魔法、火属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 40.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    execute if entity @s[tag=87.ShotFire] run data modify storage lib: Argument.ElementType set value "Fire"
    execute if entity @s[tag=87.ShotThunder] run data modify storage lib: Argument.ElementType set value "Thunder"
    execute if entity @s[tag=87.ShotWater] run data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/

# 演出
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 5

# マスターとして補正functionを実行
    execute at @a if score @s 87.UserID = @p UserID as @p run function lib:damage/modifier

# ダメージ実行
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..3,sort=nearest,limit=1] run function lib:damage/

# リセット
    function lib:damage/reset

# ショットを消す
    kill @s