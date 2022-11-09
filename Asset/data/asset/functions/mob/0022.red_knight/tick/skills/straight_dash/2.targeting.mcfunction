#> asset:mob/0022.red_knight/tick/skills/straight_dash/2.targeting
#
# 最寄りのやつを狙う
#
# @within function asset:mob/0022.red_knight/tick/skills/straight_dash/1.tick

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 1.8
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2

# 浮遊
    data modify entity @s NoAI set value 1b

# こっち向く
    execute facing entity @p[distance=..80] feet run tp @s ~ ~ ~ ~ ~

# モデル変更
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20280}

# この行動をループしないように1だけ増やす
    scoreboard players add @s M.Tick 1

# 速度設定
    scoreboard players set @s M.Speed 4

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    execute at @p[distance=..80] run summon marker ~ ~ ~ {Tags:[M.TeleportMarker,M.MarkerInit]}

# リセット
    tag @e[type=marker,tag=M.TeleportMarker,tag=M.MarkerInit] remove M.MarkerInit

# 行動中タグ付与
    tag @s add M.Move
    tag @s add M.TickLock