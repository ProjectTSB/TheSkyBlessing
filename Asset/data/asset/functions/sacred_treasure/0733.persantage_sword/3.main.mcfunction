#> asset:sacred_treasure/0733.persantage_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0733.persantage_sword/2.check_condition

#> Private
# @private
    #declare score_holder $KD.DamageValue

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 0.8 1 0
    playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.75 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run particle sweep_attack ~ ~1.2 ~ 0 0 0 1 1 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run particle minecraft:dust_color_transition 0 0 0.3 1 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 100 normal @a

# 3割の割合追加ダメージまでの処理
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
    data modify storage lib: Argument.BypassResist set value 1b
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] store result storage lib: Argument.Damage float 0.030 run attribute @s generic.max_health get 10

# ダメージ量が51以上の場合強制的にダメージを50に
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] store result score $KD.DamageValue Temporary run data get storage lib: Argument.Damage 1.0
    execute if score $KD.DamageValue Temporary matches 51.. run data modify storage lib: Argument.Damage set value 50.0f

# Mobが死んだときにエラー吐くのでそれ防止
    data modify storage lib: Argument.Damage set value 1.0

# ダメージ
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/

# 色々リセット
    data remove storage lib: Argument
    scoreboard players reset $KD.DamageValue Temporary