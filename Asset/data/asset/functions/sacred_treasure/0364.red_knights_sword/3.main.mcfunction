#> asset:sacred_treasure/0364.red_knights_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0364.red_knights_sword/2.check_condition
#> Private
# @private
    #declare score_holder $UseCount

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 残り回数が1回の時発動した場合
    execute store result score $UseCount Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute if score $UseCount Temporary matches 1 run function asset:sacred_treasure/0365.bloodthirsty_sword/_.give
    execute if score $UseCount Temporary matches 1 run tellraw @s {"text":"赤い騎士の剣は血を欲している","color":"dark_red","bold":true}
    scoreboard players reset $UseCount Temporary

# 演出
    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 1 1
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.03 100

# ダメージ設定
    # 与えるダメージ = 90
        data modify storage lib: Argument.Damage set value 90.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run function lib:damage/
# リセット
    data remove storage lib: Argument
