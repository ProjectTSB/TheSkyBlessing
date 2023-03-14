#> asset:artifact/0122.lunatic_lay/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0122.lunatic_lay/trigger/2.check_condition
#> private
# @private
    #declare tag Hit

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 対象選択
        tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5,sort=random,limit=1] add Hit
    # 演出
        execute at @e[type=#lib:living,type=!player,tag=Hit,distance=..5,limit=1] run particle crit ~ ~3 ~ 0.025 3 0.025 0 100 normal @a
        playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    # ダメージ
        data merge storage lib: {Argument:{Damage:165.0f,AttackType:Magic,ElementType:Thunder}}
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Hit,distance=..5,limit=1] run function lib:damage/
    # リセット
        function lib:damage/reset
        tag @e[type=#lib:living,type=!player,tag=Hit,distance=..5,limit=1] remove Hit