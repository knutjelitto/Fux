package Core module Orderable api

{-| Core of the Orderable type.

# Type
@docs Orderable, LT, EQ, GT

# Equality
@docs equals, notEquals

# Comparison
@docs lt, le, gt, ge

-}

enum Order
    LT
    EQ
    GT

equals = fn(x: List, y: List) : Bool
notEquals = fn(x: List, y: List) : Bool
