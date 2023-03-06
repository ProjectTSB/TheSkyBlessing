#> asset:artifact/0312.fire_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0312.fire_sword/trigger/2.check_condition
#> private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10

    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1.5

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~10の追加ダメージ
          scoreboard players operation $RandomDamage Temporary %= $11 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 40
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