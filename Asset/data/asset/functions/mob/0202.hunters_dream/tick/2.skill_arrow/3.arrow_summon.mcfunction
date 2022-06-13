#> asset:mob/0202.hunters_dream/tick/2.skill_arrow/3.arrow_summon
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/2.skill_arrow/1.skill_arrow

#> private
# @private
    #declare tag 5M.ArrowThis

# 演出
    playsound entity.arrow.shoot hostile @a ~ ~ ~ 1 1
# 矢を召喚する
    summon arrow ~ ~1.5 ~ {damage:4d,Color:9115647,Tags:["5M.ArrowThis"]}

# 矢を飛ばす
# 数値
    data modify storage lib: Argument.VectorMagnitude set value 1.5
# 飛ぶ方向
    execute as @e[tag=5M.ArrowThis,distance=..2,sort=nearest,limit=1] rotated as @e[type=skeleton,tag=this,distance=..5,limit=1] rotated ~-10 ~ run function lib:motion/
# リセット
    data remove storage lib: Argument

# タグを消す
    tag @e[tag=5M.ArrowThis,distance=..2] remove 5M.ArrowThis