#> asset:sacred_treasure/0219.abyss_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0219.abyss_sword/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 50 force @a[distance=..10]
    playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 2

# テレポート処理
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run tp ~ ~-1 ~