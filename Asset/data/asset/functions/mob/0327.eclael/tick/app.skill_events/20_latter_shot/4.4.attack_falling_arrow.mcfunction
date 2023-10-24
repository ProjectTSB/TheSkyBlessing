#> asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.4.attack_falling_arrow
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/1.main

# 演出
    playsound entity.arrow.hit hostile @a ~ ~ ~ 1 1
    playsound item.trident.hit_ground hostile @a ~ ~ ~ 1 1
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.4 2
    # [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAjAGxEAcZAnHQMYC01ADAExHMAsAhnR6sARnDbMA7AFYp1RhSlMpRKWFwY+AWwTJAW74ACMmrAw+AJy0BnJOEYB7PBghIpbXADMzdzTbAA3PhQ8HXAADyQ3MCgIgF8Y3Ag7XwCgkLBwxEjoxDIpONw7d3dLOGdM3FEALzQ4MwjcNEsAIThq2oBRAEc8QJQoAGVTRjgSRHdAkriAXSA_3
    # 線 1
    particle dust 100000000 1 100000000 2 ^0 ^ ^0 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^0.30612 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^0.61224 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^0.91837 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^1.22449 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^1.53061 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^1.83673 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^2.14286 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^2.44898 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^2.7551 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^3.06122 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^3.36735 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^3.67347 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^3.97959 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^4.28571 0.1 0.1 0.1 0 2
    particle dust 100000000 1 100000000 2 ^0 ^ ^4.59184 0.1 0.1 0.1 0 2
    particle dust 100000000 1 1 2 ^0 ^ ^4.89796 0.1 0.1 0.1 0 2
    particle dust 100000000 1 1 2 ^0 ^ ^5.20408 0.1 0.1 0.1 0 2
    particle dust 100000000 1 1 2 ^0 ^ ^5.5102 0.1 0.1 0.1 0 2
    particle dust 100000000 1 1 2 ^0 ^ ^5.81633 0.1 0.1 0.1 0 2
    particle dust 100000000 1 1 2 ^0 ^ ^6.12245 0.1 0.1 0.1 0 2
    particle dust 100000000 1 1 2 ^0 ^ ^6.42857 0.1 0.1 0.1 0 2
    particle dust 100000000 1 1 2 ^0 ^ ^6.73469 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^7.04082 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^7.34694 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^7.65306 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^7.95918 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^8.26531 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^8.57143 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^8.87755 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^9.18367 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^9.4898 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^9.79592 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^10.10204 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^10.40816 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^10.71429 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^11.02041 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^11.32653 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^11.63265 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^11.93878 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^12.2449 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^12.55102 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^12.85714 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^13.16327 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^13.46939 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^13.77551 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^14.08163 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^14.38776 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^14.69388 0.1 0.1 0.1 0 2
    particle dust 100000000 100000000 1 2 ^0 ^ ^15 0.1 0.1 0.1 0 2
    # [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAJykCGArDQCwAcA7ALQCMARnDe4wBspAMztuzThwAM05pW7SUNGgCZSqsAQB2NALYJkgMMUABJy1gYNDPoDOScCgD2hbRCSrpBFHDdwMDmAAbjTYhIbgAB5IXmBQMQC+CQQ2pGiE9oiqBLYQ1u6IsXDY2GgwtoacsilOeRCGsWi2AKIlZRXNAI6EodhQAMpWPuSIAGahFUkAukA_3
    # 円 1
    particle dust 100000000 1 100000000 2 ~0 ~ ~-2 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~0.61803 ~ ~-1.90211 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~1.17557 ~ ~-1.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~1.61803 ~ ~-1.17557 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~1.90211 ~ ~-0.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~2 ~ ~0 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~1.90211 ~ ~0.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~1.61803 ~ ~1.17557 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~1.17557 ~ ~1.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~0.61803 ~ ~1.90211 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~0 ~ ~2 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-0.61803 ~ ~1.90211 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-1.17557 ~ ~1.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-1.61803 ~ ~1.17557 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-1.90211 ~ ~0.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-2 ~ ~0 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-1.90211 ~ ~-0.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-1.61803 ~ ~-1.17557 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-1.17557 ~ ~-1.61803 0 0 0 0 1
    particle dust 100000000 1 100000000 2 ~-0.61803 ~ ~-1.90211 0 0 0 0 1

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute positioned ^ ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function lib:damage/
# リセット
    function lib:damage/reset

# 自身をkill
    kill @s