#> asset:artifact/0373.ice_sorcery/trigger/3.4.hit
#
# ビーム部
#
# @within function asset:artifact/0373.ice_sorcery/trigger/**

# 演出
    particle minecraft:block ice ~ ~ ~ 0.2 0.2 0.2 1 100 force
    particle dust 0 0.733 1 1 ~ ~ ~ 0.3 0.3 0.3 0 50
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 1.3

# ダメージ設定
    # 与えるダメージ = 10
        data modify storage lib: Argument.Damage set value 100f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 水属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=AD.HitTarget,tag=!Uninterferable,distance=..50,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=AD.HitTarget,tag=!Uninterferable,distance=..50,limit=1] remove AD.HitTarget