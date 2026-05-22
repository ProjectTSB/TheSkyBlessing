#> player_motion:internal/math/main
# @within function player_motion:internal/launch/main

# full_power=sqrt(motion_x²+motion_y²+motion_z²)
    # Save sign of $motion_y
	execute store success score $negative_sine PlayerMotion.Internal.Math if score $motion_y PlayerMotion.Internal.Math matches ..-1

    # Normalize
        execute if score $motion_x PlayerMotion.Internal.Math matches ..-1 run scoreboard players operation $motion_x PlayerMotion.Internal.Math *= $-1 Const

        execute if score $motion_y PlayerMotion.Internal.Math matches ..-1 run scoreboard players operation $motion_y PlayerMotion.Internal.Math *= $-1 Const

        execute if score $motion_z PlayerMotion.Internal.Math matches ..-1 run scoreboard players operation $motion_z PlayerMotion.Internal.Math *= $-1 Const

    # Sets angle before exchange
        scoreboard players set $angle PlayerMotion.Internal.Math 0

        execute if score $motion_y PlayerMotion.Internal.Math matches 0 run scoreboard players set $angle PlayerMotion.Internal.Math 1

    # SuperSwordTW's method. Credit: https://github.com/SuperSwordTW/Distance-Trig-Calc-3d
        execute if score $motion_y PlayerMotion.Internal.Math matches 0 run scoreboard players operation $motion_y PlayerMotion.Internal.Math >< $motion_x PlayerMotion.Internal.Math

        execute if score $motion_y PlayerMotion.Internal.Math matches 0 run scoreboard players operation $motion_y PlayerMotion.Internal.Math >< $motion_z PlayerMotion.Internal.Math

        function player_motion:internal/math/full_power/trig

# n_full_exp=floor(full_power/0.865)
    scoreboard players operation $n_full_exp PlayerMotion.Internal.Math /= $8000 Const

# Change back the angle
    execute if score $angle PlayerMotion.Internal.Math matches 1 run data modify storage player_motion:math magnitude.angle set value 0

# eyelevel=y(eyes)-y(player)
    function player_motion:internal/math/eyelevel

# sub power operations
    # sub_power=floor(full_power%0.8)
        scoreboard players operation $sub_power PlayerMotion.Internal.Math %= $8000 Const

    # d12=1-sub_power
        scoreboard players set $d12 PlayerMotion.Internal.Math 10000
        scoreboard players operation $d12 PlayerMotion.Internal.Math -= $sub_power PlayerMotion.Internal.Math

    # Formula d=-(eyelevel*sinα + d12*12 * cos(arcsin(cosα*eyelevel/(d12*12))))

    # d12 = d12*12
    scoreboard players operation $d12 PlayerMotion.Internal.Math *= $12 Const

    # Obtain sinα and cosα
    function player_motion:internal/math/trig/sine with storage player_motion:math magnitude

    # cosα *= eyelevel, record cosα for later use
    scoreboard players operation $cosine PlayerMotion.Internal.Math *= $eyelevel PlayerMotion.Internal.Math
        scoreboard players operation $cosine1 PlayerMotion.Internal.Math = $cosine PlayerMotion.Internal.Math

    # cosα /= d12 = cosα*eyelevel / (d12*12)
    scoreboard players operation $cosine PlayerMotion.Internal.Math *= $10 Const

    scoreboard players operation $cosine PlayerMotion.Internal.Math /= $d12 PlayerMotion.Internal.Math

    # obtain cos(arcsin(cosα*eyelevel/(d12*12))))
    execute store result storage player_motion:math magnitude.quotient int 1 run scoreboard players get $cosine PlayerMotion.Internal.Math

    function player_motion:internal/math/trig/arcsine with storage player_motion:math magnitude

    # cos(arcsin(cosα*eyelevel/(d12)))) *= d12
    scoreboard players operation $d PlayerMotion.Internal.Math *= $d12 PlayerMotion.Internal.Math

    scoreboard players operation $d PlayerMotion.Internal.Math /= $1000 Const

    # sinα *= eyelevel, record sine for later use
    scoreboard players operation $sine PlayerMotion.Internal.Math *= $eyelevel PlayerMotion.Internal.Math

    scoreboard players operation $sine PlayerMotion.Internal.Math /= $10 Const

        scoreboard players operation $sine1 PlayerMotion.Internal.Math = $sine PlayerMotion.Internal.Math

    # d += sine
    execute store result storage player_motion:math d double -0.0001 run scoreboard players operation $d PlayerMotion.Internal.Math += $sine PlayerMotion.Internal.Math


# full power operations
    # d12=1-fpc(0.8) = 0.2
        scoreboard players set $d12 PlayerMotion.Internal.Math 2000

    #full_d = -(eyelevel*sinα + (d12*12)*cos(arcsin(cosα*eyelevel/(d12*12))))

    # d12 = d12*12
    scoreboard players operation $d12 PlayerMotion.Internal.Math *= $12 Const

    # cosine1 = cosα*eyelevel, cosine1 /= d12
    scoreboard players operation $cosine1 PlayerMotion.Internal.Math *= $10 Const

    scoreboard players operation $cosine1 PlayerMotion.Internal.Math /= $d12 PlayerMotion.Internal.Math

    # Obtain cos(arcsin(cosine1))
    execute store result storage player_motion:math magnitude.quotient int 1 run scoreboard players get $cosine1 PlayerMotion.Internal.Math

    function player_motion:internal/math/trig/arcsine with storage player_motion:math magnitude

    # cos(arcsin(cosα*eyelevel/(d12)))) *= d12
    scoreboard players operation $d PlayerMotion.Internal.Math *= $d12 PlayerMotion.Internal.Math
    scoreboard players operation $d PlayerMotion.Internal.Math /= $1000 Const

    # d += sine1
    execute store result storage player_motion:math full_d double -0.0001 run scoreboard players operation $d PlayerMotion.Internal.Math += $sine1 PlayerMotion.Internal.Math
