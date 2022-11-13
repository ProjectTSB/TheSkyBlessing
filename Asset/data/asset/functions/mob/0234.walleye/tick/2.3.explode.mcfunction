#> asset:mob/0234.walleye/tick/2.3.explode
#
# @within
#   function asset:mob/0234.walleye/tick/2.tick

# 音とパーティクル
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 2 1 1
    particle large_smoke ~ ~ ~ 2 2 2 0 300 normal
    particle flame ~ ~ ~ 2 2 2 0 200 normal
    particle lava ~ ~ ~ 2 2 2 0 100 normal

# ダメージ: 半径1ブロック以内は60ダメージ、1ブロック離れるごとに10減少
# 攻撃データ設定
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはウォールアイの爆発に巻き込まれた。","with":[{"selector":"@s"}]}]']
# ダメージ
    data modify storage lib: Argument.Damage set value 10.0f
    function lib:damage/modifier
    execute as @p[gamemode=!creative,distance=..1] at @s run function lib:damage/
    execute as @e[type=!player,tag=!this,distance=..1] at @s run function lib:damage/

    data modify storage lib: Argument.Damage set value 10.0f
    function lib:damage/modifier_continuation
    execute as @p[gamemode=!creative,distance=..2] at @s run function lib:damage/
    execute as @e[type=!player,tag=!this,distance=..2] at @s run function lib:damage/

    data modify storage lib: Argument.Damage set value 10.0f
    function lib:damage/modifier_continuation
    execute as @p[gamemode=!creative,distance=..3] at @s run function lib:damage/
    execute as @e[type=!player,tag=!this,distance=..3] at @s run function lib:damage/

    data modify storage lib: Argument.Damage set value 10.0f
    function lib:damage/modifier_continuation
    execute as @p[gamemode=!creative,distance=..4] at @s run function lib:damage/
    execute as @e[type=!player,tag=!this,distance=..4] at @s run function lib:damage/

    data modify storage lib: Argument.Damage set value 10.0f
    function lib:damage/modifier_continuation
    execute as @p[gamemode=!creative,distance=..5] at @s run function lib:damage/
    execute as @e[type=!player,tag=!this,distance=..5] at @s run function lib:damage/

    data modify storage lib: Argument.Damage set value 10.0f
    function lib:damage/modifier_continuation
    execute as @p[gamemode=!creative,distance=..6] at @s run function lib:damage/
    execute as @e[type=!player,tag=!this,distance=..6] at @s run function lib:damage/

# 引数リセット
    function lib:damage/reset

# 自死
    kill @s