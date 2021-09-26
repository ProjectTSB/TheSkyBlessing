#> asset:mob/0129.lexiel/tick/2.9.skill_magic_damage
#
# ダメージ処理
#
# @within function asset:mob/0129.lexiel/tick/2.8.skill_magic_bullet

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 1

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,gamemode=!creative,tag=LandingTarget,distance=..50,limit=1] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[type=player,tag=LandingTarget,distance=..50,limit=1] remove LandingTarget