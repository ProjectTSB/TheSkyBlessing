#> asset:sacred_treasure/1027.kyrie/trigger/6.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/1027.kyrie/trigger/5.shoot

# ここから先は神器側の効果の処理を書く

# 演出

# ダメージ設定
    # 与えるダメージ = 580
        data modify storage lib: Argument.Damage set value 580.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        execute as @a if score @s UserID = @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0},sort=nearest,limit=1] SH.UserID run function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget