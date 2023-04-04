#> asset:artifact/0107.dispenser_canon/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0107.dispenser_canon/trigger/2.check_condition
#> private
# @private
    #declare tag TNTStick

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.tnt.primed player @a

# TNT召喚
    summon endermite ~ ~1.5 ~ {Silent:1b,Team:"NoCollision",FallDistance:99f,DeathTime:15s,Tags:["TNTStick"],Passengers:[{id:"minecraft:tnt",Fuse:40s}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647}]}

# TNTを飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 2
    execute as @e[type=endermite,tag=TNTStick,distance=..2] facing ^ ^ ^10 run function lib:motion/
    data remove storage lib: Argument
# スケジュール
    schedule function asset:artifact/0107.dispenser_canon/trigger/3.1.sticky 1t