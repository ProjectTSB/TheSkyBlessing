#> asset:sacred_treasure/0672.aurora_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0672.aurora_blade/trigger/2.check_condition

#> Private
# @private function asset:sacred_treasure/0672.aurora_blade/trigger/**
    #declare score_holder $RandomDamage
    #declare score_holder $CalcRandom

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ^ ^1.2 ^0.6 rotated ~ ~-4 run function asset:sacred_treasure/0672.aurora_blade/trigger/4.sweeping_particle
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.4 1 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~300の追加ダメージ
            scoreboard players set $CalcRandom Temporary 301
            scoreboard players operation $RandomDamage Temporary %= $CalcRandom Temporary
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 150
    #ダメージセット 天使なら1.5倍
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
        execute if entity @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable,distance=..6] store result storage lib: Argument.Damage float 1.5 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"

# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $CalcRandom Temporary
    scoreboard players reset $RandomDamage Temporary