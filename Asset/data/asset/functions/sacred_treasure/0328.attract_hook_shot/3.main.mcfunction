#> asset:sacred_treasure/0328.attract_hook_shot/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0328.attract_hook_shot/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 50 force @a[distance=..150]
    playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1

# ヒットした敵をプレイヤーの手前にテレポート
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity rotated ~ 0 run tp @s ^ ^ ^1