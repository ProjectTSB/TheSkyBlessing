#> asset:mob/0022.red_knight/tick/skills/hyper_explosion/7.finish
#
# 画面も真っ白になるようなでっかい爆発
#
# @within function asset:mob/0022.red_knight/tick/skills/hyper_explosion/1.tick

# ちょっと下がる
    execute align y positioned ~ ~-0.3 ~ run function asset:mob/0022.red_knight/tick/move/tp

# 体
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20281}

# 画面エフェクト
    title @a[distance=..50] times 5 8 10
    title @a[distance=..50] title {"text":"","font":"screen_effect","color":"#E8E8E8"}

# でっかいでっかいパーティクル
    execute positioned ~-16 ~-8 ~-16 run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/7.finish_particle

# 演出 音は普通に音量を上げるとやかましいので、範囲内のヤツに対して直接鳴らす
    execute at @a[distance=..40] run playsound minecraft:entity.wither.ambient hostile @p ~ ~ ~ 1 1.5
    execute at @a[distance=..40] run playsound minecraft:entity.generic.explode hostile @p ~ ~ ~ 1 0.8
    execute at @a[distance=..40] run playsound minecraft:entity.generic.explode hostile @p ~ ~ ~ 1 1
    execute at @a[distance=..40] run playsound minecraft:entity.generic.explode hostile @p ~ ~ ~ 1 1.2
    execute at @a[distance=..40] run playsound minecraft:item.trident.thunder hostile @p ~ ~ ~ 1 1.5
    particle explosion_emitter ~ ~0.5 ~ 10 0 10 0 20 force @a[distance=..30]
    particle dust 0.5 0 0 2 ~ ~5 ~ 10 10 10 0 200
    particle dust 0.8 0 0 2 ~ ~5 ~ 10 10 10 0 200

# 判定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 1000.0f
    # 第1属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第2属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function lib:damage/

# リセット
    function lib:damage/reset