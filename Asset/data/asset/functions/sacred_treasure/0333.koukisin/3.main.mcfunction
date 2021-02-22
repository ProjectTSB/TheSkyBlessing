#> asset:sacred_treasure/0333.koukisin/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0333.koukisin/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run particle minecraft:crit ~ ~1 ~ 0.2 0.8 0.2 0 80 normal @a[distance=..30]
    playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.8 2

# ダメージ
    # 与えるダメージ = 3
        data modify storage lib: Argument.Damage set value 3f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
     # パーティクルを無効化するか否か
        data modify storage lib: Argument.DisableParticle set value false
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10,limit=1] run function lib:damage/simple
# リセット
    data remove storage lib: Argument