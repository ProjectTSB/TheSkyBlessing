#> asset:mob/0022.red_knight/tick/skills/parry/1.tick
#
# 初見殺し感あふれるパリィ
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# 剣を構え、しばらくの間カウンター待機
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/parry/2.windup

# パーティクル
    execute if score @s M.Tick matches 0..20 run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0 5 force @a[distance=..20]


# ダメージでカウンター
    execute if score @s[nbt=!{HurtTime:0s}] M.Tick matches 0..20 run function asset:mob/0022.red_knight/tick/skills/parry/3.active_counter

# 一定時間でオート振り抜き
    execute if score @s M.Tick matches 20 run function asset:mob/0022.red_knight/tick/skills/parry/3.slash

# リセット
    execute if score @s M.Tick matches 40.. run function asset:mob/0022.red_knight/tick/reset