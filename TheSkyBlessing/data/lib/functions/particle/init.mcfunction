#> lib:particle/init
#
#
#
# @within function lib:particle/

#> temp
# @private
    #declare tag Init

# OhMyDat呼び出し
    function oh_my_dat:please

# タグ付与
    tag @s add CustomParticle

# 基本的なデータを付与
    data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},background:0}

# ビルボード
    data modify entity @s billboard set from storage lib: Particle.Billboard

# スケール
    data modify entity @s transformation.scale[0] set from storage lib: Particle.Scale
    data modify entity @s transformation.scale[1] set from storage lib: Particle.Scale

# 角度
    data modify entity @s transformation.left_rotation set from storage lib: Particle.Rotation

# フレーム
    execute store result score @s ParticleFrame run data get storage lib: Particle.Frame

# カラー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Particle.Color set from storage lib: Particle.Color

# フォント
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Particle.Font set from storage lib: Particle.Font