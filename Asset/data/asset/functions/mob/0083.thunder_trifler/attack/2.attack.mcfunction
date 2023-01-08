#> asset:mob/0083.thunder_trifler/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0083.thunder_trifler/attack/1.trigger

# 演出
   particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 2.0 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 34.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって翻弄され、感電により心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの不意な電撃により、生命を終えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim,distance=..50] run function lib:damage/
# リセット
    function lib:damage/reset

# マナ減少
    scoreboard players set $Fluctuation Lib -15
    execute as @p[tag=Victim,distance=..50] run function lib:mp/fluctuation

# 弓から剣に切り替えた場合speedを得る
    execute if entity @s[tag=!2B.Sword] run effect give @s speed 500 0 true
       # 弓から切り替えた瞬間にワープ
       execute if entity @s[tag=!2B.Sword] run tp @s @p[tag=Victim,distance=..32]

# 攻撃が当たった場合武器が弓なら剣に切替(挙動の関係上最後に配置)
    execute if entity @s[tag=!2B.Sword] run item replace entity @s weapon.mainhand with golden_sword{Enchantments:[{}]}

# 剣Tag付与
    execute if entity @s[tag=!2B.Sword] run tag @s add 2B.Sword