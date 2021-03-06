#> asset:sacred_treasure/0231.pain_sharing_shield/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0231.pain_sharing_shield/2.check_condition

#> private
# @private
    #declare tag PainShareTarget

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/offhand

# ここから先は神器側の効果の処理を書く
    # 処理
        # heal //固定だからmodifier無し
            data modify storage lib: Argument set value {Heal:4.0}
            function lib:heal/

        # damage //貫通だからmodifier無し
            data modify storage lib: Argument set value {Damage:4.0,AttackType:Physical,BypassResist:1b}
            execute as @a[tag=PainShareTarget,distance=..30] run function lib:damage/

    # リセット
        data remove storage lib: Argument
        tag @a[tag=PainShareTarget,distance=..30] remove PainShareTarget