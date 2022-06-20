#> asset:sacred_treasure/0981.soufire_shoot/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0981.soufire_shoot/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    #playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.5

# デカい火の玉を放つ
    execute anchored eyes run summon armor_stand ^ ^ ^1 {Small:1b,Invisible:1b,Marker:1b,Tags:["R9.BigFireball","R9.Init","Friend","Projectile"]}

# 火の玉にInit処理
    execute as @e[type=armor_stand,tag=R9.Init,distance=..3] run function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/1.init

# 火の玉を動かすShcheduleループ開始
    schedule function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/2.tick 1t
