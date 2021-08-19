#> asset:mob/0055.hetukedah/tick/otetebeam/4.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:mob/0055.hetukedah/**


# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 1

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 13.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,tag=LandingTarget,distance=..50,limit=1] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[type=player,tag=LandingTarget,distance=..50,limit=1] remove LandingTarget