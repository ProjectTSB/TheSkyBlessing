#> asset:sacred_treasure/0064.kenpo_scroll/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0064.kenpo_scroll/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 1 50 force @a[distance=..10]
    playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 2

# 10の軽減貫通ダメージを与える
    data modify storage lib: Argument.Damage set value 10f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run function lib:damage/simple

# リセット
    data remove storage lib: Argument