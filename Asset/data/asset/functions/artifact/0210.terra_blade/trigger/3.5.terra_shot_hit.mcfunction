#> asset:artifact/0210.terra_blade/trigger/3.5.terra_shot_hit
#
# モブにヒットした際の処理だよ ノックバックは…どうしよう。
#
# @within function asset:artifact/0210.terra_blade/trigger/3.3.terra_shot_main



# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 70.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    tag @s add this
    execute as @a if score @s UserID = @e[type=armor_stand,tag=this,distance=..1,limit=1] 5U.ID run function lib:damage/modifier
    tag @s remove this
    execute as @e[type=#lib:living,type=!player,sort=nearest,limit=1] run function lib:damage/
    function lib:damage/reset

# パーティクル
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
    particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1

#ショット削除
    function asset:artifact/0210.terra_blade/trigger/terra_shot_break