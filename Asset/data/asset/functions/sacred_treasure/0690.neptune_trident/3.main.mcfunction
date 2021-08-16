#> asset:sacred_treasure/0690.neptune_trident/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0690.neptune_trident/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

#　演出
    execute at @e[tag=Victim] run particle minecraft:splash ~ ~2 ~ 0.5 2 0.5 0 50 normal @a
    execute at @e[tag=Victim] run playsound entity.dolphin.splash master @a ~ ~ ~ 1 1 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument
