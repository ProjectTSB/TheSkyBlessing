#> lib:particle/tick
#
#
#
# @within function core:tick/

# Tick数をストレージに
    scoreboard players add @s ParticleTick 1
    execute store result storage lib: Particle.Tick int 1 run scoreboard players get @s ParticleTick

# フレーム減らす
    scoreboard players remove @s ParticleFrame 1
    kill @s[scores={ParticleFrame=0}]

# OMDからストレージに移す
    data modify storage lib: Particle.Color set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Particle.Color
    data modify storage lib: Particle.Font set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Particle.Font

# マクロ
    function lib:particle/macro with storage lib: Particle

# リセット
    data remove storage lib: Particle

