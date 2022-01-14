#> asset:mob/0139.blast_eye/tick/2.1.2.boom
#
# 爆発時の処理
#
# @within function asset:mob/0139.blast_eye/tick/2.1.active_tick

# 爆破演出
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.75
    particle minecraft:explosion ~ ~ ~ 1 1 1 0 3

# DamageAPI設定
    data modify storage lib: Argument.Damage set value 12.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.DisableParticle set value true
# 補正
    function lib:damage/modifier
# 実行
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run function lib:damage/
# リセット
    data remove storage lib: Argument