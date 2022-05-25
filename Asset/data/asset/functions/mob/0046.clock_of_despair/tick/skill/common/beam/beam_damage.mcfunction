#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_loop


# ダメージ設定
    # 与えるダメージ = 10
        data modify storage lib: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ(厳密な紐づけじゃないけど許して)
        execute as @e[type=zombie,scores={MobID=46},distance=..100,limit=1] run function lib:damage/modifier
        execute as @p[gamemode=!creative,tag=LandingTarget] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @p[tag=LandingTarget] remove LandingTarget