#> asset:mob/0216.gray_guardian/tick/2.skill_bow/4.hit
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot

# 着弾の演出
    playsound minecraft:entity.generic.explode hostile @a

# 演出
    execute at @p[tag=LandingTarget] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 99

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        execute as @p[tag=LandingTarget,tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget] remove LandingTarget