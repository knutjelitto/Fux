package Core module Integer

{-| Core of the int type.

# Arithmethics
@docs negate, add, sub, mul, div, mod, rem

# Equality
@docs eq, ne

# Comparison
@docs lt, le, gt, ge

-}

struct int

fn Negate(int x) : int

fn Add(int x, int y) : int
fn Sub(int x, int y) : int
fn Mul(int x, int y) : int
fn Div(int x, int y) : int
fn Mod(int x, int y) : int
fn Rem(int x, int y) : int

fn Equals(int x, int y) : bool
fn NotEquals(int x, int y) : bool

fn LessThan(x: int, y: int) : bool
fn LessEqual(x: int, y: int) : Bool
fn GreateThan(x: int, y: int) : Bool
fn GreateEqual(x: int, y: int) : Bool
