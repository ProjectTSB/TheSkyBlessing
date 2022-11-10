#> asset:mob/0022.red_knight/tick/skills/stab/6.finish
#
# 突き刺し
#
# @within function asset:mob/0022.red_knight/tick/skills/stab/1.tick

# ちょっと下がる
    execute align y positioned ~ ~-0.3 ~ run function asset:mob/0022.red_knight/tick/move/tp

# 体
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20281}

# 演出
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 0.7
    particle explosion_emitter ~ ~0.5 ~ 0 0 0 0 0 force @a[distance=..20]
    particle dust 1 0.616 0 2 ~ ~1 ~ 2 1 2 0 50
    particle dust 1 0.416 0 2 ~ ~1 ~ 2 1 2 0 50

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 45.0f
    # 第1属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第2属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function lib:damage/
# リセット
    function lib:damage/reset