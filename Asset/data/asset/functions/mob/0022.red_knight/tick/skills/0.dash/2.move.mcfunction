#> asset:mob/0022.red_knight/tick/skills/0.dash/2.move
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/0.dash/1.tick

# 演出
    #playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 1.8
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2

# モデル変更
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20277}

# この行動をループしないように1だけ増やす
    scoreboard players add @s M.Tick 1

# 速度設定
    scoreboard players set @s M.Speed 4

# 拡散の設定
    execute if block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[10d,10d],[3d,3d],[10d,10d]]
    execute unless block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,6d],[10d,10d]]

# テレポート
    execute if entity @p[distance=..100] at @r run function asset:mob/0022.red_knight/tick/move/teleport/place_marker