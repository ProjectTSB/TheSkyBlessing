#> asset:mob/0129.lexiel/tick/2.5.skill_sword_damage
#
#
#
# @within function asset:mob/0129.lexiel/tick/2.4.skill_sword

# 前方にいるプレイヤーにタグをつける
    execute positioned ^ ^ ^1.5 run tag @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] add 3L.SkillSwordDamageThis
    execute positioned ^ ^ ^3 run tag @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] add 3L.SkillSwordDamageThis
    execute positioned ^ ^ ^4.5 run tag @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] add 3L.SkillSwordDamageThis


# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 3.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 前方にいたプレイヤーにダメージ
    execute as @a[tag=3L.SkillSwordDamageThis] run function lib:damage/
# リセット
    data remove storage lib: Argument
    tag @a[tag=3L.SkillSwordDamageThis] remove 3L.SkillSwordDamageThis


    say @a[tag=3L.SkillSwordDamageThis]
