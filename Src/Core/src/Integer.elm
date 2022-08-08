module Integer
    ( int
    , negate
    , add
    , sub
    , mul
    , div
    , mod
    , rem
    , eq
    , ne
    , lt
    , le
    , gt
    , ge
    )

{-| Core of the int type.

# Arithmethics
@docs negate, add, sub, mul, div, mod, rem

# Equality
@docs eq, ne

# Comparison
@docs lt, le, gt, ge

-}

struct int

negate = fn(x: int) : int

add = fn(x: int, y: int) : int
sub = fn(x: int, y: int) : int
mul = fn(x: int, y: int) : int
div = fn(x: int, y: int) : int
mod = fn(x: int, y: int) : int
rem = fn(x: int, y: int) : int

eq = fn(x: int, y: int) : Bool
ne = fn(x: int, y: int) : Bool

lt = fn(x: int, y: int) : Bool
le = fn(x: int, y: int) : Bool
gt = fn(x: int, y: int) : Bool
ge = fn(x: int, y: int) : Bool
