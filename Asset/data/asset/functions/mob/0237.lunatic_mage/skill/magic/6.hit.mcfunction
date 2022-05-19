#> asset:mob/0237.lunatic_mage/skill/magic/6.hit
#
# ヒット処理
#
# @within function asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam

# ダメージ設定
    data modify storage lib: Argument.Damage set value 50f
    data modify storage lib: Argument.AttackType set value "Magic"
    execute as @e[type=zombie,tag=this,distance=..0.01,limit=1] run function lib:damage/modifier
    function lib:damage/
# リセット
    data remove storage lib: Argument

# Tag削除
    tag @s remove LandingTarget