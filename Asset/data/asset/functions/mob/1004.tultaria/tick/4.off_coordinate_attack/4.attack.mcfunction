#> asset:mob/1004.tultaria/tick/4.off_coordinate_attack/4.attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/1.off_coordinate_attack

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 45.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=2.5..8] run function lib:damage/
# リセット
    function lib:damage/reset

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmACwCMpcAbPQOykC0pAzAKweuVcAjaqwCGAkV1bU4A2aSYoUTEfTAEAdiIC2CZIDDFAAQAmVigD2MKGrAwRGbQGck4c4XUQk1IwRRx3cDGcwADcRbEJdcAAPJAAGAitEWIBfZIJ7UjRCJ0QuAgcIOw8kgjhsbDQYB11qWPiwDDNCiF16tAcAUXLK6o6AR0Iw7CgAZVtfckQAMzDq1IBdIA_3
# 落雷
    execute positioned ~0 ~ ~-5 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~2.5 ~ ~-4.33013 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~4.33013 ~ ~-2.5 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~5 ~ ~0 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~4.33013 ~ ~2.5 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~2.5 ~ ~4.33013 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~0 ~ ~5 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~-2.5 ~ ~4.33013 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~-4.33013 ~ ~2.5 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~-5 ~ ~0 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~-4.33013 ~ ~-2.5 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx
    execute positioned ~-2.5 ~ ~-4.33013 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/5.vfx

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0 0