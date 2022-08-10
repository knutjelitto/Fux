package Core module List

{-| Core of the List type.

# Type
@docs List, Cons, Nil

# Equality
@docs Equal, NotEqual

# Comparison
@docs lt, le, gt, ge

-}

enum List<a>
    Cons(a, List<a>)
    Nil

fn Equals(x: List, y: List) : Bool
fn NotEquals(x: List, y: List) : Bool

fn Map<a>(map: fn(a):b, list: List<a>): List<b>
    case list of
        Nil => Nil
        Cons(x, xs) => Cons(map(x), Map(xs))

fn FoldL<a, b>(combine: fn(a, b):b, seed: b, List<a> list): b
    case list of
        Nil => seed
        Cons(x, xs) => FoldL(combine, combine(x, seed), xs)

fn FoldR<a, b>(combine: fn(a, b):b, seed: b, List<a> list): b
    case list of
        Nil => seed
        Cons(x, xs) => combine(x, FoldR(combine, seed, xs)
