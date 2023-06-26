#> asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/tick

# 演出
    playsound ogg:item.trident.thunder2 hostile @a ~ ~ ~ 1 1.5
    particle flash ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]

# 周りのブロックも蒸発させる
    fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air destroy

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 9999
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 全てを...消し飛ばす
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡ログ
        data modify storage lib: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの絶望の光球によって消し飛ばされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ(厳密な紐づけじゃないけど許して)
        execute as @e[type=zombie,scores={MobID=46},distance=..100,limit=1] run function lib:damage/modifier
        execute as @a[gamemode=!creative,distance=..2.5] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s