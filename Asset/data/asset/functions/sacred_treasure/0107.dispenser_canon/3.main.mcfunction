#> asset:sacred_treasure/0107.dispenser_canon/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0107.dispenser_canon/2.check_condition
#> private
# @private
    #declare tag TNTStick

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.tnt.primed player @a

# TNT召喚
    summon endermite ~ ~1.5 ~ {Silent:1b,Team:"NoCollision",FallDistance:99f,DeathTime:15s,Tags:["TNTStick"],Passengers:[{id:"minecraft:tnt",Fuse:40s}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647}]}

    scoreboard players set $VectorMagnitude Lib 300
    execute as @e[tag=TNTStick] facing ^ ^ ^10 run function lib:motion/

# スケジュール
    schedule function asset:sacred_treasure/0107.dispenser_canon/3.1.sticky 1t