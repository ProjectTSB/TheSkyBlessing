#> asset:mob/0022.red_knight/tick/skills/stab/6.finish
#
# 突き刺し
#
# @within function asset:mob/0022.red_knight/tick/skills/stab/1.tick

# ちょっと下がる
    execute align y positioned ~ ~-0.3 ~ run function asset:mob/0022.red_knight/tick/move/tp

# 体
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20281}

# 演出
    playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.hit_ground hostile @a ~ ~ ~ 2 1