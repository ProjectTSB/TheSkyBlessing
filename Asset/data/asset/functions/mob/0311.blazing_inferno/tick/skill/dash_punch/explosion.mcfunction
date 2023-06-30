#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/end

#> 地雷の起爆チェック用タグ
# @private
#declare tag 8S.Ready

# パーティクル
    particle minecraft:explosion_emitter ^ ^ ^3 0 0 0 0 1 force @a[distance=..60]
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]
    particle minecraft:lava ~ ~ ~ 0 0 0 0 10
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 2 100

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 1.5

# ダメージ設定
    data modify storage lib: Argument.Damage set value 35f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"

# ブロック破壊
    execute positioned ^ ^-1 ^2 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/break_block

# 補正実行
    function lib:damage/modifier

# ダメージを与える
    execute positioned ^ ^ ^2 as @a[distance=..4] run function lib:damage/

# 付近の地雷を起爆
    execute positioned ^ ^ ^2 as @e[type=item_display,tag=!8S.Ready,scores={MobID=316},distance=..4] run function asset:mob/0316.blazing_mine/tick/event/bomb/start

# リセット
    function lib:damage/reset