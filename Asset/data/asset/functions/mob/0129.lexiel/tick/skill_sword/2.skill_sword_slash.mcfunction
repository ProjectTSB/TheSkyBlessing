#> asset:mob/0129.lexiel/tick/skill_sword/2.skill_sword_slash
#
# 剣の攻撃判定
#
# @within function asset:mob/0129.lexiel/tick/skill_sword/1.skill_sword

# 攻撃モーション
    item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20040}
    data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [342f,217f,0f]
    data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [326f,0f,324f]

# 前方にいるプレイヤーにタグをつける
    execute positioned ^ ^ ^1.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 3L.SkillSwordDamageThis
    execute positioned ^ ^ ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 3L.SkillSwordDamageThis
    execute positioned ^ ^ ^4.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 3L.SkillSwordDamageThis
    execute positioned ^ ^ ^6 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 3L.SkillSwordDamageThis
    execute positioned ^ ^ ^7.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 3L.SkillSwordDamageThis

# 演出
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^3 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^4 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^5 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^6 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^7 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^8 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^9 0 0 0 1 2 normal
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
    execute as @a[tag=3L.SkillSwordDamageThis] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=3L.SkillSwordDamageThis] remove 3L.SkillSwordDamageThis

# 前方にテレポート
    # アマスタにタグを付与
        tag @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3L.ArmorStandThis
    # ワープ
        tp @s ^ ^ ^9
    # アマスタを持ってきてタグを消す
        tp @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] @s
        tag @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] remove 3L.ArmorStandThis
