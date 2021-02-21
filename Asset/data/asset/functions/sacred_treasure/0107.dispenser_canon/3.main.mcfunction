#> asset:sacred_treasure/0107.dispenser_canon/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0107.dispenser_canon/2.check_condition
#> private
# @private
    #declare tag TNTCanon
    #declare tag TNTStick

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.tnt.primed player @a

# TNT召喚
    summon endermite ~ ~1.5 ~ {Silent:1b,Team:"NoCollision",FallDistance:99f,DeathTime:15s,Tags:["TNTCanon","TNTStick"],Passengers:[{id:"minecraft:tnt",Fuse:40s}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647}]}

# ベクトル取得用AEC召喚
    execute positioned 0.0 0.0 0.0 rotated as @s run summon area_effect_cloud ^ ^ ^2 {NoGravity:1b,Duration:1,Tags:[TNTCanon]}

# AECのベクトル取得
    execute positioned 0.0 0.0 0.0 as @e[type=area_effect_cloud,tag=TNTCanon,distance=..3] run data modify storage asset:temp 0107.Pos set from entity @s Pos

# TNTのmotionセット
    execute as @e[type=endermite,tag=TNTCanon,limit=1] run data modify entity @s Motion set from storage asset:temp 0107.Pos

# タグ消去
    tag @e[tag=TNTCanon,distance=..2,limit=1] remove TNTCanon

# スケジュール
    schedule function asset:sacred_treasure/0107.dispenser_canon/3.1.sticky 1t