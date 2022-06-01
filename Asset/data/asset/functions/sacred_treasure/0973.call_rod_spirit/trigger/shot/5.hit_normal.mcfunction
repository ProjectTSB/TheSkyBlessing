#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/5.hit_normal
#
# ショットヒット時
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/4.main_2

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 65.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"

# 演出
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 5

# マスターとして補正functionを実行
    execute at @a if score @s R1.UserID = @p UserID as @p run function lib:damage/modifier

# ダメージ実行
    execute as @e[tag=Enemy,tag=!Uninterferable,sort=nearest,limit=1] run function lib:damage/

# リセット
    function lib:damage/reset

# ショットを消す
    kill @s
