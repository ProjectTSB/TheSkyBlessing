#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/damage
#
# ダメージと演出
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/main

# 演出
    execute positioned ~ ~0.4 ~ run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1.2 0.7 0

# ダメージ
    data modify storage lib: Argument.Damage set value 600f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正
    execute at @a[distance=..160] if score @s KA.UserID = @p UserID as @p run function lib:damage/modifier
# 実行
    execute as @e[type=#lib:living,tag=Enemy,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset

# 消滅
    kill @s