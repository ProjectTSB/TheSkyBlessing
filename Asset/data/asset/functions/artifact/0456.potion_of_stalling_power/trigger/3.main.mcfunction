#> asset:artifact/0456.potion_of_stalling_power/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0456.potion_of_stalling_power/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 時間内にもう一度つかった愚か者へのダメージ
    # ダメージセット
        data modify storage lib: Argument.Damage set value 10.0f
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.FixedDamage set value true
    # ダメージを与える
        execute as @s[scores={CO.Tick=1..}] run function lib:damage/
    # リセット
        function lib:damage/reset

# 演出
    execute if entity @s[scores={CO.Tick=1..}] run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.03 100
    execute if entity @s[scores={CO.Tick=1..}] run playsound minecraft:entity.evoker.prepare_summon player @a

# 一回エフェクトを消す
    effect clear @s speed
    effect clear @s slowness
    effect clear @s[scores={CO.Tick=..400}] blindness

# セットする
    scoreboard players set @s CO.Tick 2400

# スタート
    schedule function asset:artifact/0456.potion_of_stalling_power/trigger/3.1.effect 1t