#> asset:artifact/0105.secret_meat/trigger/bad_effect
#
#
#
# @within function asset:artifact/0105.secret_meat/trigger/3.main
#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $15 Const
# ダメージランダム
    scoreboard players add $Random Temporary 1
    execute store result storage lib: Argument.Damage float 1 run scoreboard players get $Random Temporary
# リセット
    scoreboard players reset $Random Temporary
# ダメージ
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value true
    # 補正はする
        # data modify storage lib: Argument.FixedDamage set value false
    # 死亡メッセージ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは食べてはらない物を食べてしまった。","with":[{"selector":"@s"}]}]']
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージを与える
        function lib:damage/

# 演出
    tellraw @s {"text":"うっ...変な感じだ","bold":true}

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# 悪い効果
    execute if score $Random Temporary matches 0 run effect give @s slowness 90 1
    execute if score $Random Temporary matches 1 run effect give @s mining_fatigue 90 1
    execute if score $Random Temporary matches 2 run effect give @s weakness 90 1
    execute if score $Random Temporary matches 3 run effect give @s blindness 90 1
# リセット
    scoreboard players reset $Random Temporary