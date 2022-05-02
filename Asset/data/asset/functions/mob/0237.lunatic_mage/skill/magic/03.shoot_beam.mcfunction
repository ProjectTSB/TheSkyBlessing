#> asset:mob/0237.lunatic_mage/skill/magic/03.shoot_beam
#
# ビーム発射の時の演出で再帰に入れたくないのがここに入っています
#
# @within function asset:mob/0237.lunatic_mage/skill/magic/01.manage

# 演出
    execute positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/skill/magic/04.shapes
    execute positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/skill/magic/04.shapes
    execute positioned ^ ^ ^15 run function asset:mob/0237.lunatic_mage/skill/magic/04.shapes
    execute positioned ^ ^ ^20 run function asset:mob/0237.lunatic_mage/skill/magic/04.shapes
    execute positioned ^ ^ ^25 run function asset:mob/0237.lunatic_mage/skill/magic/04.shapes
    execute positioned ^ ^ ^30 run function asset:mob/0237.lunatic_mage/skill/magic/04.shapes
    execute positioned ^ ^ ^35 run function asset:mob/0237.lunatic_mage/skill/magic/04.shapes

    playsound block.portal.travel hostile @a[distance=..40] ~ ~ ~ 0.2 2 0.2

# 再帰
    function asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive

# ダメージ
    execute as @a[tag=LandingTarget,distance=..50] run function asset:mob/0237.lunatic_mage/skill/magic/06.hit