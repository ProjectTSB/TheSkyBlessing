#> asset:sacred_treasure/0329_approaching_hook_shot/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0329_approaching_hook_shot/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

    execute positioned as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tp @a[tag=this] ~ ~ ~

    execute positioned as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 1 200

    execute positioned as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 2 1.5