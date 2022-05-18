#> asset:sacred_treasure/0837.the_world_knife/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0837.the_world_knife/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1

# 敵を狙う処理
    execute anchored eyes positioned ^ ^ ^2 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4,sort=random,limit=1] add N9.Target

# 弾を召喚(敵がいない場合)
    execute anchored eyes positioned ^ ^ ^2 if entity @e[type=#lib:living,tag=N9.Target,distance=..4,limit=1] at @e[type=#lib:living,tag=N9.Target,distance=..4,limit=1] run function asset:sacred_treasure/0837.the_world_knife/trigger/knife_summon_execute

# 弾を召喚（敵がいる場合）
    execute anchored eyes positioned ^ ^ ^2 unless entity @e[type=#lib:living,tag=N9.Target,distance=..4,limit=1] positioned ^ ^ ^-2 run function asset:sacred_treasure/0837.the_world_knife/trigger/knife_summon_forward
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run playsound item.trident.throw player @a[distance=..20] ~ ~ ~ 1 1 1
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run playsound item.trident.throw player @a[distance=..20] ~ ~ ~ 1 1 1

# タグついたやつに鈍足
    effect give @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] slowness 2 50 true

# タグを消す
    tag @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] remove N9.Target

# Scheduleループ
    schedule function asset:sacred_treasure/0837.the_world_knife/trigger/4.tick 1t replace