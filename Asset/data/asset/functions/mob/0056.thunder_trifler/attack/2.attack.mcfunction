#> asset:mob/0056.thunder_trifler/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0056.thunder_trifler/attack/1.trigger

# 演出
   particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 2.0 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @a[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument

# マナ減少
    scoreboard players set $Fluctuation Lib -8
    execute as @p[tag=Victim] run function lib:mp/fluctuation

# 弓から剣に切り替えた場合speedを得る
    effect give @s[predicate=asset:mob/0056.thunder_trifler/bow] speed 500 0 true
       # 弓から切り替えた瞬間にワープ
       tp @s[predicate=asset:mob/0056.thunder_trifler/bow] @a[tag=Victim,limit=1]

# 攻撃が当たった場合武器が弓なら剣に切替(挙動の関係上最後に配置)
    item replace entity @s[predicate=asset:mob/0056.thunder_trifler/bow] weapon.mainhand with golden_sword{Enchantments:[{}]}
