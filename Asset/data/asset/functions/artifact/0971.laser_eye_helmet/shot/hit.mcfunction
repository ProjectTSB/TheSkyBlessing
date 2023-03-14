#> asset:artifact/0971.laser_eye_helmet/shot/hit
#
#
# @within function
#    asset:artifact/0971.laser_eye_helmet/shot/3.main
#    asset:artifact/0971.laser_eye_helmet/shot/bullet


# ここから先は神器側の効果の処理を書く

# 一定の距離から距離減衰するための距離(適正距離をメートル*2で指定)
    scoreboard players set $Appropriate_Distance Temporary 10
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 20

# ダメージ設定
    # ダメージ
        scoreboard players add $Damage Temporary 50
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Water"
    # もし、適正距離じゃなかった場合、距離-適正距離=減少ダメージにする
        execute if score $Distance_Damping Temporary >= $Appropriate_Distance Temporary run function asset:artifact/0971.laser_eye_helmet/shot/damage_attenuation
    # ダメージ量確定
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $Damage Temporary
    # ダメージ
        function lib:damage/modifier
        execute as @e[tag=LandingTarget] run function lib:damage/
# リセット
    function lib:damage/reset


# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget