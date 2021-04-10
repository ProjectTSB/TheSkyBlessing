#> asset:sacred_treasure/0316.rapids_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0316.rapids_sword/2.check_condition
#> private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:block blue_ice ~ ~1 ~ 0.5 0.5 0.5 2 200
    playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.squid.squirt player @a ~ ~ ~ 1 1.3
    playsound minecraft:entity.player.swim ambient @a ~ ~ ~ 1 1.3
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~7の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $8 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 23
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run function lib:damage/

# リセット
    data remove storage lib: Argument
    scoreboard players reset $RandomDamage Temporary