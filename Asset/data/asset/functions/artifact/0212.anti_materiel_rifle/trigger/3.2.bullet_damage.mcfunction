#> asset:artifact/0212.anti_materiel_rifle/trigger/3.2.bullet_damage
#
# 神器のメイン処理部
#
# @within
#   function asset:artifact/0212.anti_materiel_rifle/trigger/3.1.bullet

# 着弾の演出
    particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 10
    playsound minecraft:entity.generic.explode player @a

# ブロック破壊
    execute unless block ^ ^ ^0.5 #lib:no_collision unless block ^ ^ ^0.5 #lib:unbreakable if entity @s[gamemode=!adventure] run setblock ^ ^ ^0.5 air destroy
    # アドベンチャー用(仕様決まるまでちょっと保留で)
        #execute unless block ^ ^ ^0.5 #lib:no_collision if block ^ ^ ^0.5 spawner if entity @s[gamemode=adventure] run setblock ^ ^ ^0.5 air destroy

# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 99

# ダメージ設定
    # 与えるダメージ = 1500
        data modify storage lib: Argument.Damage set value 1500.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        execute as @e[tag=LandingTarget] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget