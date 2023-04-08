#> asset:artifact/0105.secret_meat/trigger/dead_effect
#
#
#
# @within function asset:artifact/0105.secret_meat/trigger/3.main
#> private
# @private
    #declare score_holder $Random
# ダメージ
    # 最大体力の8割
        execute store result storage lib: Argument.Damage float 0.4 run attribute @s minecraft:generic.max_health get 1
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは食べてはらない物を食べてしまった。","with":[{"selector":"@s"}]}]']
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージを与える
        function lib:damage/

# 目玉を召喚する場合に使うやつ
    data modify storage api: Argument.ID set value 21
# MP0にする場合
    scoreboard players set $Fluctuation Lib 80

# 悪い効果
    effect give @s slowness 20 1
    effect give @s mining_fatigue 20 1
    effect give @s weakness 20 1

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const
# 悪い効果目玉を吐き出す
    execute if score $Random Temporary matches 0 anchored eyes positioned ^-0.25 ^ ^ run function api:mob/summon
    execute if score $Random Temporary matches 0 run tellraw @s {"text":"う、産まれるっ......！","bold":true}
# MPが0になり発狂
    execute if score $Random Temporary matches 1 run function lib:mp/set
    execute if score $Random Temporary matches 1 run tellraw @s {"text":"正気を保てない...！","bold":true}
# プレイヤーをパニック状態にする
    execute if score $Random Temporary matches 1 run tag @s add 2X.Panic
    execute if score $Random Temporary matches 1 run scoreboard players set @s 2X.PanicTime 50
    execute if score $Random Temporary matches 1 run schedule function asset:artifact/0105.secret_meat/trigger/panic/schedule 1t
# 内蔵が飛び出す（ダメージ二倍）
    execute if score $Random Temporary matches 2 run function lib:damage/
    execute if score $Random Temporary matches 2 run tellraw @s {"text":"な、内蔵が飛び出た...！","bold":true}

# リセット
    scoreboard players reset $Random Temporary