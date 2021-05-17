#> asset:sacred_treasure/0210.terra_blade/3.5.terra_shot_hit
#
# モブにヒットした際の処理だよ ノックバックは…どうしよう。
#
# @within function asset:sacred_treasure/0210.terra_blade/3.3.terra_shot_main



# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 7.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/

#付近のショット削除
    kill @e[type=armor_stand,tag=ChuzTerraShot,sort=nearest,limit=1]