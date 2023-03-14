#> asset:artifact/0079.shoot_down_a_flying_dragon/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0079.shoot_down_a_flying_dragon/trigger/2.check_condition

#> private
# @private
    #declare tag Hit
    #declare score_holder $Weather
    #declare score_holder $AroundWater
    #declare score_holder $AttackStrength

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

    # 準備
        #天候を取得
            execute if predicate lib:weather/is_sunny run scoreboard players set $Weather Temporary 0
            execute if predicate lib:weather/is_raining run scoreboard players set $Weather Temporary 1
            execute if predicate lib:weather/is_thundering run scoreboard players set $Weather Temporary 2
        # 周囲の水の数を取得
            execute store result score $AroundWater Temporary run clone ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 ~-0.5 ~-0.5 ~-0.5 filtered water force

    # 対象を設定
        # 前提として近い1体はHit確定
            tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] add Hit

        # 自身が水の近くにいた場合($AroundWater=1..)、「r=..10にいる、周囲に水がある敵」も対象となる
        # //要するに自分も相手も水の近くにいたら範囲攻撃！！
            # MobのTemporaryはMob周囲の水の数に設定(ちょっと広めに判定をとる)
                execute if score $AroundWater Temporary matches 1.. as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..10] at @s store result score @s Temporary run clone ~-1 ~-0.5 ~-1 ~1 ~0.5 ~1 ~-1 ~-0.5 ~-1 filtered water force
            # as Mob：@s のTemporaryが1..ならHitする
                execute if score $AroundWater Temporary matches 1.. as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..10] if score @s Temporary matches 1.. run tag @s add Hit
            # プレイヤーへの誤Hit処理 HitしたMobの0.05m以内にいると自分にもあたる やっぱPKしたいじゃぁん？
                execute at @e[type=#lib:living,type=!player,tag=Hit,distance=..10] as @a[distance=..0.05] run tag @s add Hit


    # ダメージを設定
        # 演算
            # 天候の値を加算
                scoreboard players operation $AttackStrength Temporary += $Weather Temporary
            # 水の中にいる場合さらに1段階増加
                execute if score $AroundWater Temporary matches 1.. run scoreboard players add $AttackStrength Temporary 1

        # 引数初期化
            data modify storage lib: Argument set value {AttackType:Magic,ElementType:Thunder,BypassArmor:0b,FixedDamage:0b}

        # //ここ時点で$AttackStrengthは0..3をとる
        # AttackStrengthに従ってダメージを設定
            execute if score $AttackStrength Temporary matches 0 run data modify storage lib: Argument.Damage set value 160.0f
            execute if score $AttackStrength Temporary matches 1 run data modify storage lib: Argument.Damage set value 180.0f
            execute if score $AttackStrength Temporary matches 2 run data modify storage lib: Argument.Damage set value 220.0f
            execute if score $AttackStrength Temporary matches 3 run data modify storage lib: Argument.Damage set value 270.0f
        # 属性なのでModifierを実行
            function lib:damage/modifier

    # 演出
        # Particle
            execute at @e[type=#lib:living,type=!player,tag=Hit,distance=..10] run particle enchanted_hit ~ ~2 ~ 0.02 5 0.02 0 75 force @a
            execute if score $AttackStrength Temporary matches 0 at @e[type=#lib:living,tag=Hit,distance=..10] run particle dust 0.941 1 0.11 0.5 ~ ~2 ~ 0.02 5 0.02 0 150 force @a
            execute if score $AttackStrength Temporary matches 1 at @e[type=#lib:living,tag=Hit,distance=..10] run particle dust 1 0.69 0.11 0.5 ~ ~2 ~ 0.02 5 0.02 0 150 force @a
            execute if score $AttackStrength Temporary matches 2 at @e[type=#lib:living,tag=Hit,distance=..10] run particle dust 1 0.176 0.176 0.5 ~ ~2 ~ 0.02 5 0.02 0 150 force @a
            execute if score $AttackStrength Temporary matches 3 at @e[type=#lib:living,tag=Hit,distance=..10] run particle dust 0.929 0.137 1 0.5 ~ ~2 ~ 0.02 5 0.02 0 150 force @a
        # Sound
            execute at @e[type=#lib:living,tag=Hit,distance=..10] run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 10 2
            execute at @e[type=#lib:living,tag=Hit,distance=..10] run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 10 2
            execute at @e[type=#lib:living,tag=Hit,distance=..10] run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 10 2

    # 効果
        # 通常Hit処理
            execute as @e[type=#lib:living,tag=Hit,distance=..10] run function lib:damage/
            effect clear @e[type=#lib:living,tag=Hit,distance=..10,limit=1] levitation

    # リセット
        tag @e[type=#lib:living,type=!player,tag=Hit,distance=..10] remove Hit
        scoreboard players reset @e[type=#lib:living,tag=!Uninterferable,distance=..10] Temporary
        scoreboard players reset $Weather Temporary
        scoreboard players reset $AroundWater Temporary
        scoreboard players reset $AttackStrength Temporary
        function lib:damage/reset