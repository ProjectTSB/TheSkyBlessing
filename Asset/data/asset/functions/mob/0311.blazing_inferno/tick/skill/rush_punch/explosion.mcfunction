#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/explosion
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/end

#> 地雷の起爆チェック用タグ
# @private
#declare tag 8S.Ready

# パーティクル
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]
    particle minecraft:lava ~ ~ ~ 0 0 0 0 10
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 2 100

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 1.5

# ダメージ設定
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"

# 補正実行
    function lib:damage/modifier

# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function lib:damage/

# 付近の地雷を起爆
    execute positioned ^ ^ ^2 as @e[type=item_display,tag=!8S.Ready,scores={MobID=316},distance=..6] run function asset:mob/0316.blazing_mine/tick/event/bomb/start

# リセット
    function lib:damage/reset