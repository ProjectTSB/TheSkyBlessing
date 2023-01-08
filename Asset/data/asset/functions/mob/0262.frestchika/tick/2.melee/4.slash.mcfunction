#> asset:mob/0262.frestchika/tick/2.melee/4.slash
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.melee/1.melee

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 27.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..1] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    execute as @a[gamemode=!spectator,distance=..1] at @s run particle dust 0.224 0.69 1 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a