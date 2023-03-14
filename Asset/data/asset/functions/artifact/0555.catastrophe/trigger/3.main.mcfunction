#> asset:artifact/0555.catastrophe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0555.catastrophe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く
    # 演出
        execute at @e[type=#lib:living,tag=Attacker,limit=1] run particle soul_fire_flame ~ ~0.5 ~ 0.4 0.6 0.4 0 100 force @a

    # ダメージ
        data modify storage lib: Argument set value {Damage:600,AttackType:Magic,ElementType:None,FixedDamage:false}
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Attacker,limit=1] run function lib:damage/

    # リセット
        function lib:damage/reset