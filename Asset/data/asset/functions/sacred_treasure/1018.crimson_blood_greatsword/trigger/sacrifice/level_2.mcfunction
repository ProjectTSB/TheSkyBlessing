#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/level_2
#
# レベル2サクリファイス
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_sub

# 演出
    particle dust 0.894 0.196 0.196 1 ~ ~0.5 ~ 0.25 0.5 0.25 0 25
    particle dust 0.522 0.035 0.035 1 ~ ~0.5 ~ 0.25 0.5 0.25 0 25
    particle smoke ~ ~0.5 ~ 0.25 0.5 0.25 0.2 30
    particle minecraft:block redstone_wire ~ ~0.5 ~ 0.1 0.1 0.1 1 100
    playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 1 1.5

# ダメージを与える
    # 割合で減らす
        #function api:data_get/health
        #execute store result storage lib: Argument.Damage float 0.25 run data get storage api: Health
    # 固定値
        data modify storage lib: Argument.Damage set value 15.0f
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