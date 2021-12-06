#> asset:sacred_treasure/0317.sea_storm_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0317.sea_storm_sword/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run function asset:sacred_treasure/0317.sea_storm_sword/trigger/3.1.particle
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 50
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:block water ~ ~2.4 ~ 0.4 1.4 0.4 0 300
    playsound minecraft:entity.dolphin.jump player @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1
    playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.5 1.2
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~15の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $16 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 45
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/

# リセット
    data remove storage lib: Argument
    scoreboard players reset $RandomDamage Temporary
    scoreboard players reset $Rotate Temporary