#> asset:mob/0022.red_knight/tick/skills/stab/2.targeting
#
# ターゲッティング
#
# @within function asset:mob/0022.red_knight/tick/skills/stab/1.tick

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 1.8
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2

# 浮遊
    data modify entity @s NoAI set value 1b

# 周囲のランダムなプレイヤーを対象に
    tag @r[distance=..80,limit=1] add M.TargetPlayer

# こっち向く
    execute facing entity @p[tag=M.TargetPlayer] feet run tp @s ~ ~ ~ ~ ~

# モデル変更
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20280}

# この行動をループしないように1だけ増やす
    scoreboard players add @s M.Tick 1

# 速度設定
    scoreboard players set @s M.Speed 4

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    execute at @p[tag=M.TargetPlayer] run summon marker ~ ~5 ~ {Tags:[M.TeleportMarker,M.MarkerInit]}

# リセット
    tag @e[type=marker,tag=M.TeleportMarker,tag=M.MarkerInit] remove M.MarkerInit

# プレイヤーのタグを外す
    tag @a[tag=M.TargetPlayer] remove M.TargetPlayer

# 行動中タグ付与
    tag @s add M.Move
    tag @s add M.TickLock