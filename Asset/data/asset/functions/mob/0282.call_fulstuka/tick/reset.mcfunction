#> asset:mob/0282.call_fulstuka/tick/reset
#
#
#
# @within function asset:mob/0282.call_fulstuka/tick/**

# 腕を戻す
    data modify entity @s Pose.LeftArm set value [0f,0f,340f]
    data modify entity @s Pose.RightArm set value [0f,0f,20f]
# アイテムも戻す
    item replace entity @s weapon.mainhand with stick{CustomModelData:20194}
    item replace entity @s weapon.offhand with stick{CustomModelData:20196}
    item replace entity @s armor.head with stick{CustomModelData:20190}

# スキル消す
    tag @s remove 7U.SkillGun
    tag @s remove 7U.SkillMelee

# スコアを戻す
    scoreboard players set @s 7U.Tick -10