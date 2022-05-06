#> asset:sacred_treasure/0467.cosmo_blue_flash/trigger/hit
#
# 着弾処理
#
# @within function asset:sacred_treasure/0467.cosmo_blue_flash/trigger/shot

# 演出
    particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force
    playsound block.bubble_column.upwards_inside master @a ~ ~ ~ 1.0 1.0

# ダメージ
    data modify storage lib: Argument.Damage set value 1029f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    execute as @a[tag=this] run function lib:damage/modifier
    function lib:damage/

# リセット
    data remove storage lib: Argument