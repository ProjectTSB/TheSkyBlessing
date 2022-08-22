#> asset:sacred_treasure/0769.shaking_splash/trigger/_index.d
# @private

#> tag
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/4.shoot
#   asset:sacred_treasure/0769.shaking_splash/trigger/rejoin_process
#   asset:sacred_treasure/0769.shaking_splash/trigger/bullet/loop
    #declare tag LD.Bullet

#>
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/4.shoot
    #declare tag LD.Already

#> Finding Owner
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/bullet/hit
#   asset:sacred_treasure/0769.shaking_splash/trigger/bullet/landing
    #declare tag LD.This

#> Beam
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/5.beam
#   asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive
    #declare tag LandingTarget
