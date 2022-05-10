#> asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam
#
# ビーム発射の時の演出で再帰に入れたくないのがここに入っています
#
# @within function asset:mob/0237.lunatic_mage/skill/magic/1

# 演出
    execute positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^15 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^20 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^25 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^30 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^35 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^40 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^45 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    playsound block.portal.travel hostile @a[distance=..50] ~ ~ ~ 0.2 2 0.2

# 再帰
    function asset:mob/0237.lunatic_mage/skill/magic/5.beam_recursive

# ヒット処理
    execute as @a[tag=LandingTarget,distance=..55] run function asset:mob/0237.lunatic_mage/skill/magic/6.hit