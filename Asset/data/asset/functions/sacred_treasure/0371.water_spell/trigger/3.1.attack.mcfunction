#> asset:sacred_treasure/0371.water_spell/trigger/3.1.attack
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0371.water_spell/trigger/3.main

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:rain ~ ~1 ~ 0.2 0.2 0.2 0 200
    playsound minecraft:entity.squid.death player @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.jump player @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1

# ダメージ
    # 与えるダメージ = 9
        data modify storage lib: Argument.Damage set value 9f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    execute as @a[tag=this] run function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..1,sort=nearest,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument