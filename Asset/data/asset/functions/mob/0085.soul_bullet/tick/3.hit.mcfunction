#> asset:mob/0085.soul_bullet/tick/3.hit
#
# ヒット処理
#
# @within function asset:mob/0085.soul_bullet/tick/2.tick

# ダメージ
    data modify storage lib: Argument.Damage set value 36f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
    function lib:damage/reset

# 消滅
    kill @s