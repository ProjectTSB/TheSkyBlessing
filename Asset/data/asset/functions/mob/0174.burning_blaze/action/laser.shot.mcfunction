#> asset:mob/0174.burning_blaze/action/laser.shot
#
#
#
# @within function asset:mob/0174.burning_blaze/action/laser.tick

# ダメージ設定
    data modify storage lib: Argument set value {Damage:30,AttackType:Physical,AttackElement:Fire}

# プレイヤー方向にレーザー発射
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..32] feet anchored eyes run function asset:mob/0174.burning_blaze/action/laser.shot.loop

# ダメージ補正
    function lib:damage/modifier
# ヒット対象にダメージ
    execute as @a[tag=Hit] run function lib:damage/

# リセット
    data remove storage lib: Argument
    tag @a[tag=Hit] remove Hit

# スコア戻す
    scoreboard players set @s 4U.ActionTime 0
    scoreboard players set @s 4U.NowAction 0

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 2 0.1
