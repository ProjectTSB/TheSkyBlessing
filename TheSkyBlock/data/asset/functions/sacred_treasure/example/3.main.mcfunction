#> asset:sacred_treasure/example/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/example/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/feet

# ここから先は神器側の効果の処理を書く
    summon area_effect_cloud ~ ~ ~ {Particle:"block air",Radius:0.01f,Duration:1,Age:-1,Effects:[{Id:25b,Amplifier:8b,Duration:2,ShowParticles:0b}]}
    particle flame ~ ~-0.4 ~ 0.2 0.2 0.2 0.2 20 normal