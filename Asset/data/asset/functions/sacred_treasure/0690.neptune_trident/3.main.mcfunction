#> asset:sacred_treasure/0690.neptune_trident/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0690.neptune_trident/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,tag=Victim] run particle minecraft:splash ~ ~2 ~ 0.5 2 0.5 0 50 normal @a
    execute at @e[type=#lib:living,tag=Victim] run playsound entity.dolphin.splash master @a ~ ~ ~ 1 1 0

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~35の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $26 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 55
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument
