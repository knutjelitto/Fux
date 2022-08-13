{-| Core of the Integer (big integer) type.

# Arithmethics
@docs Negate, Add, Sub, Mul, Div, Mod, Rem

# Equality
@docs Equal, NotEqual

# Comparison
@docs LessThan, LessEqual, GreaterThan, GreaterEqual

# Conversion
@doce ImplicitFrom

-}

namespace Core.Integer

struct Integer

fn Negate(Integer x) : int

fn Add(Integer x, Integer y) : Integer
fn Sub(Integer x, Integer y) : Integer
fn Mul(Integer x, Integer y) : Integer
fn Div(Integer x, Integer y) : Integer
fn Mod(Integer x, Integer y) : Integer
fn Rem(Integer x, Integer y) : Integer

fn Equals(Integer x, Integer y) : bool
fn NotEquals(Integer x, Integer y) : bool

fn LessThan(x: Integer, y: Integer) : bool
fn LessEqual(x: Integer, y: Integer) : Bool
fn GreateThan(x: Integer, y: Integer) : Bool
fn GreateEqual(x: Integer, y: Integer) : Bool

fn ImplicitFrom(x : int): Integer
fn ImplicitFrom(x : string): Integer
