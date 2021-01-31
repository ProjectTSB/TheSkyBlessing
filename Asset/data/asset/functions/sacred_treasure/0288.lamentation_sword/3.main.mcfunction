#> asset:sacred_treasure/0288.lamentation_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0288.lamentation_sword/2.check_condition
#> private
# @private
    #declare tag Hit

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 攻撃与えたモブにタグ付与
execute as @e[type=#lib:living,tag=HurtEntity,distance=..100] run tag @s add Hit

# 演出
    execute at @s run playsound minecraft:entity.ghast.hurt ambient @a ~ ~ ~ 0.3 1.6
    execute at @s run playsound minecraft:entity.enderman.death ambient @a ~ ~ ~ 0.4 2
    execute at @e[type=#lib:living,type=!player,tag=Hit,distance=..5,limit=1] run particle minecraft:soul ~ ~1 ~ 0.1 0.1 0.1 0.02 10
    effect give @e[type=#lib:living,type=!player,tag=Hit,distance=..5,limit=1] minecraft:weakness 10 0

# ダメージ設定
    # 与えるダメージ = 8
        data modify storage lib: Argument.Damage set value 8.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # パーティクルを無効化するか否か
        data modify storage lib: Argument.DisableParticle set value false
    # 防御力/防具強度を無視するか否か
        data modify storage lib: Argument.BypassArmor set value false
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value false
# ダメージ
    execute at @s as @e[type=#lib:living,type=!player,tag=Hit,distance=..5,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# タグ消去
    tag @e[type=#lib:living,tag=Hit,distance=..100,limit=1] remove Hit