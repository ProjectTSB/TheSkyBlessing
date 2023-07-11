#> asset:mob/0240.lunatic_laser/tick/3.shoot
#
# ビームの発射処理
#
# @within function asset:mob/0240.lunatic_laser/tick/2.tick

# 演出
    execute positioned ~ ~0.3 ~ run function asset:mob/0240.lunatic_laser/tick/vfx/circle2
    execute positioned ~ ~1.75 ~ run function asset:mob/0240.lunatic_laser/tick/vfx/circle
    execute positioned ~ ~3.5 ~ run function asset:mob/0240.lunatic_laser/tick/vfx/circle
    execute positioned ~ ~5.25 ~ run function asset:mob/0240.lunatic_laser/tick/vfx/circle
    execute positioned ~ ~7 ~ run function asset:mob/0240.lunatic_laser/tick/vfx/magic_circle

    playsound item.trident.return hostile @a ~ ~ ~ 0.6 0.8
    playsound item.trident.return hostile @a ~ ~ ~ 0.6 2
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.5 2
    playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 0.4 2
    playsound block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 0.4 1.8
    playsound block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 0.4 1.6
    playsound ogg:item.trident.thunder2 hostile @a ~ ~ ~ 0.5 1.7

# 再帰開始
    execute rotated ~ -90 run function asset:mob/0240.lunatic_laser/tick/4.recursive

# ダメージ
    data modify storage lib: Argument.Damage set value 50f
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute as @a[tag=Hit,distance=..7] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a remove Hit