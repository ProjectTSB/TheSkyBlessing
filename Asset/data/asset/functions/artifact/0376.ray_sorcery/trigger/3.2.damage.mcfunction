#> asset:artifact/0376.ray_sorcery/trigger/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0376.ray_sorcery/trigger/3.1.shoot

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 0

# ダメージ設定
    # 与えるダメージ = 50
        data modify storage lib: Argument.Damage set value 300.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget