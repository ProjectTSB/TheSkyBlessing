#> asset:sacred_treasure/0313.raging_fire_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0313.raging_fire_sword/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] at @s if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:flame ~ ~0.5 ~ 0 0.5 0 0.1 100
    playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 1 0.6

# ダメージ処理
    # ダメージ設定
        data modify storage lib: Argument.Damage set value 28
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