#> asset:mob/0175.queen_bee/tick/skill_needle/4.skill_needle_landing
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_needle/3.skill_needle_shot
# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 35.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..50,limit=1] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 毒を付与する
    effect give @a[gamemode=!spectator,tag=LandingTarget,distance=..50,limit=1] poison 6 2

# 着弾タグを消す
    tag @a[gamemode=!spectator,tag=LandingTarget,distance=..50,limit=1] remove LandingTarget