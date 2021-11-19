#> asset:mob/0139.blast_eye/tick/2.1.2.boom
#
# 爆発時の処理
#
# @within function asset:mob/0139.blast_eye/tick/2.1.active_tick

# まずタイマーリセット
    scoreboard players set @s 3v.Time 0

# 自爆しないように
    data modify entity @s ActiveEffects append value {Id:11b,Amplifier:4b,Duration:5,ShowParticles:0b}

# 爆破 (天空からtpでクリーパーを完全に見えなくする)
    summon creeper ~ 512 ~ {Tags:["Uninterferable","3v.Y512Bomb"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,AbsorptionAmount:1024f,Health:1024f,powered:0b,ExplosionRadius:3b,Fuse:0s,ignited:1b,CustomName:'{"text":"ブラストアイ"}',Attributes:[{Name:"generic.max_health",Base:1024d},{Name:"generic.follow_range",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.armor",Base:30d}]}
    tp @e[type=creeper,tag=3v.Y512Bomb,distance=0..1,y=512] ~ ~ ~
    tag @e[type=creeper,tag=3v.Y512Bomb,distance=0..1] remove 3v.Y512Bomb

