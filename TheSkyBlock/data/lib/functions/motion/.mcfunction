#> lib:motion/
#
# 実行座標の前方に$VectorMagnitude*100のMotionを付与します。
#
# 実行者はPlayer以外のEntityである必要があります。
#
# ※いずれかのMotionが10以上の場合Minecraftの仕様上動作しません。
#
# @input
#   as entity
#   score $VectorMagnitude Armument
# @api

# 初期化としてsummon & 視点を自分にあわせてTP
    execute unless entity @e[type=area_effect_cloud,tag=MotionLibMarker,x=0,limit=1] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[MotionLibMarker]}
    tp @e[type=area_effect_cloud,tag=MotionLibMarker,x=0,limit=1] 0.0 0.0 0.0 ~ ~

# 演算処理
    scoreboard players operation $VectorMagnitude.copy Temporary = $VectorMagnitude Lib
    #//18bitシフト + operation *= 2 の分で19bit分シフト
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2^19 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^20.48
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^10.24
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^5.12
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^2.56
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^1.28
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^0.6
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^0.3
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^0.16
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^0.08
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^0.04
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^0.02
    scoreboard players operation $VectorMagnitude.copy Temporary *= $2 Const
    execute if score $VectorMagnitude.copy Temporary matches ..-1 at @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] run tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] ^ ^ ^0.01

# 適用
    data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] Pos
# 次Entityに備えたtp
    tp @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1] 0.0 0.0 0.0

# リセット 複数Entityが利用する可能性がある都合上1tick遅らせる
    schedule function lib:motion/core/score_reset 1t