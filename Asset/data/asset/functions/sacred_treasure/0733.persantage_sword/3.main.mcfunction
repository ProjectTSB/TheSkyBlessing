#> asset:sacred_treasure/0733.persantage_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0733.persantage_sword/2.check_condition
    #declare score_holder $KD.MaxHP

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 0.8 1 0
    playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.75 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..5] run particle sweep_attack ~ ~1.2 ~ 0 0 0 1 1 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..5] run particle minecraft:dust_color_transition 0 0 1 1 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 40 normal @a

# 3割の割合追加ダメージまでの処理
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.Fixed set value 1b
    data modify storage lib: Argument.BypassResist set value 1b
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..5] store result storage lib: Argument.Damage float 0.030 run attribute @s generic.max_health get 10

# 相手の最大体力が200(×0.3で最大ダメージの60)以上の場合ダメージを強制で75に
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..5] store result score $KD.MaxHP Temporary run attribute @s generic.max_health get 1.0
    execute if score $KD.MaxHP Temporary matches 201.. run data modify storage lib: Argument.Damage set value 75.0f

# ダメージ
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..5] run function lib:damage/

# 色々リセット
    data remove storage lib: Argument
    scoreboard players reset $KD.MaxHP Temporary