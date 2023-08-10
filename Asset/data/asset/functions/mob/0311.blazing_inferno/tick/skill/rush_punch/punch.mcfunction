#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/tick

#> SpreadLib
# @private
#declare tag SpreadMarker

# ちょ～っとずつ進む
    execute rotated ~ 0 run tp @s ^ ^ ^0.5

# 常時壁破壊
    function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/break_block

# ダメージ設定
    data modify storage lib: Argument.Damage set value 7f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"

# 補正実行
    function lib:damage/modifier

# ダメージを与える
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function lib:damage/

# プレイヤーを捉える
    execute at @s positioned ^ ^ ^2 run tp @a[distance=..1.5] ^ ^1 ^1

# リセット
    function lib:damage/reset

# 拡散させるEntityを召喚する
    execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 1
# 拡散
    execute as @e[type=marker,tag=SpreadMarker,limit=1] rotated ~ 0 run function lib:forward_spreader/circle
# パンチの判定を拡散したところに出す
    execute anchored eyes positioned ^ ^ ^ facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes positioned ^ ^-1 ^3 rotated ~ 0 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/vfx
# 前進拡散マーカー消す
    kill @e[type=marker,tag=SpreadMarker,distance=..30]