#> akarin_plus:_index.d
# @private

#>
# @public
    #declare storage _index.d:

#> Tag
# @internal
    #declare tag Crafted
    #declare tag Effect.InstantDamage
    #declare tag AkarinPlus.Have.MagnetRing
    #declare tag AkarinPlus.Have.ProofMining
    #declare tag AkarinPlus.Have.RFIIngot
    #declare tag AkarinPlus.Have.Empty
    #declare tag AkarinPlus.Have.ClosedThirdEye
    #declare tag AkarinPlus.Have.ThirdEye
    #declare tag AkarinPlus.Have.Totem
    #declare tag AkarinPlus.Have.AntiPK
    #declare tag RI.HomingArrow
    #declare tag RI.ExplosionArrow
    #declare tag this

#> Objective
# @internal
    #declare objective AkarinPlus.Temporary
    #declare objective AkarinPlus.Click.CarrotOnAStick
    #declare objective AkarinPlus.CoolTime
    #declare objective AkarinPlus.Combo
    #declare objective AkarinPlus.ComboTick
    #declare score_holder $HomingArrow.Speed

#> Storage
# @internal
    #declare storage akarin_plus:

#> Team
# @internal
    #declare team NoElement

#>
# @within function akarin_plus:break/*
    #declare score_holder $unbreaking
    #declare score_holder $efficiency
    #declare score_holder $grade