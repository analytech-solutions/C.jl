

Base.Enums.basetype(::Type{CE}) where {CE<:Cenum} = Base.Enums.basetype(bitstype(CE))

Base.Enums.namemap(ce::Cenum) = Base.Enums.namemap(typeof(ce))
function Base.Enums.namemap(::Type{CE}) where {CE<:Cenum}
	result = ()
	for (n, v) in values(bitstype(CE))
		result = (result..., (n, v))
	end
	return result
end



(::Type{CE})(val::Integer = 0) where {CE<:Cenum} = Core.Intrinsics.bitcast(bitstype(CE), convert(Base.Enums.basetype(CE), val))::CE
(::Type{T})(ce::CE) where {T<:Integer, CE<:Cenum} = convert(T, Core.Intrinsics.bitcast(Base.Enums.basetype(CE), ce))::T

Base.sizeof(::Type{CE}) where {CE<:Cenum} = invoke(sizeof, Tuple{Any}, bitstype(CE))
Base.zero(::Type{CE}) where {CE<:Cenum} = CE()

Base.convert(::Type{CE}, val::Integer) where {CE<:Cenum} = CE(val)
Base.convert(::Type{T}, ce::CE) where {CE<:Cenum, T<:Integer} = T(ce)

Base.promote_rule(::Type{T}, ::Type{CE}) where {T<:Integer, CE<:Cenum} = promote_type(T, Base.Enums.basetype(CE))
Base.:(~)(ce::CE) where {CE<:Cenum} = ~convert(Base.Enums.basetype(CE), ce)
for op in (:+, :-, :&, :|, :xor, :(==))
	@eval begin
		Base.$(op)(x::CE, y::CE) where {CE<:Cenum} = ($op)(Core.Intrinsics.bitcast(Base.Enums.basetype(CE), x), Core.Intrinsics.bitcast(Base.Enums.basetype(CE), y))
		Base.$(op)(x::CE, y::T) where {CE<:Cenum, T<:Integer} = ($op)(promote_type(T, CE)(x), promote_type(T, CE)(y))
		Base.$(op)(x::T, y::CE) where {T<:Integer, CE<:Cenum} = ($op)(promote_type(T, CE)(x), promote_type(T, CE)(y))
	end
end


function Base.typemin(::Type{CE}) where {CE<:Cenum}
	x = nothing
	for (n, v) in Base.Enums.namemap(CE)
		x = x === nothing || v < x ? v : x
	end
	return x === nothing ? CE() : CE(x)
end

function Base.typemax(::Type{CE}) where {CE<:Cenum}
	x = nothing
	for (n, v) in Base.Enums.namemap(CE)
		x = x === nothing || v >= x ? v : x
	end
	return x === nothing ? CE() : CE(x)
end

function Base.instances(::Type{CE}) where {CE<:Cenum}
	result = ()
	for (n, v) in Base.Enums.namemap(CE)
		result = (result..., CE(v))
	end
	return result
end

function Base.Symbol(ce::Cenum)
	for (n, v) in Base.Enums.namemap(ce)
		typeof(v)(ce) == v && return n::Symbol
	end
	error("Value of $(typeof(ce)) is not one of $(join(map(first, Base.Enums.namemap(ce)), ", "))")
end


function Base.show(io::IO, x::Cenum)
    sym = Symbol(x)
    if !get(io, :compact, false)
        from = get(io, :module, Main)
        def = typeof(x).name.module
        if from === nothing || !Base.isvisible(sym, def, from)
            show(io, def)
            print(io, ".")
        end
    end
    print(io, sym)
end

function Base.show(io::IO, ::MIME"text/plain", x::Cenum)
    print(io, x, "::")
    show(IOContext(io, :compact => true), typeof(x))
    print(io, " = ")
    show(io, Integer(x))
end

function Base.show(io::IO, m::MIME"text/plain", t::Type{<:Cenum})
    if isconcretetype(t)
        print(io, "Cenum ")
        Base.show_datatype(io, t)
        print(io, ":")
        for x in instances(t)
            print(io, "\n", Symbol(x), " = ")
            show(io, Integer(x))
        end
    else
        invoke(show, Tuple{IO, MIME"text/plain", Type}, io, m, t)
    end
end



