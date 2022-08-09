module Float
    ( float
    , negate
    , add
    , sub
    , mul
    , div
    , eq
    , ne
    , lt
    , le
    , gt
    , ge
    )

{-| Core of the float type.

# Arithmethics
@docs negate, add, sub, mul, div

# Equality
@docs eq, ne

# Comparison
@docs lt, le, gt, ge

-}

struct float

negate = fn(x: float) : float

add = fn(x: float, y: float) : float
sub = fn(x: float, y: float) : float
mul = fn(x: float, y: float) : float
div = fn(x: float, y: float) : float

eq = fn(x: float, y: float) : Bool
ne = fn(x: float, y: float) : Bool

lt = fn(x: float, y: float) : Bool
le = fn(x: float, y: float) : Bool
gt = fn(x: float, y: float) : Bool
ge = fn(x: float, y: float) : Bool
