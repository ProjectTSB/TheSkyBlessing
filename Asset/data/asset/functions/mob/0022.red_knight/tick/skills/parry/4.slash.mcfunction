#> asset:mob/0022.red_knight/tick/skills/parry/4.slash
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/parry/1.tick

# パーティクル
    execute rotated ~ 0 rotated ~90 ~-15 positioned ~ ~1.5 ~ run function asset:mob/0022.red_knight/tick/skills/parry/5.particle
    execute rotated ~ 0 rotated ~90 ~15 positioned ~ ~1.5 ~ run function asset:mob/0022.red_knight/tick/skills/parry/5.particle

# 自身の耐性を解除
    effect clear @s resistance

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [15f,15f,-25f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-15f,0f,115f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~35 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20280}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20275}

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1.5 1.8
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 1

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第1属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第2属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function lib:damage/
# リセット

    function lib:damage/reset