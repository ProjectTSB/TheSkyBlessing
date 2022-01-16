#> asset:mob/0232.honey_leader/tick/07.hit
#
# ヒット処理
#
# @within function asset:mob/0232.honey_leader/tick/06.beam

# ダメージ
    data modify storage lib: Argument.Damage set value 25.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @p[gamemode=!adventure,gamemode=!survival,dx=0,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# デバフ
    effect give @p[gamemode=!creative,dx=0,limit=1] poison 3 1 true
    effect give @p[gamemode=!creative,dx=0,limit=1] mining_fatigue 3 1 true