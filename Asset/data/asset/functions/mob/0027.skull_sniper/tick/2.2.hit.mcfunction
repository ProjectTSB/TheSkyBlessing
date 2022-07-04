#> asset:mob/0027.skull_sniper/tick/2.2.hit
#
# Mobのtick時の処理
#
# @within function
#       asset:mob/0027.skull_sniper/tick/2.tick
#       asset:mob/0027.skull_sniper/tick/2.1.shot

# 着弾の演出
    playsound minecraft:entity.generic.explode hostile @a

# 演出
    execute at @p[tag=LandingTarget] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 99

# ダメージ設定
    # 与えるダメージ = 10
        data modify storage lib: Argument.Damage set value 15.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        execute as @p[gamemode=!creative,tag=LandingTarget] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget] remove LandingTarget


