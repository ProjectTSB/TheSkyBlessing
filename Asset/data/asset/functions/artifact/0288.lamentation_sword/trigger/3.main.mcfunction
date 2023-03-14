#> asset:artifact/0288.lamentation_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0288.lamentation_sword/trigger/2.check_condition
#> private
# @private
    #declare tag Hit

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.ghast.hurt player @a ~ ~ ~ 0.3 1.6
    playsound minecraft:entity.enderman.death player @a ~ ~ ~ 0.4 2
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:soul ~ ~1 ~ 0.1 0.1 0.1 0.02 10
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run effect give @s minecraft:weakness 10 0

# ダメージ設定
    # 与えるダメージ = 80
        data modify storage lib: Argument.Damage set value 80.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"

# ダメージ
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset