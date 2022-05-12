#> asset:sacred_treasure/0953.meteor_rain/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0953.meteor_rain/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 隕石を召喚
    execute positioned ~20 ~ ~ run function asset:sacred_treasure/0953.meteor_rain/trigger/event/summon
    execute positioned ~-20 ~ ~ run function asset:sacred_treasure/0953.meteor_rain/trigger/event/summon
    execute positioned ~ ~ ~20 run function asset:sacred_treasure/0953.meteor_rain/trigger/event/summon
    execute positioned ~ ~ ~-20 run function asset:sacred_treasure/0953.meteor_rain/trigger/event/summon
    execute positioned ~ ~ ~ run function asset:sacred_treasure/0953.meteor_rain/trigger/event/summon
