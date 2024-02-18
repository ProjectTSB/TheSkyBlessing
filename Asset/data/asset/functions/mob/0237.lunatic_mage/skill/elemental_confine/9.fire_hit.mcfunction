#> asset:mob/0237.lunatic_mage/skill/elemental_confine/9.fire_hit
#
# 火の弾のヒット処理
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/7.fire_shoot

# ダメージ設定
    data modify storage lib: Argument.Damage set value 32f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
# ハード以上でならダメージ増加
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 36f
    execute as @e[type=zombie,tag=this,distance=..0.01,limit=1] run function lib:damage/modifier
    function lib:damage/
# リセット
    function lib:damage/reset

# Tag削除
    tag @s remove LandingTarget