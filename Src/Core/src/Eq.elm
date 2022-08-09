package Core module Eq

{-| Core of the List type.

# Type
@docs List, Cons, Nil

# Equality
@docs eq, ne

# Comparison
@docs lt, le, gt, ge

-}

fn Equal<a, b = a>(x : a, y : b) : bool

fn NotEqual<a, b = a>(x : a, y : b) bool
    not Equal(x, y))
