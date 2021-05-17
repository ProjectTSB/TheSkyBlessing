#> asset:sacred_treasure/0210.terra_blade/3.5.terra_shot_hit
#
# モブにヒットした際の処理だよ ノックバックは…どうしよう。
#
# @within function asset:sacred_treasure/0210.terra_blade/3.3.terra_shot_main



# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 7.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    tag @s add 210.This
    execute as @a if score @s UserID = @e[type=armor_stand,tag=210.This,distance=..1,limit=1] 210.ID run function lib:damage/modifier
    tag @s remove 210.This
    execute as @e[type=#lib:living,type=!player,sort=nearest,limit=1] run function lib:damage/

# パーティクル
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
    particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1

#ショット削除
    function asset:sacred_treasure/0210.terra_blade/terra_shot_break