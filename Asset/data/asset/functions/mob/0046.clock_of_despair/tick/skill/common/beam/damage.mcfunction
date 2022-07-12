#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/beam/loop


# ダメージ設定
    # 与えるダメージ = 10
        data modify storage lib: Argument.Damage set value 20
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 死亡ログ
        data modify storage lib: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの光線により身を焼かれて息絶えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ(厳密な紐づけじゃないけど許して)
        execute as @e[type=zombie,scores={MobID=46},distance=..100,limit=1] run function lib:damage/modifier
        execute as @p[gamemode=!creative,tag=LandingTarget] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget] remove LandingTarget