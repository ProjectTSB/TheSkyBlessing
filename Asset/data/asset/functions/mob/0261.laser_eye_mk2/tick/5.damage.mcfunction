#> asset:mob/0261.laser_eye_mk2/tick/5.damage
#
# ダメージ与える所
#
# @within function
#   asset:mob/0261.laser_eye_mk2/tick/4.shoot

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    particle explosion ~ ~ ~ 0 0 0 0 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 18f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @p[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..20,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50,limit=1] remove LandingTarget