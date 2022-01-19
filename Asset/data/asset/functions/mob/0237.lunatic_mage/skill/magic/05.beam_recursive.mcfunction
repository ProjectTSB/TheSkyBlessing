#> asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive
#
# 再帰ビームだよ
#
# @within function
#   asset:mob/0237.lunatic_mage/skill/magic/03.shoot_beam
#   asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive

# 演出
    particle end_rod ~ ~ ~ 0.4 0.4 0.4 0 5 normal @a
    particle end_rod ^ ^ ^1 0.4 0.4 0.4 0 5 normal @a

# ヒット
    execute positioned ~-1 ~-1 ~-1 if entity @a[gamemode=!creative,gamemode=!spectator,tag=!LandingTarget,dx=2,dy=2,dz=2] run function asset:mob/0237.lunatic_mage/skill/magic/06.hit

# 再帰 プレイヤーにも壁にも当たっても止まらない
    execute if entity @s[distance=..40] positioned ^ ^ ^2 run function asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive

# 多段ヒットしないようにつけたTagを消す
    execute if entity @s[distance=38..40] if entity @a[tag=LandingTarget,distance=..40] run tag @a[tag=LandingTarget,distance=..40] remove LandingTarget