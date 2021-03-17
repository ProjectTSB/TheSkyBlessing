#> asset:sacred_treasure/0314.blasting_fire_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0314.blasting_fire_sword/2.check_condition
#> Private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] at @s if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:lava ~ ~ ~ 0 0 0 1 100
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] at @s if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["4W.Circle","Object"]}
    execute as @e[type=armor_stand,tag=4W.Circle] at @s run function asset:sacred_treasure/0314.blasting_fire_sword/3.1.particle
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 0

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~15の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $16 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 45
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run function lib:damage/

# リセット
    data remove storage lib: Argument
    scoreboard players reset $RandomDamage Temporary
    scoreboard players reset $Rotate Temporary