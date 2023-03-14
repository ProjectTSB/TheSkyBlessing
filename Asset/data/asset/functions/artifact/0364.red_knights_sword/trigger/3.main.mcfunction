#> asset:artifact/0364.red_knights_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0364.red_knights_sword/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $UseCount

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 365
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id
    execute unless data storage asset:context Items.mainhand.id run tellraw @s {"text":"赤い騎士の剣は血を欲している","color":"dark_red","bold":true}

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2


# ほしい範囲に剰余算
    execute store result score $Random Temporary run function lib:random/
# 疑似乱数取得
    scoreboard players operation $Random Temporary %= $3 Const
# メッセージ出力
    execute if score $Random Temporary matches 0 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/trigger/particle/particle_1
    execute if score $Random Temporary matches 1 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/trigger/particle/particle_2
    execute if score $Random Temporary matches 2 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/trigger/particle/particle_3
# リセット
    scoreboard players reset $Random Temporary


# ダメージ設定
    # 与えるダメージ = 900
        data modify storage lib: Argument.Damage set value 900f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/

# 自身に5の防御貫通ダメージを与える
    # ダメージ量
        data modify storage lib: Argument.Damage set value 5.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは赤い騎士の剣に呑まれた。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function lib:damage/modifier_continuation
        execute as @s[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset