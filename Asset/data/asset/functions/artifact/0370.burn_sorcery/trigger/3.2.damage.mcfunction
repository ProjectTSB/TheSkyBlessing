#> asset:artifact/0370.burn_sorcery/trigger/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0370.burn_sorcery/trigger/3.1.shoot

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:lava ~ ~ ~ 0 2 0 1 100
    execute rotated 0 0 run function asset:artifact/0370.burn_sorcery/trigger/particle.2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 0

# ダメージ設定
    # 与えるダメージ = 50
        data modify storage lib: Argument.Damage set value 360.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget