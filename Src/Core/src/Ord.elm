package Core module Ord

{-| Core of the Orderable type.

# Type
@docs Orderable, LT, EQ, GT

# Equality
@docs equals, notEquals

# Comparison
@docs lt, le, gt, ge

-}

enum Order
    Less
    Equal
    Greater

fn Compare<a, b = a>(x: a, y: b) : Order

fn LessThan<a, b = a>(x: a, y: b) : bool
    Compare(x, y) == Less

fn LessEqual<a, b = a(x: a, y: b) : bool
    case Compare(x, y) of
        Less => true
        Equal => true
        _ => false

fn GreaterThan<a, b = a>(x: a, y: b) : bool
    Compare(x, y) == Greater

fn GreaterEqual<a, b = a>(x: a, y: b) : bool
    case Compare(x, y) of
        Greater => true
        Equal => true
        _ => false

