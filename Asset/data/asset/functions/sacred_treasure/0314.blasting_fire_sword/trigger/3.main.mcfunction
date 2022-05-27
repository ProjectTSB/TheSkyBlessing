#> asset:sacred_treasure/0314.blasting_fire_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0314.blasting_fire_sword/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:lava ~ ~ ~ 0 0 0 1 20
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.5

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~40の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $41 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 280
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    scoreboard players reset $Rotate Temporary