#> asset:mob/0055.hetukedah/tick/4.skill1_otetebeam
#
# おててビーム！手からビームを発射する！！！
#
# @within function asset:mob/0055.hetukedah/tick/3.skill

#
    

# 弾を進めるための再起開始
    execute anchored eyes positioned ^1 ^ ^ run function asset:mob/0055.hetukedah/tick/otetebeam/4.1.shoot
    #execute anchored eyes positioned ^-1 ^ ^ run function asset:mob/0055.hetukedah/tick/otetebeam/4.1.shoot

# 演出
    #particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1.5 2

# タグを消す
    tag @s remove Landing
