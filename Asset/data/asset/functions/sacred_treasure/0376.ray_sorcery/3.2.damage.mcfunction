#> asset:sacred_treasure/0376.ray_sorcery/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0376.ray_sorcery/3.1.shoot

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 1

# ダメージ設定
    # 与えるダメージ = 100
        data modify storage lib: Argument.Damage set value 100.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @e[tag=LandingTarget] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget