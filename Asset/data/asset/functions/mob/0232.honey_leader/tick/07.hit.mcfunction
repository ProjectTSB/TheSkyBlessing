#> asset:mob/0232.honey_leader/tick/07.hit
#
# ヒット処理
#
# @within function asset:mob/0232.honey_leader/tick/06.beam

# 演出
    particle block honey_block ~ ~1.2 ~ 0.4 0.4 0.4 0 60 normal @a
    playsound block.honey_block.hit hostile @a[distance=..20] ~ ~ ~ 0.8 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 28.0f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value ['[{"translate": "%1$sは%2$sに全身べとべとにされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    data modify storage lib: Argument.DeathMessage append value ['[{"translate": "%1$sは%2$sにハチの巣の材料にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
# 補正
    function lib:damage/modifier
# 実行
    execute as @p[gamemode=!creative,gamemode=!spectator,dx=0,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument
# デバフ
    effect give @p[gamemode=!creative,gamemode=!spectator,dx=0,limit=1] poison 3 1 true
    effect give @p[gamemode=!creative,gamemode=!spectator,dx=0,limit=1] mining_fatigue 3 1 true