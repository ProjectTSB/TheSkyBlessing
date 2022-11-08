#> asset:mob/0022.red_knight/tick/skills/parry/1.tick
#
# 無敵状態になり、攻撃に反応して反撃してくる
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# 剣を構え、しばらくの間カウンター待機
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/parry/2.windup

# パーティクル
    execute if score @s M.Tick matches 0..20 run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0 5 force @a[distance=..20]

# ダメージを受けたら即座に発動
    execute if score @s[nbt={HurtTime:9s}] M.Tick matches 0..20 run function asset:mob/0022.red_knight/tick/skills/parry/3.active_counter

# 一定時間で勝手に発動する
    execute if score @s M.Tick matches 20 run function asset:mob/0022.red_knight/tick/skills/parry/4.slash

# フェイズ2、追撃カウントが溜まってたらリセット代わりに斬撃コンボに移行
    execute if score @s[scores={M.Phase=2..,M.AdditionCount=3..}] M.Tick matches 30 run function asset:mob/0022.red_knight/tick/skills/parry/addition_attack

# リセット
    execute if score @s M.Tick matches 60.. run function asset:mob/0022.red_knight/tick/reset