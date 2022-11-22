#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/level_3
#
# レベル3サクリファイス
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_sub

# 演出
    particle dust 0.894 0.196 0.196 1.3 ~ ~0.5 ~ 0.25 0.5 0.25 0 10
    particle dust 0.522 0.035 0.035 1.5 ~ ~0.5 ~ 0.25 0.5 0.25 0 10
    particle large_smoke ~ ~0.5 ~ 0.25 0.5 0.25 0 10
    particle flame ~ ~0.5 ~ 0.25 0.5 0.25 0.1 25
    particle minecraft:block redstone_wire ~ ~0.5 ~ 0.1 0.1 0.1 1 100
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 1 1.5


# 自身の現在体力の25%分のダメージを与える
    # ダメージ量
        function api:data_get/health
        execute store result storage lib: Argument.Damage float 0.25 run data get storage api: Health
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは赤い騎士の剣に呑まれた。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset