#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/7.danger_field
#
# ここより外に出ると痛いし戻される。コマンド数がすごい。
#
# @within asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick


# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=10..15] run function lib:damage/
    # ワープで戻される
    execute as @a[tag=!PlayerShouldInvulnerable,distance=10..15] positioned ^ ^ ^5 rotated ~ 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/8.player_pull

# リセット
    function lib:damage/reset

#   円その1
    particle electric_spark ^0 ^ ^-10 0 0 0 0 1
    particle electric_spark ^1.56434 ^ ^-9.87688 0 0 0 0 1
    particle electric_spark ^3.09017 ^ ^-9.51057 0 0 0 0 1
    particle electric_spark ^4.5399 ^ ^-8.91007 0 0 0 0 1
    particle electric_spark ^5.87785 ^ ^-8.09017 0 0 0 0 1
    particle electric_spark ^7.07107 ^ ^-7.07107 0 0 0 0 1
    particle electric_spark ^8.09017 ^ ^-5.87785 0 0 0 0 1
    particle electric_spark ^8.91007 ^ ^-4.5399 0 0 0 0 1
    particle electric_spark ^9.51057 ^ ^-3.09017 0 0 0 0 1
    particle electric_spark ^9.87688 ^ ^-1.56434 0 0 0 0 1
    particle electric_spark ^10 ^ ^0 0 0 0 0 1
    particle electric_spark ^9.87688 ^ ^1.56434 0 0 0 0 1
    particle electric_spark ^9.51057 ^ ^3.09017 0 0 0 0 1
    particle electric_spark ^8.91007 ^ ^4.5399 0 0 0 0 1
    particle electric_spark ^8.09017 ^ ^5.87785 0 0 0 0 1
    particle electric_spark ^7.07107 ^ ^7.07107 0 0 0 0 1
    particle electric_spark ^5.87785 ^ ^8.09017 0 0 0 0 1
    particle electric_spark ^4.5399 ^ ^8.91007 0 0 0 0 1
    particle electric_spark ^3.09017 ^ ^9.51057 0 0 0 0 1
    particle electric_spark ^1.56434 ^ ^9.87688 0 0 0 0 1
    particle electric_spark ^0 ^ ^10 0 0 0 0 1
    particle electric_spark ^-1.56434 ^ ^9.87688 0 0 0 0 1
    particle electric_spark ^-3.09017 ^ ^9.51057 0 0 0 0 1
    particle electric_spark ^-4.5399 ^ ^8.91007 0 0 0 0 1
    particle electric_spark ^-5.87785 ^ ^8.09017 0 0 0 0 1
    particle electric_spark ^-7.07107 ^ ^7.07107 0 0 0 0 1
    particle electric_spark ^-8.09017 ^ ^5.87785 0 0 0 0 1
    particle electric_spark ^-8.91007 ^ ^4.5399 0 0 0 0 1
    particle electric_spark ^-9.51057 ^ ^3.09017 0 0 0 0 1
    particle electric_spark ^-9.87688 ^ ^1.56434 0 0 0 0 1
    particle electric_spark ^-10 ^ ^0 0 0 0 0 1
    particle electric_spark ^-9.87688 ^ ^-1.56434 0 0 0 0 1
    particle electric_spark ^-9.51057 ^ ^-3.09017 0 0 0 0 1
    particle electric_spark ^-8.91007 ^ ^-4.5399 0 0 0 0 1
    particle electric_spark ^-8.09017 ^ ^-5.87785 0 0 0 0 1
    particle electric_spark ^-7.07107 ^ ^-7.07107 0 0 0 0 1
    particle electric_spark ^-5.87785 ^ ^-8.09017 0 0 0 0 1
    particle electric_spark ^-4.5399 ^ ^-8.91007 0 0 0 0 1
    particle electric_spark ^-3.09017 ^ ^-9.51057 0 0 0 0 1
    particle electric_spark ^-1.56434 ^ ^-9.87688 0 0 0 0 1

# 円その2、ちょっと上に
    execute positioned ~ ~1 ~ run particle electric_spark ^0 ^ ^-10 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^1.56434 ^ ^-9.87688 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^3.09017 ^ ^-9.51057 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^4.5399 ^ ^-8.91007 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^5.87785 ^ ^-8.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^7.07107 ^ ^-7.07107 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^8.09017 ^ ^-5.87785 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^8.91007 ^ ^-4.5399 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^9.51057 ^ ^-3.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^9.87688 ^ ^-1.56434 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^10 ^ ^0 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^9.87688 ^ ^1.56434 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^9.51057 ^ ^3.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^8.91007 ^ ^4.5399 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^8.09017 ^ ^5.87785 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^7.07107 ^ ^7.07107 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^5.87785 ^ ^8.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^4.5399 ^ ^8.91007 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^3.09017 ^ ^9.51057 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^1.56434 ^ ^9.87688 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^0 ^ ^10 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-1.56434 ^ ^9.87688 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-3.09017 ^ ^9.51057 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-4.5399 ^ ^8.91007 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-5.87785 ^ ^8.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-7.07107 ^ ^7.07107 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-8.09017 ^ ^5.87785 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-8.91007 ^ ^4.5399 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-9.51057 ^ ^3.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-9.87688 ^ ^1.56434 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-10 ^ ^0 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-9.87688 ^ ^-1.56434 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-9.51057 ^ ^-3.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-8.91007 ^ ^-4.5399 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-8.09017 ^ ^-5.87785 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-7.07107 ^ ^-7.07107 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-5.87785 ^ ^-8.09017 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-4.5399 ^ ^-8.91007 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-3.09017 ^ ^-9.51057 0 0 0 0 1
    execute positioned ~ ~1 ~ run particle electric_spark ^-1.56434 ^ ^-9.87688 0 0 0 0 1
