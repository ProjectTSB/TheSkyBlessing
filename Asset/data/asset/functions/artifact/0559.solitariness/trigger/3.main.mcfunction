#> asset:artifact/0559.solitariness/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0559.solitariness/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く
    # 演出
        execute at @e[type=#lib:living,tag=Victim] run particle end_rod ~ ~0.5 ~ 0.3 0.5 0.3 0 50 force @a
    # 効果
        # ノックバック
            data modify storage lib: Argument.VectorMagnitude set value 1
            execute as @e[type=#lib:living,tag=Victim] at @s facing entity @a[tag=this] feet rotated ~180 -15 run function lib:motion/
            data remove storage lib: Argument
        # Damage
            data modify storage lib: Argument set value {Damage:60,AttackType:Physical,ElementType:None}
            function lib:damage/modifier
            execute as @e[type=#lib:living,tag=Victim] run function lib:damage/

    # リセット
        function lib:damage/reset