#> asset:mob/0284.lexiel/tick/skill/melee/3.slash
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/melee/1.melee

# 攻撃モーション
    item replace entity @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20292}
    data modify entity @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [342f,217f,0f]
    data modify entity @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [326f,0f,324f]
    execute as @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-80 ~

# 前方にいるプレイヤーにタグをつける
    execute positioned ^ ^ ^1.5 run tag @a[gamemode=!spectator,gamemode=!creative,distance=..1.5] add 7W.SkillSwordDamageThis
    execute positioned ^ ^ ^3 run tag @a[gamemode=!spectator,gamemode=!creative,distance=..1.5] add 7W.SkillSwordDamageThis

# 演出
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^3 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^4 0 0 0 1 2 normal
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 28.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 前方にいたプレイヤーにダメージ
    execute as @a[tag=7W.SkillSwordDamageThis] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=7W.SkillSwordDamageThis] remove 7W.SkillSwordDamageThis

# 前方にテレポート
    execute positioned ^ ^ ^4 run function asset:mob/0284.lexiel/tick/move/tereport