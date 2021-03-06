begin
    const basedir = "$(C.dirname(C.dirname(C.libclang_path())))"
    const incdir = "$(basedir)/include"
    const libdir = "$(basedir)/$(if Sys.iswindows()
    "bin"
else
    "lib"
end)"
    const libpath = Symbol("$(libdir)/libclang")
    const var"c\"time_t\"" = Nothing
    const var"c\"size_t\"" = UInt64
    begin
        begin
            C.include_dependency("$(incdir)/clang-c/CXString.h")
        end
        begin
            C.include_dependency("$(incdir)/clang-c/CXErrorCode.h")
        end
        begin
            C.include_dependency("$(incdir)/clang-c/Documentation.h")
        end
        begin
            C.include_dependency("$(incdir)/clang-c/Index.h")
        end
        begin
            abstract type var"c\"CXString\"" <: Cstruct end
            const CXString = var"c\"CXString\""
            export var"c\"CXString\""
            export CXString
            var"c\"CXString\""
        end
        begin
            struct var"(c\"CXString\")" <: var"c\"CXString\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXString\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXString\")"}) = begin
                    C.Tuple{C.Tuple{:data, C.Tuple{C.Cptr{C.Cconst{C.Cvoid}}, C.bitstype(C.Cptr{C.Cconst{C.Cvoid}}), C.integraltype(C.Cptr{C.Cconst{C.Cvoid}}), 0, 0, -1}}, C.Tuple{:private_flags, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXString\")"}) = begin
                    var"(c\"CXString\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXString\""}) = begin
                    var"(c\"CXString\")"
                end
            const CXString = var"c\"CXString\""
            export var"c\"CXString\"", var"(c\"CXString\")"
            export CXString
            var"c\"CXString\""
        end
        begin
        end
        begin
            abstract type var"c\"CXStringSet\"" <: Cstruct end
            const CXStringSet = var"c\"CXStringSet\""
            export var"c\"CXStringSet\""
            export CXStringSet
            var"c\"CXStringSet\""
        end
        begin
            struct var"(c\"CXStringSet\")" <: var"c\"CXStringSet\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXStringSet\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXStringSet\")"}) = begin
                    C.Tuple{C.Tuple{:Strings, C.Tuple{C.Cptr{var"c\"CXString\""}, C.bitstype(C.Cptr{var"c\"CXString\""}), C.integraltype(C.Cptr{var"c\"CXString\""}), 0, 0, -1}}, C.Tuple{:Count, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXStringSet\")"}) = begin
                    var"(c\"CXStringSet\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXStringSet\""}) = begin
                    var"(c\"CXStringSet\")"
                end
            const CXStringSet = var"c\"CXStringSet\""
            export var"c\"CXStringSet\"", var"(c\"CXStringSet\")"
            export CXStringSet
            var"c\"CXStringSet\""
        end
        begin
        end
        begin
            const var"c\"clang_getCString\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{C.Cchar}}, C.Tuple{var"c\"CXString\""}, :cdecl}, libpath, :clang_getCString}()
            (func::C.typeof(var"c\"clang_getCString\""))(var"c\"string\"") = begin
                    C.funccall(func, var"c\"string\"")
                end
            const clang_getCString = var"c\"clang_getCString\""
            export var"c\"clang_getCString\""
            export clang_getCString
            var"c\"clang_getCString\""
        end
        begin
            const var"c\"clang_disposeString\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXString\""}, :cdecl}, libpath, :clang_disposeString}()
            (func::C.typeof(var"c\"clang_disposeString\""))(var"c\"string\"") = begin
                    C.funccall(func, var"c\"string\"")
                end
            const clang_disposeString = var"c\"clang_disposeString\""
            export var"c\"clang_disposeString\""
            export clang_disposeString
            var"c\"clang_disposeString\""
        end
        begin
            const var"c\"clang_disposeStringSet\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{var"c\"CXStringSet\""}}, :cdecl}, libpath, :clang_disposeStringSet}()
            (func::C.typeof(var"c\"clang_disposeStringSet\""))(var"c\"set\"") = begin
                    C.funccall(func, var"c\"set\"")
                end
            const clang_disposeStringSet = var"c\"clang_disposeStringSet\""
            export var"c\"clang_disposeStringSet\""
            export clang_disposeStringSet
            var"c\"clang_disposeStringSet\""
        end
        begin
            abstract type var"c\"enum CXErrorCode\"" <: Cenum end
            const CXErrorCode = var"c\"enum CXErrorCode\""
            export var"c\"enum CXErrorCode\""
            export CXErrorCode
            var"c\"enum CXErrorCode\""
        end
        begin
            primitive type var"(c\"enum CXErrorCode\")" <: var"c\"enum CXErrorCode\"" 32 end
            (::(Type){var"(c\"enum CXErrorCode\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXErrorCode\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXErrorCode\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXError_Success\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXError_Failure\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXError_Crashed\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXError_InvalidArguments\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXError_ASTReadError\""), 0x0000000000000004}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXErrorCode\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXErrorCode\")"}) = begin
                    var"(c\"enum CXErrorCode\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXErrorCode\""}) = begin
                    var"(c\"enum CXErrorCode\")"
                end
            const var"c\"CXError_Success\"" = var"(c\"enum CXErrorCode\")"(0x0000000000000000)
            const var"c\"CXError_Failure\"" = var"(c\"enum CXErrorCode\")"(0x0000000000000001)
            const var"c\"CXError_Crashed\"" = var"(c\"enum CXErrorCode\")"(0x0000000000000002)
            const var"c\"CXError_InvalidArguments\"" = var"(c\"enum CXErrorCode\")"(0x0000000000000003)
            const var"c\"CXError_ASTReadError\"" = var"(c\"enum CXErrorCode\")"(0x0000000000000004)
            const CXErrorCode = var"c\"enum CXErrorCode\""
            const CXError_Success = var"c\"CXError_Success\""
            const CXError_Failure = var"c\"CXError_Failure\""
            const CXError_Crashed = var"c\"CXError_Crashed\""
            const CXError_InvalidArguments = var"c\"CXError_InvalidArguments\""
            const CXError_ASTReadError = var"c\"CXError_ASTReadError\""
            export var"c\"enum CXErrorCode\"", var"(c\"enum CXErrorCode\")", var"c\"CXError_Success\"", var"c\"CXError_Failure\"", var"c\"CXError_Crashed\"", var"c\"CXError_InvalidArguments\"", var"c\"CXError_ASTReadError\""
            export CXErrorCode, CXError_Success, CXError_Failure, CXError_Crashed, CXError_InvalidArguments, CXError_ASTReadError
            var"c\"enum CXErrorCode\""
        end
        begin
            const var"c\"CXIndex\"" = C.Cptr{C.Cvoid}
            const CXIndex = var"c\"CXIndex\""
            export var"c\"CXIndex\""
            export CXIndex
            var"c\"CXIndex\""
        end
        begin
            abstract type var"c\"struct CXTargetInfoImpl\"" <: Cstruct end
            const CXTargetInfoImpl = var"c\"struct CXTargetInfoImpl\""
            export var"c\"struct CXTargetInfoImpl\""
            export CXTargetInfoImpl
            var"c\"struct CXTargetInfoImpl\""
        end
        begin
            const var"c\"CXTargetInfo\"" = C.Cptr{var"c\"struct CXTargetInfoImpl\""}
            const CXTargetInfo = var"c\"CXTargetInfo\""
            export var"c\"CXTargetInfo\""
            export CXTargetInfo
            var"c\"CXTargetInfo\""
        end
        begin
            abstract type var"c\"struct CXTranslationUnitImpl\"" <: Cstruct end
            const CXTranslationUnitImpl = var"c\"struct CXTranslationUnitImpl\""
            export var"c\"struct CXTranslationUnitImpl\""
            export CXTranslationUnitImpl
            var"c\"struct CXTranslationUnitImpl\""
        end
        begin
            const var"c\"CXTranslationUnit\"" = C.Cptr{var"c\"struct CXTranslationUnitImpl\""}
            const CXTranslationUnit = var"c\"CXTranslationUnit\""
            export var"c\"CXTranslationUnit\""
            export CXTranslationUnit
            var"c\"CXTranslationUnit\""
        end
        begin
            const var"c\"CXClientData\"" = C.Cptr{C.Cvoid}
            const CXClientData = var"c\"CXClientData\""
            export var"c\"CXClientData\""
            export CXClientData
            var"c\"CXClientData\""
        end
        begin
            abstract type var"c\"struct CXUnsavedFile\"" <: Cstruct end
            const CXUnsavedFile = var"c\"struct CXUnsavedFile\""
            export var"c\"struct CXUnsavedFile\""
            export CXUnsavedFile
            var"c\"struct CXUnsavedFile\""
        end
        begin
            struct var"(c\"struct CXUnsavedFile\")" <: var"c\"struct CXUnsavedFile\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"struct CXUnsavedFile\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"struct CXUnsavedFile\")"}) = begin
                    C.Tuple{C.Tuple{:Filename, C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.bitstype(C.Cptr{C.Cconst{C.Cchar}}), C.integraltype(C.Cptr{C.Cconst{C.Cchar}}), 0, 0, -1}}, C.Tuple{:Contents, C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.bitstype(C.Cptr{C.Cconst{C.Cchar}}), C.integraltype(C.Cptr{C.Cconst{C.Cchar}}), 8, 0, -1}}, C.Tuple{:Length, C.Tuple{C.Culong, C.bitstype(C.Culong), C.integraltype(C.Culong), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"struct CXUnsavedFile\")"}) = begin
                    var"(c\"struct CXUnsavedFile\")"
                end
            (C.C).bitstype(::C.Type{var"c\"struct CXUnsavedFile\""}) = begin
                    var"(c\"struct CXUnsavedFile\")"
                end
            const CXUnsavedFile = var"c\"struct CXUnsavedFile\""
            export var"c\"struct CXUnsavedFile\"", var"(c\"struct CXUnsavedFile\")"
            export CXUnsavedFile
            var"c\"struct CXUnsavedFile\""
        end
        begin
            abstract type var"c\"enum CXAvailabilityKind\"" <: Cenum end
            const CXAvailabilityKind = var"c\"enum CXAvailabilityKind\""
            export var"c\"enum CXAvailabilityKind\""
            export CXAvailabilityKind
            var"c\"enum CXAvailabilityKind\""
        end
        begin
            primitive type var"(c\"enum CXAvailabilityKind\")" <: var"c\"enum CXAvailabilityKind\"" 32 end
            (::(Type){var"(c\"enum CXAvailabilityKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXAvailabilityKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXAvailabilityKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXAvailability_Available\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXAvailability_Deprecated\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXAvailability_NotAvailable\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXAvailability_NotAccessible\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXAvailabilityKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXAvailabilityKind\")"}) = begin
                    var"(c\"enum CXAvailabilityKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXAvailabilityKind\""}) = begin
                    var"(c\"enum CXAvailabilityKind\")"
                end
            const var"c\"CXAvailability_Available\"" = var"(c\"enum CXAvailabilityKind\")"(0x0000000000000000)
            const var"c\"CXAvailability_Deprecated\"" = var"(c\"enum CXAvailabilityKind\")"(0x0000000000000001)
            const var"c\"CXAvailability_NotAvailable\"" = var"(c\"enum CXAvailabilityKind\")"(0x0000000000000002)
            const var"c\"CXAvailability_NotAccessible\"" = var"(c\"enum CXAvailabilityKind\")"(0x0000000000000003)
            const CXAvailabilityKind = var"c\"enum CXAvailabilityKind\""
            const CXAvailability_Available = var"c\"CXAvailability_Available\""
            const CXAvailability_Deprecated = var"c\"CXAvailability_Deprecated\""
            const CXAvailability_NotAvailable = var"c\"CXAvailability_NotAvailable\""
            const CXAvailability_NotAccessible = var"c\"CXAvailability_NotAccessible\""
            export var"c\"enum CXAvailabilityKind\"", var"(c\"enum CXAvailabilityKind\")", var"c\"CXAvailability_Available\"", var"c\"CXAvailability_Deprecated\"", var"c\"CXAvailability_NotAvailable\"", var"c\"CXAvailability_NotAccessible\""
            export CXAvailabilityKind, CXAvailability_Available, CXAvailability_Deprecated, CXAvailability_NotAvailable, CXAvailability_NotAccessible
            var"c\"enum CXAvailabilityKind\""
        end
        begin
            abstract type var"c\"struct CXVersion\"" <: Cstruct end
            const CXVersion = var"c\"struct CXVersion\""
            export var"c\"struct CXVersion\""
            export CXVersion
            var"c\"struct CXVersion\""
        end
        begin
            struct var"(c\"struct CXVersion\")" <: var"c\"struct CXVersion\""
                mem::C.NTuple{12, C.UInt8}
                var"(c\"struct CXVersion\")"(::C.UndefInitializer, mem::C.NTuple{12, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"struct CXVersion\")"}) = begin
                    C.Tuple{C.Tuple{:Major, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 0, 0, -1}}, C.Tuple{:Minor, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 4, 0, -1}}, C.Tuple{:Subminor, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"struct CXVersion\")"}) = begin
                    var"(c\"struct CXVersion\")"
                end
            (C.C).bitstype(::C.Type{var"c\"struct CXVersion\""}) = begin
                    var"(c\"struct CXVersion\")"
                end
            const CXVersion = var"c\"struct CXVersion\""
            export var"c\"struct CXVersion\"", var"(c\"struct CXVersion\")"
            export CXVersion
            var"c\"struct CXVersion\""
        end
        begin
            const var"c\"CXVersion\"" = var"c\"struct CXVersion\""
            const CXVersion = var"c\"CXVersion\""
            export var"c\"CXVersion\""
            export CXVersion
            var"c\"CXVersion\""
        end
        begin
            abstract type var"c\"enum CXCursor_ExceptionSpecificationKind\"" <: Cenum end
            const CXCursor_ExceptionSpecificationKind = var"c\"enum CXCursor_ExceptionSpecificationKind\""
            export var"c\"enum CXCursor_ExceptionSpecificationKind\""
            export CXCursor_ExceptionSpecificationKind
            var"c\"enum CXCursor_ExceptionSpecificationKind\""
        end
        begin
            primitive type var"(c\"enum CXCursor_ExceptionSpecificationKind\")" <: var"c\"enum CXCursor_ExceptionSpecificationKind\"" 32 end
            (::(Type){var"(c\"enum CXCursor_ExceptionSpecificationKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCursor_ExceptionSpecificationKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCursor_ExceptionSpecificationKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_DynamicNone\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_Dynamic\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_MSAny\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_BasicNoexcept\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_ComputedNoexcept\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_Unevaluated\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_Uninstantiated\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_Unparsed\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXCursor_ExceptionSpecificationKind_NoThrow\""), 0x0000000000000009}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCursor_ExceptionSpecificationKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCursor_ExceptionSpecificationKind\")"}) = begin
                    var"(c\"enum CXCursor_ExceptionSpecificationKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCursor_ExceptionSpecificationKind\""}) = begin
                    var"(c\"enum CXCursor_ExceptionSpecificationKind\")"
                end
            const var"c\"CXCursor_ExceptionSpecificationKind_None\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000000)
            const var"c\"CXCursor_ExceptionSpecificationKind_DynamicNone\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000001)
            const var"c\"CXCursor_ExceptionSpecificationKind_Dynamic\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000002)
            const var"c\"CXCursor_ExceptionSpecificationKind_MSAny\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000003)
            const var"c\"CXCursor_ExceptionSpecificationKind_BasicNoexcept\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000004)
            const var"c\"CXCursor_ExceptionSpecificationKind_ComputedNoexcept\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000005)
            const var"c\"CXCursor_ExceptionSpecificationKind_Unevaluated\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000006)
            const var"c\"CXCursor_ExceptionSpecificationKind_Uninstantiated\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000007)
            const var"c\"CXCursor_ExceptionSpecificationKind_Unparsed\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000008)
            const var"c\"CXCursor_ExceptionSpecificationKind_NoThrow\"" = var"(c\"enum CXCursor_ExceptionSpecificationKind\")"(0x0000000000000009)
            const CXCursor_ExceptionSpecificationKind = var"c\"enum CXCursor_ExceptionSpecificationKind\""
            const CXCursor_ExceptionSpecificationKind_None = var"c\"CXCursor_ExceptionSpecificationKind_None\""
            const CXCursor_ExceptionSpecificationKind_DynamicNone = var"c\"CXCursor_ExceptionSpecificationKind_DynamicNone\""
            const CXCursor_ExceptionSpecificationKind_Dynamic = var"c\"CXCursor_ExceptionSpecificationKind_Dynamic\""
            const CXCursor_ExceptionSpecificationKind_MSAny = var"c\"CXCursor_ExceptionSpecificationKind_MSAny\""
            const CXCursor_ExceptionSpecificationKind_BasicNoexcept = var"c\"CXCursor_ExceptionSpecificationKind_BasicNoexcept\""
            const CXCursor_ExceptionSpecificationKind_ComputedNoexcept = var"c\"CXCursor_ExceptionSpecificationKind_ComputedNoexcept\""
            const CXCursor_ExceptionSpecificationKind_Unevaluated = var"c\"CXCursor_ExceptionSpecificationKind_Unevaluated\""
            const CXCursor_ExceptionSpecificationKind_Uninstantiated = var"c\"CXCursor_ExceptionSpecificationKind_Uninstantiated\""
            const CXCursor_ExceptionSpecificationKind_Unparsed = var"c\"CXCursor_ExceptionSpecificationKind_Unparsed\""
            const CXCursor_ExceptionSpecificationKind_NoThrow = var"c\"CXCursor_ExceptionSpecificationKind_NoThrow\""
            export var"c\"enum CXCursor_ExceptionSpecificationKind\"", var"(c\"enum CXCursor_ExceptionSpecificationKind\")", var"c\"CXCursor_ExceptionSpecificationKind_None\"", var"c\"CXCursor_ExceptionSpecificationKind_DynamicNone\"", var"c\"CXCursor_ExceptionSpecificationKind_Dynamic\"", var"c\"CXCursor_ExceptionSpecificationKind_MSAny\"", var"c\"CXCursor_ExceptionSpecificationKind_BasicNoexcept\"", var"c\"CXCursor_ExceptionSpecificationKind_ComputedNoexcept\"", var"c\"CXCursor_ExceptionSpecificationKind_Unevaluated\"", var"c\"CXCursor_ExceptionSpecificationKind_Uninstantiated\"", var"c\"CXCursor_ExceptionSpecificationKind_Unparsed\"", var"c\"CXCursor_ExceptionSpecificationKind_NoThrow\""
            export CXCursor_ExceptionSpecificationKind, CXCursor_ExceptionSpecificationKind_None, CXCursor_ExceptionSpecificationKind_DynamicNone, CXCursor_ExceptionSpecificationKind_Dynamic, CXCursor_ExceptionSpecificationKind_MSAny, CXCursor_ExceptionSpecificationKind_BasicNoexcept, CXCursor_ExceptionSpecificationKind_ComputedNoexcept, CXCursor_ExceptionSpecificationKind_Unevaluated, CXCursor_ExceptionSpecificationKind_Uninstantiated, CXCursor_ExceptionSpecificationKind_Unparsed, CXCursor_ExceptionSpecificationKind_NoThrow
            var"c\"enum CXCursor_ExceptionSpecificationKind\""
        end
        begin
            const var"c\"clang_createIndex\"" = C.Cbinding{C.Cfunction{var"c\"CXIndex\"", C.Tuple{C.Cint, C.Cint}, :cdecl}, libpath, :clang_createIndex}()
            (func::C.typeof(var"c\"clang_createIndex\""))(var"c\"excludeDeclarationsFromPCH\"", var"c\"displayDiagnostics\"") = begin
                    C.funccall(func, var"c\"excludeDeclarationsFromPCH\"", var"c\"displayDiagnostics\"")
                end
            const clang_createIndex = var"c\"clang_createIndex\""
            export var"c\"clang_createIndex\""
            export clang_createIndex
            var"c\"clang_createIndex\""
        end
        begin
            const var"c\"clang_disposeIndex\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXIndex\""}, :cdecl}, libpath, :clang_disposeIndex}()
            (func::C.typeof(var"c\"clang_disposeIndex\""))(var"c\"index\"") = begin
                    C.funccall(func, var"c\"index\"")
                end
            const clang_disposeIndex = var"c\"clang_disposeIndex\""
            export var"c\"clang_disposeIndex\""
            export clang_disposeIndex
            var"c\"clang_disposeIndex\""
        end
        begin
            abstract type var"c\"CXGlobalOptFlags\"" <: Cenum end
            const CXGlobalOptFlags = var"c\"CXGlobalOptFlags\""
            export var"c\"CXGlobalOptFlags\""
            export CXGlobalOptFlags
            var"c\"CXGlobalOptFlags\""
        end
        begin
            primitive type var"(c\"CXGlobalOptFlags\")" <: var"c\"CXGlobalOptFlags\"" 32 end
            (::(Type){var"(c\"CXGlobalOptFlags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXGlobalOptFlags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXGlobalOptFlags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXGlobalOpt_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXGlobalOpt_ThreadBackgroundPriorityForIndexing\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXGlobalOpt_ThreadBackgroundPriorityForEditing\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXGlobalOpt_ThreadBackgroundPriorityForAll\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXGlobalOptFlags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXGlobalOptFlags\")"}) = begin
                    var"(c\"CXGlobalOptFlags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXGlobalOptFlags\""}) = begin
                    var"(c\"CXGlobalOptFlags\")"
                end
            const var"c\"CXGlobalOpt_None\"" = var"(c\"CXGlobalOptFlags\")"(0x0000000000000000)
            const var"c\"CXGlobalOpt_ThreadBackgroundPriorityForIndexing\"" = var"(c\"CXGlobalOptFlags\")"(0x0000000000000001)
            const var"c\"CXGlobalOpt_ThreadBackgroundPriorityForEditing\"" = var"(c\"CXGlobalOptFlags\")"(0x0000000000000002)
            const var"c\"CXGlobalOpt_ThreadBackgroundPriorityForAll\"" = var"(c\"CXGlobalOptFlags\")"(0x0000000000000003)
            const CXGlobalOptFlags = var"c\"CXGlobalOptFlags\""
            const CXGlobalOpt_None = var"c\"CXGlobalOpt_None\""
            const CXGlobalOpt_ThreadBackgroundPriorityForIndexing = var"c\"CXGlobalOpt_ThreadBackgroundPriorityForIndexing\""
            const CXGlobalOpt_ThreadBackgroundPriorityForEditing = var"c\"CXGlobalOpt_ThreadBackgroundPriorityForEditing\""
            const CXGlobalOpt_ThreadBackgroundPriorityForAll = var"c\"CXGlobalOpt_ThreadBackgroundPriorityForAll\""
            export var"c\"CXGlobalOptFlags\"", var"(c\"CXGlobalOptFlags\")", var"c\"CXGlobalOpt_None\"", var"c\"CXGlobalOpt_ThreadBackgroundPriorityForIndexing\"", var"c\"CXGlobalOpt_ThreadBackgroundPriorityForEditing\"", var"c\"CXGlobalOpt_ThreadBackgroundPriorityForAll\""
            export CXGlobalOptFlags, CXGlobalOpt_None, CXGlobalOpt_ThreadBackgroundPriorityForIndexing, CXGlobalOpt_ThreadBackgroundPriorityForEditing, CXGlobalOpt_ThreadBackgroundPriorityForAll
            var"c\"CXGlobalOptFlags\""
        end
        begin
        end
        begin
            const var"c\"clang_CXIndex_setGlobalOptions\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXIndex\"", C.Cuint}, :cdecl}, libpath, :clang_CXIndex_setGlobalOptions}()
            (func::C.typeof(var"c\"clang_CXIndex_setGlobalOptions\""))(arg1, var"c\"options\"") = begin
                    C.funccall(func, arg1, var"c\"options\"")
                end
            const clang_CXIndex_setGlobalOptions = var"c\"clang_CXIndex_setGlobalOptions\""
            export var"c\"clang_CXIndex_setGlobalOptions\""
            export clang_CXIndex_setGlobalOptions
            var"c\"clang_CXIndex_setGlobalOptions\""
        end
        begin
            const var"c\"clang_CXIndex_getGlobalOptions\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXIndex\""}, :cdecl}, libpath, :clang_CXIndex_getGlobalOptions}()
            (func::C.typeof(var"c\"clang_CXIndex_getGlobalOptions\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_CXIndex_getGlobalOptions = var"c\"clang_CXIndex_getGlobalOptions\""
            export var"c\"clang_CXIndex_getGlobalOptions\""
            export clang_CXIndex_getGlobalOptions
            var"c\"clang_CXIndex_getGlobalOptions\""
        end
        begin
            const var"c\"clang_CXIndex_setInvocationEmissionPathOption\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXIndex\"", C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_CXIndex_setInvocationEmissionPathOption}()
            (func::C.typeof(var"c\"clang_CXIndex_setInvocationEmissionPathOption\""))(arg1, var"c\"Path\"") = begin
                    C.funccall(func, arg1, var"c\"Path\"")
                end
            const clang_CXIndex_setInvocationEmissionPathOption = var"c\"clang_CXIndex_setInvocationEmissionPathOption\""
            export var"c\"clang_CXIndex_setInvocationEmissionPathOption\""
            export clang_CXIndex_setInvocationEmissionPathOption
            var"c\"clang_CXIndex_setInvocationEmissionPathOption\""
        end
        begin
            const var"c\"CXFile\"" = C.Cptr{C.Cvoid}
            const CXFile = var"c\"CXFile\""
            export var"c\"CXFile\""
            export CXFile
            var"c\"CXFile\""
        end
        begin
            const var"c\"clang_getFileName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXFile\""}, :cdecl}, libpath, :clang_getFileName}()
            (func::C.typeof(var"c\"clang_getFileName\""))(var"c\"SFile\"") = begin
                    C.funccall(func, var"c\"SFile\"")
                end
            const clang_getFileName = var"c\"clang_getFileName\""
            export var"c\"clang_getFileName\""
            export clang_getFileName
            var"c\"clang_getFileName\""
        end
        begin
            const var"c\"clang_getFileTime\"" = C.Cbinding{C.Cfunction{var"c\"time_t\"", C.Tuple{var"c\"CXFile\""}, :cdecl}, libpath, :clang_getFileTime}()
            (func::C.typeof(var"c\"clang_getFileTime\""))(var"c\"SFile\"") = begin
                    C.funccall(func, var"c\"SFile\"")
                end
            const clang_getFileTime = var"c\"clang_getFileTime\""
            export var"c\"clang_getFileTime\""
            export clang_getFileTime
            var"c\"clang_getFileTime\""
        end
        begin
            abstract type var"c\"CXFileUniqueID\"" <: Cstruct end
            const CXFileUniqueID = var"c\"CXFileUniqueID\""
            export var"c\"CXFileUniqueID\""
            export CXFileUniqueID
            var"c\"CXFileUniqueID\""
        end
        begin
            struct var"(c\"CXFileUniqueID\")" <: var"c\"CXFileUniqueID\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXFileUniqueID\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXFileUniqueID\")"}) = begin
                    C.Tuple{C.Tuple{:data, C.Tuple{C.Carray{C.Culonglong, 3}, C.bitstype(C.Carray{C.Culonglong, 3}), C.integraltype(C.Carray{C.Culonglong, 3}), 0, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXFileUniqueID\")"}) = begin
                    var"(c\"CXFileUniqueID\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXFileUniqueID\""}) = begin
                    var"(c\"CXFileUniqueID\")"
                end
            const CXFileUniqueID = var"c\"CXFileUniqueID\""
            export var"c\"CXFileUniqueID\"", var"(c\"CXFileUniqueID\")"
            export CXFileUniqueID
            var"c\"CXFileUniqueID\""
        end
        begin
        end
        begin
            const var"c\"clang_getFileUniqueID\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXFile\"", C.Cptr{var"c\"CXFileUniqueID\""}}, :cdecl}, libpath, :clang_getFileUniqueID}()
            (func::C.typeof(var"c\"clang_getFileUniqueID\""))(var"c\"file\"", var"c\"outID\"") = begin
                    C.funccall(func, var"c\"file\"", var"c\"outID\"")
                end
            const clang_getFileUniqueID = var"c\"clang_getFileUniqueID\""
            export var"c\"clang_getFileUniqueID\""
            export clang_getFileUniqueID
            var"c\"clang_getFileUniqueID\""
        end
        begin
            const var"c\"clang_isFileMultipleIncludeGuarded\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXFile\""}, :cdecl}, libpath, :clang_isFileMultipleIncludeGuarded}()
            (func::C.typeof(var"c\"clang_isFileMultipleIncludeGuarded\""))(var"c\"tu\"", var"c\"file\"") = begin
                    C.funccall(func, var"c\"tu\"", var"c\"file\"")
                end
            const clang_isFileMultipleIncludeGuarded = var"c\"clang_isFileMultipleIncludeGuarded\""
            export var"c\"clang_isFileMultipleIncludeGuarded\""
            export clang_isFileMultipleIncludeGuarded
            var"c\"clang_isFileMultipleIncludeGuarded\""
        end
        begin
            const var"c\"clang_getFile\"" = C.Cbinding{C.Cfunction{var"c\"CXFile\"", C.Tuple{var"c\"CXTranslationUnit\"", C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_getFile}()
            (func::C.typeof(var"c\"clang_getFile\""))(var"c\"tu\"", var"c\"file_name\"") = begin
                    C.funccall(func, var"c\"tu\"", var"c\"file_name\"")
                end
            const clang_getFile = var"c\"clang_getFile\""
            export var"c\"clang_getFile\""
            export clang_getFile
            var"c\"clang_getFile\""
        end
        begin
            const var"c\"clang_getFileContents\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{C.Cchar}}, C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXFile\"", C.Cptr{var"c\"size_t\""}}, :cdecl}, libpath, :clang_getFileContents}()
            (func::C.typeof(var"c\"clang_getFileContents\""))(var"c\"tu\"", var"c\"file\"", var"c\"size\"") = begin
                    C.funccall(func, var"c\"tu\"", var"c\"file\"", var"c\"size\"")
                end
            const clang_getFileContents = var"c\"clang_getFileContents\""
            export var"c\"clang_getFileContents\""
            export clang_getFileContents
            var"c\"clang_getFileContents\""
        end
        begin
            const var"c\"clang_File_isEqual\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXFile\"", var"c\"CXFile\""}, :cdecl}, libpath, :clang_File_isEqual}()
            (func::C.typeof(var"c\"clang_File_isEqual\""))(var"c\"file1\"", var"c\"file2\"") = begin
                    C.funccall(func, var"c\"file1\"", var"c\"file2\"")
                end
            const clang_File_isEqual = var"c\"clang_File_isEqual\""
            export var"c\"clang_File_isEqual\""
            export clang_File_isEqual
            var"c\"clang_File_isEqual\""
        end
        begin
            const var"c\"clang_File_tryGetRealPathName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXFile\""}, :cdecl}, libpath, :clang_File_tryGetRealPathName}()
            (func::C.typeof(var"c\"clang_File_tryGetRealPathName\""))(var"c\"file\"") = begin
                    C.funccall(func, var"c\"file\"")
                end
            const clang_File_tryGetRealPathName = var"c\"clang_File_tryGetRealPathName\""
            export var"c\"clang_File_tryGetRealPathName\""
            export clang_File_tryGetRealPathName
            var"c\"clang_File_tryGetRealPathName\""
        end
        begin
            abstract type var"c\"CXSourceLocation\"" <: Cstruct end
            const CXSourceLocation = var"c\"CXSourceLocation\""
            export var"c\"CXSourceLocation\""
            export CXSourceLocation
            var"c\"CXSourceLocation\""
        end
        begin
            struct var"(c\"CXSourceLocation\")" <: var"c\"CXSourceLocation\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXSourceLocation\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXSourceLocation\")"}) = begin
                    C.Tuple{C.Tuple{:ptr_data, C.Tuple{C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 2}, C.bitstype(C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 2}), C.integraltype(C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 2}), 0, 0, -1}}, C.Tuple{:int_data, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXSourceLocation\")"}) = begin
                    var"(c\"CXSourceLocation\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXSourceLocation\""}) = begin
                    var"(c\"CXSourceLocation\")"
                end
            const CXSourceLocation = var"c\"CXSourceLocation\""
            export var"c\"CXSourceLocation\"", var"(c\"CXSourceLocation\")"
            export CXSourceLocation
            var"c\"CXSourceLocation\""
        end
        begin
        end
        begin
            abstract type var"c\"CXSourceRange\"" <: Cstruct end
            const CXSourceRange = var"c\"CXSourceRange\""
            export var"c\"CXSourceRange\""
            export CXSourceRange
            var"c\"CXSourceRange\""
        end
        begin
            struct var"(c\"CXSourceRange\")" <: var"c\"CXSourceRange\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXSourceRange\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXSourceRange\")"}) = begin
                    C.Tuple{C.Tuple{:ptr_data, C.Tuple{C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 2}, C.bitstype(C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 2}), C.integraltype(C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 2}), 0, 0, -1}}, C.Tuple{:begin_int_data, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 16, 0, -1}}, C.Tuple{:end_int_data, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 20, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXSourceRange\")"}) = begin
                    var"(c\"CXSourceRange\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXSourceRange\""}) = begin
                    var"(c\"CXSourceRange\")"
                end
            const CXSourceRange = var"c\"CXSourceRange\""
            export var"c\"CXSourceRange\"", var"(c\"CXSourceRange\")"
            export CXSourceRange
            var"c\"CXSourceRange\""
        end
        begin
        end
        begin
            const var"c\"clang_getNullLocation\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{}, :cdecl}, libpath, :clang_getNullLocation}()
            (func::C.typeof(var"c\"clang_getNullLocation\""))() = begin
                    C.funccall(func)
                end
            const clang_getNullLocation = var"c\"clang_getNullLocation\""
            export var"c\"clang_getNullLocation\""
            export clang_getNullLocation
            var"c\"clang_getNullLocation\""
        end
        begin
            const var"c\"clang_equalLocations\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXSourceLocation\"", var"c\"CXSourceLocation\""}, :cdecl}, libpath, :clang_equalLocations}()
            (func::C.typeof(var"c\"clang_equalLocations\""))(var"c\"loc1\"", var"c\"loc2\"") = begin
                    C.funccall(func, var"c\"loc1\"", var"c\"loc2\"")
                end
            const clang_equalLocations = var"c\"clang_equalLocations\""
            export var"c\"clang_equalLocations\""
            export clang_equalLocations
            var"c\"clang_equalLocations\""
        end
        begin
            const var"c\"clang_getLocation\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXFile\"", C.Cuint, C.Cuint}, :cdecl}, libpath, :clang_getLocation}()
            (func::C.typeof(var"c\"clang_getLocation\""))(var"c\"tu\"", var"c\"file\"", var"c\"line\"", var"c\"column\"") = begin
                    C.funccall(func, var"c\"tu\"", var"c\"file\"", var"c\"line\"", var"c\"column\"")
                end
            const clang_getLocation = var"c\"clang_getLocation\""
            export var"c\"clang_getLocation\""
            export clang_getLocation
            var"c\"clang_getLocation\""
        end
        begin
            const var"c\"clang_getLocationForOffset\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXFile\"", C.Cuint}, :cdecl}, libpath, :clang_getLocationForOffset}()
            (func::C.typeof(var"c\"clang_getLocationForOffset\""))(var"c\"tu\"", var"c\"file\"", var"c\"offset\"") = begin
                    C.funccall(func, var"c\"tu\"", var"c\"file\"", var"c\"offset\"")
                end
            const clang_getLocationForOffset = var"c\"clang_getLocationForOffset\""
            export var"c\"clang_getLocationForOffset\""
            export clang_getLocationForOffset
            var"c\"clang_getLocationForOffset\""
        end
        begin
            const var"c\"clang_Location_isInSystemHeader\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXSourceLocation\""}, :cdecl}, libpath, :clang_Location_isInSystemHeader}()
            (func::C.typeof(var"c\"clang_Location_isInSystemHeader\""))(var"c\"location\"") = begin
                    C.funccall(func, var"c\"location\"")
                end
            const clang_Location_isInSystemHeader = var"c\"clang_Location_isInSystemHeader\""
            export var"c\"clang_Location_isInSystemHeader\""
            export clang_Location_isInSystemHeader
            var"c\"clang_Location_isInSystemHeader\""
        end
        begin
            const var"c\"clang_Location_isFromMainFile\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXSourceLocation\""}, :cdecl}, libpath, :clang_Location_isFromMainFile}()
            (func::C.typeof(var"c\"clang_Location_isFromMainFile\""))(var"c\"location\"") = begin
                    C.funccall(func, var"c\"location\"")
                end
            const clang_Location_isFromMainFile = var"c\"clang_Location_isFromMainFile\""
            export var"c\"clang_Location_isFromMainFile\""
            export clang_Location_isFromMainFile
            var"c\"clang_Location_isFromMainFile\""
        end
        begin
            const var"c\"clang_getNullRange\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{}, :cdecl}, libpath, :clang_getNullRange}()
            (func::C.typeof(var"c\"clang_getNullRange\""))() = begin
                    C.funccall(func)
                end
            const clang_getNullRange = var"c\"clang_getNullRange\""
            export var"c\"clang_getNullRange\""
            export clang_getNullRange
            var"c\"clang_getNullRange\""
        end
        begin
            const var"c\"clang_getRange\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{var"c\"CXSourceLocation\"", var"c\"CXSourceLocation\""}, :cdecl}, libpath, :clang_getRange}()
            (func::C.typeof(var"c\"clang_getRange\""))(var"c\"begin\"", var"c\"end\"") = begin
                    C.funccall(func, var"c\"begin\"", var"c\"end\"")
                end
            const clang_getRange = var"c\"clang_getRange\""
            export var"c\"clang_getRange\""
            export clang_getRange
            var"c\"clang_getRange\""
        end
        begin
            const var"c\"clang_equalRanges\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXSourceRange\"", var"c\"CXSourceRange\""}, :cdecl}, libpath, :clang_equalRanges}()
            (func::C.typeof(var"c\"clang_equalRanges\""))(var"c\"range1\"", var"c\"range2\"") = begin
                    C.funccall(func, var"c\"range1\"", var"c\"range2\"")
                end
            const clang_equalRanges = var"c\"clang_equalRanges\""
            export var"c\"clang_equalRanges\""
            export clang_equalRanges
            var"c\"clang_equalRanges\""
        end
        begin
            const var"c\"clang_Range_isNull\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXSourceRange\""}, :cdecl}, libpath, :clang_Range_isNull}()
            (func::C.typeof(var"c\"clang_Range_isNull\""))(var"c\"range\"") = begin
                    C.funccall(func, var"c\"range\"")
                end
            const clang_Range_isNull = var"c\"clang_Range_isNull\""
            export var"c\"clang_Range_isNull\""
            export clang_Range_isNull
            var"c\"clang_Range_isNull\""
        end
        begin
            const var"c\"clang_getExpansionLocation\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXSourceLocation\"", C.Cptr{var"c\"CXFile\""}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_getExpansionLocation}()
            (func::C.typeof(var"c\"clang_getExpansionLocation\""))(var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"") = begin
                    C.funccall(func, var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"")
                end
            const clang_getExpansionLocation = var"c\"clang_getExpansionLocation\""
            export var"c\"clang_getExpansionLocation\""
            export clang_getExpansionLocation
            var"c\"clang_getExpansionLocation\""
        end
        begin
            const var"c\"clang_getPresumedLocation\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXSourceLocation\"", C.Cptr{var"c\"CXString\""}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_getPresumedLocation}()
            (func::C.typeof(var"c\"clang_getPresumedLocation\""))(var"c\"location\"", var"c\"filename\"", var"c\"line\"", var"c\"column\"") = begin
                    C.funccall(func, var"c\"location\"", var"c\"filename\"", var"c\"line\"", var"c\"column\"")
                end
            const clang_getPresumedLocation = var"c\"clang_getPresumedLocation\""
            export var"c\"clang_getPresumedLocation\""
            export clang_getPresumedLocation
            var"c\"clang_getPresumedLocation\""
        end
        begin
            const var"c\"clang_getInstantiationLocation\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXSourceLocation\"", C.Cptr{var"c\"CXFile\""}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_getInstantiationLocation}()
            (func::C.typeof(var"c\"clang_getInstantiationLocation\""))(var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"") = begin
                    C.funccall(func, var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"")
                end
            const clang_getInstantiationLocation = var"c\"clang_getInstantiationLocation\""
            export var"c\"clang_getInstantiationLocation\""
            export clang_getInstantiationLocation
            var"c\"clang_getInstantiationLocation\""
        end
        begin
            const var"c\"clang_getSpellingLocation\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXSourceLocation\"", C.Cptr{var"c\"CXFile\""}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_getSpellingLocation}()
            (func::C.typeof(var"c\"clang_getSpellingLocation\""))(var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"") = begin
                    C.funccall(func, var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"")
                end
            const clang_getSpellingLocation = var"c\"clang_getSpellingLocation\""
            export var"c\"clang_getSpellingLocation\""
            export clang_getSpellingLocation
            var"c\"clang_getSpellingLocation\""
        end
        begin
            const var"c\"clang_getFileLocation\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXSourceLocation\"", C.Cptr{var"c\"CXFile\""}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_getFileLocation}()
            (func::C.typeof(var"c\"clang_getFileLocation\""))(var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"") = begin
                    C.funccall(func, var"c\"location\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"")
                end
            const clang_getFileLocation = var"c\"clang_getFileLocation\""
            export var"c\"clang_getFileLocation\""
            export clang_getFileLocation
            var"c\"clang_getFileLocation\""
        end
        begin
            const var"c\"clang_getRangeStart\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXSourceRange\""}, :cdecl}, libpath, :clang_getRangeStart}()
            (func::C.typeof(var"c\"clang_getRangeStart\""))(var"c\"range\"") = begin
                    C.funccall(func, var"c\"range\"")
                end
            const clang_getRangeStart = var"c\"clang_getRangeStart\""
            export var"c\"clang_getRangeStart\""
            export clang_getRangeStart
            var"c\"clang_getRangeStart\""
        end
        begin
            const var"c\"clang_getRangeEnd\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXSourceRange\""}, :cdecl}, libpath, :clang_getRangeEnd}()
            (func::C.typeof(var"c\"clang_getRangeEnd\""))(var"c\"range\"") = begin
                    C.funccall(func, var"c\"range\"")
                end
            const clang_getRangeEnd = var"c\"clang_getRangeEnd\""
            export var"c\"clang_getRangeEnd\""
            export clang_getRangeEnd
            var"c\"clang_getRangeEnd\""
        end
        begin
            abstract type var"c\"CXSourceRangeList\"" <: Cstruct end
            const CXSourceRangeList = var"c\"CXSourceRangeList\""
            export var"c\"CXSourceRangeList\""
            export CXSourceRangeList
            var"c\"CXSourceRangeList\""
        end
        begin
            struct var"(c\"CXSourceRangeList\")" <: var"c\"CXSourceRangeList\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXSourceRangeList\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXSourceRangeList\")"}) = begin
                    C.Tuple{C.Tuple{:count, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 0, 0, -1}}, C.Tuple{:ranges, C.Tuple{C.Cptr{var"c\"CXSourceRange\""}, C.bitstype(C.Cptr{var"c\"CXSourceRange\""}), C.integraltype(C.Cptr{var"c\"CXSourceRange\""}), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXSourceRangeList\")"}) = begin
                    var"(c\"CXSourceRangeList\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXSourceRangeList\""}) = begin
                    var"(c\"CXSourceRangeList\")"
                end
            const CXSourceRangeList = var"c\"CXSourceRangeList\""
            export var"c\"CXSourceRangeList\"", var"(c\"CXSourceRangeList\")"
            export CXSourceRangeList
            var"c\"CXSourceRangeList\""
        end
        begin
        end
        begin
            const var"c\"clang_getSkippedRanges\"" = C.Cbinding{C.Cfunction{C.Cptr{var"c\"CXSourceRangeList\""}, C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXFile\""}, :cdecl}, libpath, :clang_getSkippedRanges}()
            (func::C.typeof(var"c\"clang_getSkippedRanges\""))(var"c\"tu\"", var"c\"file\"") = begin
                    C.funccall(func, var"c\"tu\"", var"c\"file\"")
                end
            const clang_getSkippedRanges = var"c\"clang_getSkippedRanges\""
            export var"c\"clang_getSkippedRanges\""
            export clang_getSkippedRanges
            var"c\"clang_getSkippedRanges\""
        end
        begin
            const var"c\"clang_getAllSkippedRanges\"" = C.Cbinding{C.Cfunction{C.Cptr{var"c\"CXSourceRangeList\""}, C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_getAllSkippedRanges}()
            (func::C.typeof(var"c\"clang_getAllSkippedRanges\""))(var"c\"tu\"") = begin
                    C.funccall(func, var"c\"tu\"")
                end
            const clang_getAllSkippedRanges = var"c\"clang_getAllSkippedRanges\""
            export var"c\"clang_getAllSkippedRanges\""
            export clang_getAllSkippedRanges
            var"c\"clang_getAllSkippedRanges\""
        end
        begin
            const var"c\"clang_disposeSourceRangeList\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{var"c\"CXSourceRangeList\""}}, :cdecl}, libpath, :clang_disposeSourceRangeList}()
            (func::C.typeof(var"c\"clang_disposeSourceRangeList\""))(var"c\"ranges\"") = begin
                    C.funccall(func, var"c\"ranges\"")
                end
            const clang_disposeSourceRangeList = var"c\"clang_disposeSourceRangeList\""
            export var"c\"clang_disposeSourceRangeList\""
            export clang_disposeSourceRangeList
            var"c\"clang_disposeSourceRangeList\""
        end
        begin
            abstract type var"c\"enum CXDiagnosticSeverity\"" <: Cenum end
            const CXDiagnosticSeverity = var"c\"enum CXDiagnosticSeverity\""
            export var"c\"enum CXDiagnosticSeverity\""
            export CXDiagnosticSeverity
            var"c\"enum CXDiagnosticSeverity\""
        end
        begin
            primitive type var"(c\"enum CXDiagnosticSeverity\")" <: var"c\"enum CXDiagnosticSeverity\"" 32 end
            (::(Type){var"(c\"enum CXDiagnosticSeverity\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXDiagnosticSeverity\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXDiagnosticSeverity\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXDiagnostic_Ignored\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXDiagnostic_Note\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXDiagnostic_Warning\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXDiagnostic_Error\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXDiagnostic_Fatal\""), 0x0000000000000004}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXDiagnosticSeverity\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXDiagnosticSeverity\")"}) = begin
                    var"(c\"enum CXDiagnosticSeverity\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXDiagnosticSeverity\""}) = begin
                    var"(c\"enum CXDiagnosticSeverity\")"
                end
            const var"c\"CXDiagnostic_Ignored\"" = var"(c\"enum CXDiagnosticSeverity\")"(0x0000000000000000)
            const var"c\"CXDiagnostic_Note\"" = var"(c\"enum CXDiagnosticSeverity\")"(0x0000000000000001)
            const var"c\"CXDiagnostic_Warning\"" = var"(c\"enum CXDiagnosticSeverity\")"(0x0000000000000002)
            const var"c\"CXDiagnostic_Error\"" = var"(c\"enum CXDiagnosticSeverity\")"(0x0000000000000003)
            const var"c\"CXDiagnostic_Fatal\"" = var"(c\"enum CXDiagnosticSeverity\")"(0x0000000000000004)
            const CXDiagnosticSeverity = var"c\"enum CXDiagnosticSeverity\""
            const CXDiagnostic_Ignored = var"c\"CXDiagnostic_Ignored\""
            const CXDiagnostic_Note = var"c\"CXDiagnostic_Note\""
            const CXDiagnostic_Warning = var"c\"CXDiagnostic_Warning\""
            const CXDiagnostic_Error = var"c\"CXDiagnostic_Error\""
            const CXDiagnostic_Fatal = var"c\"CXDiagnostic_Fatal\""
            export var"c\"enum CXDiagnosticSeverity\"", var"(c\"enum CXDiagnosticSeverity\")", var"c\"CXDiagnostic_Ignored\"", var"c\"CXDiagnostic_Note\"", var"c\"CXDiagnostic_Warning\"", var"c\"CXDiagnostic_Error\"", var"c\"CXDiagnostic_Fatal\""
            export CXDiagnosticSeverity, CXDiagnostic_Ignored, CXDiagnostic_Note, CXDiagnostic_Warning, CXDiagnostic_Error, CXDiagnostic_Fatal
            var"c\"enum CXDiagnosticSeverity\""
        end
        begin
            const var"c\"CXDiagnostic\"" = C.Cptr{C.Cvoid}
            const CXDiagnostic = var"c\"CXDiagnostic\""
            export var"c\"CXDiagnostic\""
            export CXDiagnostic
            var"c\"CXDiagnostic\""
        end
        begin
            const var"c\"CXDiagnosticSet\"" = C.Cptr{C.Cvoid}
            const CXDiagnosticSet = var"c\"CXDiagnosticSet\""
            export var"c\"CXDiagnosticSet\""
            export CXDiagnosticSet
            var"c\"CXDiagnosticSet\""
        end
        begin
            const var"c\"clang_getNumDiagnosticsInSet\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXDiagnosticSet\""}, :cdecl}, libpath, :clang_getNumDiagnosticsInSet}()
            (func::C.typeof(var"c\"clang_getNumDiagnosticsInSet\""))(var"c\"Diags\"") = begin
                    C.funccall(func, var"c\"Diags\"")
                end
            const clang_getNumDiagnosticsInSet = var"c\"clang_getNumDiagnosticsInSet\""
            export var"c\"clang_getNumDiagnosticsInSet\""
            export clang_getNumDiagnosticsInSet
            var"c\"clang_getNumDiagnosticsInSet\""
        end
        begin
            const var"c\"clang_getDiagnosticInSet\"" = C.Cbinding{C.Cfunction{var"c\"CXDiagnostic\"", C.Tuple{var"c\"CXDiagnosticSet\"", C.Cuint}, :cdecl}, libpath, :clang_getDiagnosticInSet}()
            (func::C.typeof(var"c\"clang_getDiagnosticInSet\""))(var"c\"Diags\"", var"c\"Index\"") = begin
                    C.funccall(func, var"c\"Diags\"", var"c\"Index\"")
                end
            const clang_getDiagnosticInSet = var"c\"clang_getDiagnosticInSet\""
            export var"c\"clang_getDiagnosticInSet\""
            export clang_getDiagnosticInSet
            var"c\"clang_getDiagnosticInSet\""
        end
        begin
            abstract type var"c\"enum CXLoadDiag_Error\"" <: Cenum end
            const CXLoadDiag_Error = var"c\"enum CXLoadDiag_Error\""
            export var"c\"enum CXLoadDiag_Error\""
            export CXLoadDiag_Error
            var"c\"enum CXLoadDiag_Error\""
        end
        begin
            primitive type var"(c\"enum CXLoadDiag_Error\")" <: var"c\"enum CXLoadDiag_Error\"" 32 end
            (::(Type){var"(c\"enum CXLoadDiag_Error\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXLoadDiag_Error\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXLoadDiag_Error\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXLoadDiag_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXLoadDiag_Unknown\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXLoadDiag_CannotLoad\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXLoadDiag_InvalidFile\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXLoadDiag_Error\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXLoadDiag_Error\")"}) = begin
                    var"(c\"enum CXLoadDiag_Error\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXLoadDiag_Error\""}) = begin
                    var"(c\"enum CXLoadDiag_Error\")"
                end
            const var"c\"CXLoadDiag_None\"" = var"(c\"enum CXLoadDiag_Error\")"(0x0000000000000000)
            const var"c\"CXLoadDiag_Unknown\"" = var"(c\"enum CXLoadDiag_Error\")"(0x0000000000000001)
            const var"c\"CXLoadDiag_CannotLoad\"" = var"(c\"enum CXLoadDiag_Error\")"(0x0000000000000002)
            const var"c\"CXLoadDiag_InvalidFile\"" = var"(c\"enum CXLoadDiag_Error\")"(0x0000000000000003)
            const CXLoadDiag_Error = var"c\"enum CXLoadDiag_Error\""
            const CXLoadDiag_None = var"c\"CXLoadDiag_None\""
            const CXLoadDiag_Unknown = var"c\"CXLoadDiag_Unknown\""
            const CXLoadDiag_CannotLoad = var"c\"CXLoadDiag_CannotLoad\""
            const CXLoadDiag_InvalidFile = var"c\"CXLoadDiag_InvalidFile\""
            export var"c\"enum CXLoadDiag_Error\"", var"(c\"enum CXLoadDiag_Error\")", var"c\"CXLoadDiag_None\"", var"c\"CXLoadDiag_Unknown\"", var"c\"CXLoadDiag_CannotLoad\"", var"c\"CXLoadDiag_InvalidFile\""
            export CXLoadDiag_Error, CXLoadDiag_None, CXLoadDiag_Unknown, CXLoadDiag_CannotLoad, CXLoadDiag_InvalidFile
            var"c\"enum CXLoadDiag_Error\""
        end
        begin
            const var"c\"clang_loadDiagnostics\"" = C.Cbinding{C.Cfunction{var"c\"CXDiagnosticSet\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{var"c\"enum CXLoadDiag_Error\""}, C.Cptr{var"c\"CXString\""}}, :cdecl}, libpath, :clang_loadDiagnostics}()
            (func::C.typeof(var"c\"clang_loadDiagnostics\""))(var"c\"file\"", var"c\"error\"", var"c\"errorString\"") = begin
                    C.funccall(func, var"c\"file\"", var"c\"error\"", var"c\"errorString\"")
                end
            const clang_loadDiagnostics = var"c\"clang_loadDiagnostics\""
            export var"c\"clang_loadDiagnostics\""
            export clang_loadDiagnostics
            var"c\"clang_loadDiagnostics\""
        end
        begin
            const var"c\"clang_disposeDiagnosticSet\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXDiagnosticSet\""}, :cdecl}, libpath, :clang_disposeDiagnosticSet}()
            (func::C.typeof(var"c\"clang_disposeDiagnosticSet\""))(var"c\"Diags\"") = begin
                    C.funccall(func, var"c\"Diags\"")
                end
            const clang_disposeDiagnosticSet = var"c\"clang_disposeDiagnosticSet\""
            export var"c\"clang_disposeDiagnosticSet\""
            export clang_disposeDiagnosticSet
            var"c\"clang_disposeDiagnosticSet\""
        end
        begin
            const var"c\"clang_getChildDiagnostics\"" = C.Cbinding{C.Cfunction{var"c\"CXDiagnosticSet\"", C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getChildDiagnostics}()
            (func::C.typeof(var"c\"clang_getChildDiagnostics\""))(var"c\"D\"") = begin
                    C.funccall(func, var"c\"D\"")
                end
            const clang_getChildDiagnostics = var"c\"clang_getChildDiagnostics\""
            export var"c\"clang_getChildDiagnostics\""
            export clang_getChildDiagnostics
            var"c\"clang_getChildDiagnostics\""
        end
        begin
            const var"c\"clang_getNumDiagnostics\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_getNumDiagnostics}()
            (func::C.typeof(var"c\"clang_getNumDiagnostics\""))(var"c\"Unit\"") = begin
                    C.funccall(func, var"c\"Unit\"")
                end
            const clang_getNumDiagnostics = var"c\"clang_getNumDiagnostics\""
            export var"c\"clang_getNumDiagnostics\""
            export clang_getNumDiagnostics
            var"c\"clang_getNumDiagnostics\""
        end
        begin
            const var"c\"clang_getDiagnostic\"" = C.Cbinding{C.Cfunction{var"c\"CXDiagnostic\"", C.Tuple{var"c\"CXTranslationUnit\"", C.Cuint}, :cdecl}, libpath, :clang_getDiagnostic}()
            (func::C.typeof(var"c\"clang_getDiagnostic\""))(var"c\"Unit\"", var"c\"Index\"") = begin
                    C.funccall(func, var"c\"Unit\"", var"c\"Index\"")
                end
            const clang_getDiagnostic = var"c\"clang_getDiagnostic\""
            export var"c\"clang_getDiagnostic\""
            export clang_getDiagnostic
            var"c\"clang_getDiagnostic\""
        end
        begin
            const var"c\"clang_getDiagnosticSetFromTU\"" = C.Cbinding{C.Cfunction{var"c\"CXDiagnosticSet\"", C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_getDiagnosticSetFromTU}()
            (func::C.typeof(var"c\"clang_getDiagnosticSetFromTU\""))(var"c\"Unit\"") = begin
                    C.funccall(func, var"c\"Unit\"")
                end
            const clang_getDiagnosticSetFromTU = var"c\"clang_getDiagnosticSetFromTU\""
            export var"c\"clang_getDiagnosticSetFromTU\""
            export clang_getDiagnosticSetFromTU
            var"c\"clang_getDiagnosticSetFromTU\""
        end
        begin
            const var"c\"clang_disposeDiagnostic\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_disposeDiagnostic}()
            (func::C.typeof(var"c\"clang_disposeDiagnostic\""))(var"c\"Diagnostic\"") = begin
                    C.funccall(func, var"c\"Diagnostic\"")
                end
            const clang_disposeDiagnostic = var"c\"clang_disposeDiagnostic\""
            export var"c\"clang_disposeDiagnostic\""
            export clang_disposeDiagnostic
            var"c\"clang_disposeDiagnostic\""
        end
        begin
            abstract type var"c\"enum CXDiagnosticDisplayOptions\"" <: Cenum end
            const CXDiagnosticDisplayOptions = var"c\"enum CXDiagnosticDisplayOptions\""
            export var"c\"enum CXDiagnosticDisplayOptions\""
            export CXDiagnosticDisplayOptions
            var"c\"enum CXDiagnosticDisplayOptions\""
        end
        begin
            primitive type var"(c\"enum CXDiagnosticDisplayOptions\")" <: var"c\"enum CXDiagnosticDisplayOptions\"" 32 end
            (::(Type){var"(c\"enum CXDiagnosticDisplayOptions\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXDiagnosticDisplayOptions\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXDiagnosticDisplayOptions\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXDiagnostic_DisplaySourceLocation\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXDiagnostic_DisplayColumn\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXDiagnostic_DisplaySourceRanges\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXDiagnostic_DisplayOption\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXDiagnostic_DisplayCategoryId\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXDiagnostic_DisplayCategoryName\""), 0x0000000000000020}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXDiagnosticDisplayOptions\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXDiagnosticDisplayOptions\")"}) = begin
                    var"(c\"enum CXDiagnosticDisplayOptions\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXDiagnosticDisplayOptions\""}) = begin
                    var"(c\"enum CXDiagnosticDisplayOptions\")"
                end
            const var"c\"CXDiagnostic_DisplaySourceLocation\"" = var"(c\"enum CXDiagnosticDisplayOptions\")"(0x0000000000000001)
            const var"c\"CXDiagnostic_DisplayColumn\"" = var"(c\"enum CXDiagnosticDisplayOptions\")"(0x0000000000000002)
            const var"c\"CXDiagnostic_DisplaySourceRanges\"" = var"(c\"enum CXDiagnosticDisplayOptions\")"(0x0000000000000004)
            const var"c\"CXDiagnostic_DisplayOption\"" = var"(c\"enum CXDiagnosticDisplayOptions\")"(0x0000000000000008)
            const var"c\"CXDiagnostic_DisplayCategoryId\"" = var"(c\"enum CXDiagnosticDisplayOptions\")"(0x0000000000000010)
            const var"c\"CXDiagnostic_DisplayCategoryName\"" = var"(c\"enum CXDiagnosticDisplayOptions\")"(0x0000000000000020)
            const CXDiagnosticDisplayOptions = var"c\"enum CXDiagnosticDisplayOptions\""
            const CXDiagnostic_DisplaySourceLocation = var"c\"CXDiagnostic_DisplaySourceLocation\""
            const CXDiagnostic_DisplayColumn = var"c\"CXDiagnostic_DisplayColumn\""
            const CXDiagnostic_DisplaySourceRanges = var"c\"CXDiagnostic_DisplaySourceRanges\""
            const CXDiagnostic_DisplayOption = var"c\"CXDiagnostic_DisplayOption\""
            const CXDiagnostic_DisplayCategoryId = var"c\"CXDiagnostic_DisplayCategoryId\""
            const CXDiagnostic_DisplayCategoryName = var"c\"CXDiagnostic_DisplayCategoryName\""
            export var"c\"enum CXDiagnosticDisplayOptions\"", var"(c\"enum CXDiagnosticDisplayOptions\")", var"c\"CXDiagnostic_DisplaySourceLocation\"", var"c\"CXDiagnostic_DisplayColumn\"", var"c\"CXDiagnostic_DisplaySourceRanges\"", var"c\"CXDiagnostic_DisplayOption\"", var"c\"CXDiagnostic_DisplayCategoryId\"", var"c\"CXDiagnostic_DisplayCategoryName\""
            export CXDiagnosticDisplayOptions, CXDiagnostic_DisplaySourceLocation, CXDiagnostic_DisplayColumn, CXDiagnostic_DisplaySourceRanges, CXDiagnostic_DisplayOption, CXDiagnostic_DisplayCategoryId, CXDiagnostic_DisplayCategoryName
            var"c\"enum CXDiagnosticDisplayOptions\""
        end
        begin
            const var"c\"clang_formatDiagnostic\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXDiagnostic\"", C.Cuint}, :cdecl}, libpath, :clang_formatDiagnostic}()
            (func::C.typeof(var"c\"clang_formatDiagnostic\""))(var"c\"Diagnostic\"", var"c\"Options\"") = begin
                    C.funccall(func, var"c\"Diagnostic\"", var"c\"Options\"")
                end
            const clang_formatDiagnostic = var"c\"clang_formatDiagnostic\""
            export var"c\"clang_formatDiagnostic\""
            export clang_formatDiagnostic
            var"c\"clang_formatDiagnostic\""
        end
        begin
            const var"c\"clang_defaultDiagnosticDisplayOptions\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{}, :cdecl}, libpath, :clang_defaultDiagnosticDisplayOptions}()
            (func::C.typeof(var"c\"clang_defaultDiagnosticDisplayOptions\""))() = begin
                    C.funccall(func)
                end
            const clang_defaultDiagnosticDisplayOptions = var"c\"clang_defaultDiagnosticDisplayOptions\""
            export var"c\"clang_defaultDiagnosticDisplayOptions\""
            export clang_defaultDiagnosticDisplayOptions
            var"c\"clang_defaultDiagnosticDisplayOptions\""
        end
        begin
            const var"c\"clang_getDiagnosticSeverity\"" = C.Cbinding{C.Cfunction{var"c\"enum CXDiagnosticSeverity\"", C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getDiagnosticSeverity}()
            (func::C.typeof(var"c\"clang_getDiagnosticSeverity\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getDiagnosticSeverity = var"c\"clang_getDiagnosticSeverity\""
            export var"c\"clang_getDiagnosticSeverity\""
            export clang_getDiagnosticSeverity
            var"c\"clang_getDiagnosticSeverity\""
        end
        begin
            const var"c\"clang_getDiagnosticLocation\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getDiagnosticLocation}()
            (func::C.typeof(var"c\"clang_getDiagnosticLocation\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getDiagnosticLocation = var"c\"clang_getDiagnosticLocation\""
            export var"c\"clang_getDiagnosticLocation\""
            export clang_getDiagnosticLocation
            var"c\"clang_getDiagnosticLocation\""
        end
        begin
            const var"c\"clang_getDiagnosticSpelling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getDiagnosticSpelling}()
            (func::C.typeof(var"c\"clang_getDiagnosticSpelling\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getDiagnosticSpelling = var"c\"clang_getDiagnosticSpelling\""
            export var"c\"clang_getDiagnosticSpelling\""
            export clang_getDiagnosticSpelling
            var"c\"clang_getDiagnosticSpelling\""
        end
        begin
            const var"c\"clang_getDiagnosticOption\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXDiagnostic\"", C.Cptr{var"c\"CXString\""}}, :cdecl}, libpath, :clang_getDiagnosticOption}()
            (func::C.typeof(var"c\"clang_getDiagnosticOption\""))(var"c\"Diag\"", var"c\"Disable\"") = begin
                    C.funccall(func, var"c\"Diag\"", var"c\"Disable\"")
                end
            const clang_getDiagnosticOption = var"c\"clang_getDiagnosticOption\""
            export var"c\"clang_getDiagnosticOption\""
            export clang_getDiagnosticOption
            var"c\"clang_getDiagnosticOption\""
        end
        begin
            const var"c\"clang_getDiagnosticCategory\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getDiagnosticCategory}()
            (func::C.typeof(var"c\"clang_getDiagnosticCategory\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getDiagnosticCategory = var"c\"clang_getDiagnosticCategory\""
            export var"c\"clang_getDiagnosticCategory\""
            export clang_getDiagnosticCategory
            var"c\"clang_getDiagnosticCategory\""
        end
        begin
            const var"c\"clang_getDiagnosticCategoryName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cuint}, :cdecl}, libpath, :clang_getDiagnosticCategoryName}()
            (func::C.typeof(var"c\"clang_getDiagnosticCategoryName\""))(var"c\"Category\"") = begin
                    C.funccall(func, var"c\"Category\"")
                end
            const clang_getDiagnosticCategoryName = var"c\"clang_getDiagnosticCategoryName\""
            export var"c\"clang_getDiagnosticCategoryName\""
            export clang_getDiagnosticCategoryName
            var"c\"clang_getDiagnosticCategoryName\""
        end
        begin
            const var"c\"clang_getDiagnosticCategoryText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getDiagnosticCategoryText}()
            (func::C.typeof(var"c\"clang_getDiagnosticCategoryText\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getDiagnosticCategoryText = var"c\"clang_getDiagnosticCategoryText\""
            export var"c\"clang_getDiagnosticCategoryText\""
            export clang_getDiagnosticCategoryText
            var"c\"clang_getDiagnosticCategoryText\""
        end
        begin
            const var"c\"clang_getDiagnosticNumRanges\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getDiagnosticNumRanges}()
            (func::C.typeof(var"c\"clang_getDiagnosticNumRanges\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getDiagnosticNumRanges = var"c\"clang_getDiagnosticNumRanges\""
            export var"c\"clang_getDiagnosticNumRanges\""
            export clang_getDiagnosticNumRanges
            var"c\"clang_getDiagnosticNumRanges\""
        end
        begin
            const var"c\"clang_getDiagnosticRange\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{var"c\"CXDiagnostic\"", C.Cuint}, :cdecl}, libpath, :clang_getDiagnosticRange}()
            (func::C.typeof(var"c\"clang_getDiagnosticRange\""))(var"c\"Diagnostic\"", var"c\"Range\"") = begin
                    C.funccall(func, var"c\"Diagnostic\"", var"c\"Range\"")
                end
            const clang_getDiagnosticRange = var"c\"clang_getDiagnosticRange\""
            export var"c\"clang_getDiagnosticRange\""
            export clang_getDiagnosticRange
            var"c\"clang_getDiagnosticRange\""
        end
        begin
            const var"c\"clang_getDiagnosticNumFixIts\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXDiagnostic\""}, :cdecl}, libpath, :clang_getDiagnosticNumFixIts}()
            (func::C.typeof(var"c\"clang_getDiagnosticNumFixIts\""))(var"c\"Diagnostic\"") = begin
                    C.funccall(func, var"c\"Diagnostic\"")
                end
            const clang_getDiagnosticNumFixIts = var"c\"clang_getDiagnosticNumFixIts\""
            export var"c\"clang_getDiagnosticNumFixIts\""
            export clang_getDiagnosticNumFixIts
            var"c\"clang_getDiagnosticNumFixIts\""
        end
        begin
            const var"c\"clang_getDiagnosticFixIt\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXDiagnostic\"", C.Cuint, C.Cptr{var"c\"CXSourceRange\""}}, :cdecl}, libpath, :clang_getDiagnosticFixIt}()
            (func::C.typeof(var"c\"clang_getDiagnosticFixIt\""))(var"c\"Diagnostic\"", var"c\"FixIt\"", var"c\"ReplacementRange\"") = begin
                    C.funccall(func, var"c\"Diagnostic\"", var"c\"FixIt\"", var"c\"ReplacementRange\"")
                end
            const clang_getDiagnosticFixIt = var"c\"clang_getDiagnosticFixIt\""
            export var"c\"clang_getDiagnosticFixIt\""
            export clang_getDiagnosticFixIt
            var"c\"clang_getDiagnosticFixIt\""
        end
        begin
            const var"c\"clang_getTranslationUnitSpelling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_getTranslationUnitSpelling}()
            (func::C.typeof(var"c\"clang_getTranslationUnitSpelling\""))(var"c\"CTUnit\"") = begin
                    C.funccall(func, var"c\"CTUnit\"")
                end
            const clang_getTranslationUnitSpelling = var"c\"clang_getTranslationUnitSpelling\""
            export var"c\"clang_getTranslationUnitSpelling\""
            export clang_getTranslationUnitSpelling
            var"c\"clang_getTranslationUnitSpelling\""
        end
        begin
            const var"c\"clang_createTranslationUnitFromSourceFile\"" = C.Cbinding{C.Cfunction{var"c\"CXTranslationUnit\"", C.Tuple{var"c\"CXIndex\"", C.Cptr{C.Cconst{C.Cchar}}, C.Cint, C.Cptr{C.Cconst{C.Cptr{C.Cconst{C.Cchar}}}}, C.Cuint, C.Cptr{var"c\"struct CXUnsavedFile\""}}, :cdecl}, libpath, :clang_createTranslationUnitFromSourceFile}()
            (func::C.typeof(var"c\"clang_createTranslationUnitFromSourceFile\""))(var"c\"CIdx\"", var"c\"source_filename\"", var"c\"num_clang_command_line_args\"", var"c\"clang_command_line_args\"", var"c\"num_unsaved_files\"", var"c\"unsaved_files\"") = begin
                    C.funccall(func, var"c\"CIdx\"", var"c\"source_filename\"", var"c\"num_clang_command_line_args\"", var"c\"clang_command_line_args\"", var"c\"num_unsaved_files\"", var"c\"unsaved_files\"")
                end
            const clang_createTranslationUnitFromSourceFile = var"c\"clang_createTranslationUnitFromSourceFile\""
            export var"c\"clang_createTranslationUnitFromSourceFile\""
            export clang_createTranslationUnitFromSourceFile
            var"c\"clang_createTranslationUnitFromSourceFile\""
        end
        begin
            const var"c\"clang_createTranslationUnit\"" = C.Cbinding{C.Cfunction{var"c\"CXTranslationUnit\"", C.Tuple{var"c\"CXIndex\"", C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_createTranslationUnit}()
            (func::C.typeof(var"c\"clang_createTranslationUnit\""))(var"c\"CIdx\"", var"c\"ast_filename\"") = begin
                    C.funccall(func, var"c\"CIdx\"", var"c\"ast_filename\"")
                end
            const clang_createTranslationUnit = var"c\"clang_createTranslationUnit\""
            export var"c\"clang_createTranslationUnit\""
            export clang_createTranslationUnit
            var"c\"clang_createTranslationUnit\""
        end
        begin
            const var"c\"clang_createTranslationUnit2\"" = C.Cbinding{C.Cfunction{var"c\"enum CXErrorCode\"", C.Tuple{var"c\"CXIndex\"", C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{var"c\"CXTranslationUnit\""}}, :cdecl}, libpath, :clang_createTranslationUnit2}()
            (func::C.typeof(var"c\"clang_createTranslationUnit2\""))(var"c\"CIdx\"", var"c\"ast_filename\"", var"c\"out_TU\"") = begin
                    C.funccall(func, var"c\"CIdx\"", var"c\"ast_filename\"", var"c\"out_TU\"")
                end
            const clang_createTranslationUnit2 = var"c\"clang_createTranslationUnit2\""
            export var"c\"clang_createTranslationUnit2\""
            export clang_createTranslationUnit2
            var"c\"clang_createTranslationUnit2\""
        end
        begin
            abstract type var"c\"enum CXTranslationUnit_Flags\"" <: Cenum end
            const CXTranslationUnit_Flags = var"c\"enum CXTranslationUnit_Flags\""
            export var"c\"enum CXTranslationUnit_Flags\""
            export CXTranslationUnit_Flags
            var"c\"enum CXTranslationUnit_Flags\""
        end
        begin
            primitive type var"(c\"enum CXTranslationUnit_Flags\")" <: var"c\"enum CXTranslationUnit_Flags\"" 32 end
            (::(Type){var"(c\"enum CXTranslationUnit_Flags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTranslationUnit_Flags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTranslationUnit_Flags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXTranslationUnit_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXTranslationUnit_DetailedPreprocessingRecord\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXTranslationUnit_Incomplete\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXTranslationUnit_PrecompiledPreamble\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXTranslationUnit_CacheCompletionResults\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXTranslationUnit_ForSerialization\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXTranslationUnit_CXXChainedPCH\""), 0x0000000000000020}, C.Tuple{Symbol("c\"CXTranslationUnit_SkipFunctionBodies\""), 0x0000000000000040}, C.Tuple{Symbol("c\"CXTranslationUnit_IncludeBriefCommentsInCodeCompletion\""), 0x0000000000000080}, C.Tuple{Symbol("c\"CXTranslationUnit_CreatePreambleOnFirstParse\""), 0x0000000000000100}, C.Tuple{Symbol("c\"CXTranslationUnit_KeepGoing\""), 0x0000000000000200}, C.Tuple{Symbol("c\"CXTranslationUnit_SingleFileParse\""), 0x0000000000000400}, C.Tuple{Symbol("c\"CXTranslationUnit_LimitSkipFunctionBodiesToPreamble\""), 0x0000000000000800}, C.Tuple{Symbol("c\"CXTranslationUnit_IncludeAttributedTypes\""), 0x0000000000001000}, C.Tuple{Symbol("c\"CXTranslationUnit_VisitImplicitAttributes\""), 0x0000000000002000}, C.Tuple{Symbol("c\"CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles\""), 0x0000000000004000}, C.Tuple{Symbol("c\"CXTranslationUnit_RetainExcludedConditionalBlocks\""), 0x0000000000008000}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTranslationUnit_Flags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTranslationUnit_Flags\")"}) = begin
                    var"(c\"enum CXTranslationUnit_Flags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTranslationUnit_Flags\""}) = begin
                    var"(c\"enum CXTranslationUnit_Flags\")"
                end
            const var"c\"CXTranslationUnit_None\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000000)
            const var"c\"CXTranslationUnit_DetailedPreprocessingRecord\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000001)
            const var"c\"CXTranslationUnit_Incomplete\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000002)
            const var"c\"CXTranslationUnit_PrecompiledPreamble\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000004)
            const var"c\"CXTranslationUnit_CacheCompletionResults\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000008)
            const var"c\"CXTranslationUnit_ForSerialization\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000010)
            const var"c\"CXTranslationUnit_CXXChainedPCH\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000020)
            const var"c\"CXTranslationUnit_SkipFunctionBodies\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000040)
            const var"c\"CXTranslationUnit_IncludeBriefCommentsInCodeCompletion\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000080)
            const var"c\"CXTranslationUnit_CreatePreambleOnFirstParse\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000100)
            const var"c\"CXTranslationUnit_KeepGoing\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000200)
            const var"c\"CXTranslationUnit_SingleFileParse\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000400)
            const var"c\"CXTranslationUnit_LimitSkipFunctionBodiesToPreamble\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000000800)
            const var"c\"CXTranslationUnit_IncludeAttributedTypes\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000001000)
            const var"c\"CXTranslationUnit_VisitImplicitAttributes\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000002000)
            const var"c\"CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000004000)
            const var"c\"CXTranslationUnit_RetainExcludedConditionalBlocks\"" = var"(c\"enum CXTranslationUnit_Flags\")"(0x0000000000008000)
            const CXTranslationUnit_Flags = var"c\"enum CXTranslationUnit_Flags\""
            const CXTranslationUnit_None = var"c\"CXTranslationUnit_None\""
            const CXTranslationUnit_DetailedPreprocessingRecord = var"c\"CXTranslationUnit_DetailedPreprocessingRecord\""
            const CXTranslationUnit_Incomplete = var"c\"CXTranslationUnit_Incomplete\""
            const CXTranslationUnit_PrecompiledPreamble = var"c\"CXTranslationUnit_PrecompiledPreamble\""
            const CXTranslationUnit_CacheCompletionResults = var"c\"CXTranslationUnit_CacheCompletionResults\""
            const CXTranslationUnit_ForSerialization = var"c\"CXTranslationUnit_ForSerialization\""
            const CXTranslationUnit_CXXChainedPCH = var"c\"CXTranslationUnit_CXXChainedPCH\""
            const CXTranslationUnit_SkipFunctionBodies = var"c\"CXTranslationUnit_SkipFunctionBodies\""
            const CXTranslationUnit_IncludeBriefCommentsInCodeCompletion = var"c\"CXTranslationUnit_IncludeBriefCommentsInCodeCompletion\""
            const CXTranslationUnit_CreatePreambleOnFirstParse = var"c\"CXTranslationUnit_CreatePreambleOnFirstParse\""
            const CXTranslationUnit_KeepGoing = var"c\"CXTranslationUnit_KeepGoing\""
            const CXTranslationUnit_SingleFileParse = var"c\"CXTranslationUnit_SingleFileParse\""
            const CXTranslationUnit_LimitSkipFunctionBodiesToPreamble = var"c\"CXTranslationUnit_LimitSkipFunctionBodiesToPreamble\""
            const CXTranslationUnit_IncludeAttributedTypes = var"c\"CXTranslationUnit_IncludeAttributedTypes\""
            const CXTranslationUnit_VisitImplicitAttributes = var"c\"CXTranslationUnit_VisitImplicitAttributes\""
            const CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles = var"c\"CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles\""
            const CXTranslationUnit_RetainExcludedConditionalBlocks = var"c\"CXTranslationUnit_RetainExcludedConditionalBlocks\""
            export var"c\"enum CXTranslationUnit_Flags\"", var"(c\"enum CXTranslationUnit_Flags\")", var"c\"CXTranslationUnit_None\"", var"c\"CXTranslationUnit_DetailedPreprocessingRecord\"", var"c\"CXTranslationUnit_Incomplete\"", var"c\"CXTranslationUnit_PrecompiledPreamble\"", var"c\"CXTranslationUnit_CacheCompletionResults\"", var"c\"CXTranslationUnit_ForSerialization\"", var"c\"CXTranslationUnit_CXXChainedPCH\"", var"c\"CXTranslationUnit_SkipFunctionBodies\"", var"c\"CXTranslationUnit_IncludeBriefCommentsInCodeCompletion\"", var"c\"CXTranslationUnit_CreatePreambleOnFirstParse\"", var"c\"CXTranslationUnit_KeepGoing\"", var"c\"CXTranslationUnit_SingleFileParse\"", var"c\"CXTranslationUnit_LimitSkipFunctionBodiesToPreamble\"", var"c\"CXTranslationUnit_IncludeAttributedTypes\"", var"c\"CXTranslationUnit_VisitImplicitAttributes\"", var"c\"CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles\"", var"c\"CXTranslationUnit_RetainExcludedConditionalBlocks\""
            export CXTranslationUnit_Flags, CXTranslationUnit_None, CXTranslationUnit_DetailedPreprocessingRecord, CXTranslationUnit_Incomplete, CXTranslationUnit_PrecompiledPreamble, CXTranslationUnit_CacheCompletionResults, CXTranslationUnit_ForSerialization, CXTranslationUnit_CXXChainedPCH, CXTranslationUnit_SkipFunctionBodies, CXTranslationUnit_IncludeBriefCommentsInCodeCompletion, CXTranslationUnit_CreatePreambleOnFirstParse, CXTranslationUnit_KeepGoing, CXTranslationUnit_SingleFileParse, CXTranslationUnit_LimitSkipFunctionBodiesToPreamble, CXTranslationUnit_IncludeAttributedTypes, CXTranslationUnit_VisitImplicitAttributes, CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles, CXTranslationUnit_RetainExcludedConditionalBlocks
            var"c\"enum CXTranslationUnit_Flags\""
        end
        begin
            const var"c\"clang_defaultEditingTranslationUnitOptions\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{}, :cdecl}, libpath, :clang_defaultEditingTranslationUnitOptions}()
            (func::C.typeof(var"c\"clang_defaultEditingTranslationUnitOptions\""))() = begin
                    C.funccall(func)
                end
            const clang_defaultEditingTranslationUnitOptions = var"c\"clang_defaultEditingTranslationUnitOptions\""
            export var"c\"clang_defaultEditingTranslationUnitOptions\""
            export clang_defaultEditingTranslationUnitOptions
            var"c\"clang_defaultEditingTranslationUnitOptions\""
        end
        begin
            const var"c\"clang_parseTranslationUnit\"" = C.Cbinding{C.Cfunction{var"c\"CXTranslationUnit\"", C.Tuple{var"c\"CXIndex\"", C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{C.Cconst{C.Cptr{C.Cconst{C.Cchar}}}}, C.Cint, C.Cptr{var"c\"struct CXUnsavedFile\""}, C.Cuint, C.Cuint}, :cdecl}, libpath, :clang_parseTranslationUnit}()
            (func::C.typeof(var"c\"clang_parseTranslationUnit\""))(var"c\"CIdx\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"") = begin
                    C.funccall(func, var"c\"CIdx\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"")
                end
            const clang_parseTranslationUnit = var"c\"clang_parseTranslationUnit\""
            export var"c\"clang_parseTranslationUnit\""
            export clang_parseTranslationUnit
            var"c\"clang_parseTranslationUnit\""
        end
        begin
            const var"c\"clang_parseTranslationUnit2\"" = C.Cbinding{C.Cfunction{var"c\"enum CXErrorCode\"", C.Tuple{var"c\"CXIndex\"", C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{C.Cconst{C.Cptr{C.Cconst{C.Cchar}}}}, C.Cint, C.Cptr{var"c\"struct CXUnsavedFile\""}, C.Cuint, C.Cuint, C.Cptr{var"c\"CXTranslationUnit\""}}, :cdecl}, libpath, :clang_parseTranslationUnit2}()
            (func::C.typeof(var"c\"clang_parseTranslationUnit2\""))(var"c\"CIdx\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"", var"c\"out_TU\"") = begin
                    C.funccall(func, var"c\"CIdx\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"", var"c\"out_TU\"")
                end
            const clang_parseTranslationUnit2 = var"c\"clang_parseTranslationUnit2\""
            export var"c\"clang_parseTranslationUnit2\""
            export clang_parseTranslationUnit2
            var"c\"clang_parseTranslationUnit2\""
        end
        begin
            const var"c\"clang_parseTranslationUnit2FullArgv\"" = C.Cbinding{C.Cfunction{var"c\"enum CXErrorCode\"", C.Tuple{var"c\"CXIndex\"", C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{C.Cconst{C.Cptr{C.Cconst{C.Cchar}}}}, C.Cint, C.Cptr{var"c\"struct CXUnsavedFile\""}, C.Cuint, C.Cuint, C.Cptr{var"c\"CXTranslationUnit\""}}, :cdecl}, libpath, :clang_parseTranslationUnit2FullArgv}()
            (func::C.typeof(var"c\"clang_parseTranslationUnit2FullArgv\""))(var"c\"CIdx\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"", var"c\"out_TU\"") = begin
                    C.funccall(func, var"c\"CIdx\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"", var"c\"out_TU\"")
                end
            const clang_parseTranslationUnit2FullArgv = var"c\"clang_parseTranslationUnit2FullArgv\""
            export var"c\"clang_parseTranslationUnit2FullArgv\""
            export clang_parseTranslationUnit2FullArgv
            var"c\"clang_parseTranslationUnit2FullArgv\""
        end
        begin
            abstract type var"c\"enum CXSaveTranslationUnit_Flags\"" <: Cenum end
            const CXSaveTranslationUnit_Flags = var"c\"enum CXSaveTranslationUnit_Flags\""
            export var"c\"enum CXSaveTranslationUnit_Flags\""
            export CXSaveTranslationUnit_Flags
            var"c\"enum CXSaveTranslationUnit_Flags\""
        end
        begin
            primitive type var"(c\"enum CXSaveTranslationUnit_Flags\")" <: var"c\"enum CXSaveTranslationUnit_Flags\"" 32 end
            (::(Type){var"(c\"enum CXSaveTranslationUnit_Flags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXSaveTranslationUnit_Flags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXSaveTranslationUnit_Flags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXSaveTranslationUnit_None\""), 0x0000000000000000}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXSaveTranslationUnit_Flags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXSaveTranslationUnit_Flags\")"}) = begin
                    var"(c\"enum CXSaveTranslationUnit_Flags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXSaveTranslationUnit_Flags\""}) = begin
                    var"(c\"enum CXSaveTranslationUnit_Flags\")"
                end
            const var"c\"CXSaveTranslationUnit_None\"" = var"(c\"enum CXSaveTranslationUnit_Flags\")"(0x0000000000000000)
            const CXSaveTranslationUnit_Flags = var"c\"enum CXSaveTranslationUnit_Flags\""
            const CXSaveTranslationUnit_None = var"c\"CXSaveTranslationUnit_None\""
            export var"c\"enum CXSaveTranslationUnit_Flags\"", var"(c\"enum CXSaveTranslationUnit_Flags\")", var"c\"CXSaveTranslationUnit_None\""
            export CXSaveTranslationUnit_Flags, CXSaveTranslationUnit_None
            var"c\"enum CXSaveTranslationUnit_Flags\""
        end
        begin
            const var"c\"clang_defaultSaveOptions\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_defaultSaveOptions}()
            (func::C.typeof(var"c\"clang_defaultSaveOptions\""))(var"c\"TU\"") = begin
                    C.funccall(func, var"c\"TU\"")
                end
            const clang_defaultSaveOptions = var"c\"clang_defaultSaveOptions\""
            export var"c\"clang_defaultSaveOptions\""
            export clang_defaultSaveOptions
            var"c\"clang_defaultSaveOptions\""
        end
        begin
            abstract type var"c\"enum CXSaveError\"" <: Cenum end
            const CXSaveError = var"c\"enum CXSaveError\""
            export var"c\"enum CXSaveError\""
            export CXSaveError
            var"c\"enum CXSaveError\""
        end
        begin
            primitive type var"(c\"enum CXSaveError\")" <: var"c\"enum CXSaveError\"" 32 end
            (::(Type){var"(c\"enum CXSaveError\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXSaveError\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXSaveError\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXSaveError_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXSaveError_Unknown\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXSaveError_TranslationErrors\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXSaveError_InvalidTU\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXSaveError\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXSaveError\")"}) = begin
                    var"(c\"enum CXSaveError\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXSaveError\""}) = begin
                    var"(c\"enum CXSaveError\")"
                end
            const var"c\"CXSaveError_None\"" = var"(c\"enum CXSaveError\")"(0x0000000000000000)
            const var"c\"CXSaveError_Unknown\"" = var"(c\"enum CXSaveError\")"(0x0000000000000001)
            const var"c\"CXSaveError_TranslationErrors\"" = var"(c\"enum CXSaveError\")"(0x0000000000000002)
            const var"c\"CXSaveError_InvalidTU\"" = var"(c\"enum CXSaveError\")"(0x0000000000000003)
            const CXSaveError = var"c\"enum CXSaveError\""
            const CXSaveError_None = var"c\"CXSaveError_None\""
            const CXSaveError_Unknown = var"c\"CXSaveError_Unknown\""
            const CXSaveError_TranslationErrors = var"c\"CXSaveError_TranslationErrors\""
            const CXSaveError_InvalidTU = var"c\"CXSaveError_InvalidTU\""
            export var"c\"enum CXSaveError\"", var"(c\"enum CXSaveError\")", var"c\"CXSaveError_None\"", var"c\"CXSaveError_Unknown\"", var"c\"CXSaveError_TranslationErrors\"", var"c\"CXSaveError_InvalidTU\""
            export CXSaveError, CXSaveError_None, CXSaveError_Unknown, CXSaveError_TranslationErrors, CXSaveError_InvalidTU
            var"c\"enum CXSaveError\""
        end
        begin
            const var"c\"clang_saveTranslationUnit\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXTranslationUnit\"", C.Cptr{C.Cconst{C.Cchar}}, C.Cuint}, :cdecl}, libpath, :clang_saveTranslationUnit}()
            (func::C.typeof(var"c\"clang_saveTranslationUnit\""))(var"c\"TU\"", var"c\"FileName\"", var"c\"options\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"FileName\"", var"c\"options\"")
                end
            const clang_saveTranslationUnit = var"c\"clang_saveTranslationUnit\""
            export var"c\"clang_saveTranslationUnit\""
            export clang_saveTranslationUnit
            var"c\"clang_saveTranslationUnit\""
        end
        begin
            const var"c\"clang_suspendTranslationUnit\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_suspendTranslationUnit}()
            (func::C.typeof(var"c\"clang_suspendTranslationUnit\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_suspendTranslationUnit = var"c\"clang_suspendTranslationUnit\""
            export var"c\"clang_suspendTranslationUnit\""
            export clang_suspendTranslationUnit
            var"c\"clang_suspendTranslationUnit\""
        end
        begin
            const var"c\"clang_disposeTranslationUnit\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_disposeTranslationUnit}()
            (func::C.typeof(var"c\"clang_disposeTranslationUnit\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_disposeTranslationUnit = var"c\"clang_disposeTranslationUnit\""
            export var"c\"clang_disposeTranslationUnit\""
            export clang_disposeTranslationUnit
            var"c\"clang_disposeTranslationUnit\""
        end
        begin
            abstract type var"c\"enum CXReparse_Flags\"" <: Cenum end
            const CXReparse_Flags = var"c\"enum CXReparse_Flags\""
            export var"c\"enum CXReparse_Flags\""
            export CXReparse_Flags
            var"c\"enum CXReparse_Flags\""
        end
        begin
            primitive type var"(c\"enum CXReparse_Flags\")" <: var"c\"enum CXReparse_Flags\"" 32 end
            (::(Type){var"(c\"enum CXReparse_Flags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXReparse_Flags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXReparse_Flags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXReparse_None\""), 0x0000000000000000}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXReparse_Flags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXReparse_Flags\")"}) = begin
                    var"(c\"enum CXReparse_Flags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXReparse_Flags\""}) = begin
                    var"(c\"enum CXReparse_Flags\")"
                end
            const var"c\"CXReparse_None\"" = var"(c\"enum CXReparse_Flags\")"(0x0000000000000000)
            const CXReparse_Flags = var"c\"enum CXReparse_Flags\""
            const CXReparse_None = var"c\"CXReparse_None\""
            export var"c\"enum CXReparse_Flags\"", var"(c\"enum CXReparse_Flags\")", var"c\"CXReparse_None\""
            export CXReparse_Flags, CXReparse_None
            var"c\"enum CXReparse_Flags\""
        end
        begin
            const var"c\"clang_defaultReparseOptions\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_defaultReparseOptions}()
            (func::C.typeof(var"c\"clang_defaultReparseOptions\""))(var"c\"TU\"") = begin
                    C.funccall(func, var"c\"TU\"")
                end
            const clang_defaultReparseOptions = var"c\"clang_defaultReparseOptions\""
            export var"c\"clang_defaultReparseOptions\""
            export clang_defaultReparseOptions
            var"c\"clang_defaultReparseOptions\""
        end
        begin
            const var"c\"clang_reparseTranslationUnit\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXTranslationUnit\"", C.Cuint, C.Cptr{var"c\"struct CXUnsavedFile\""}, C.Cuint}, :cdecl}, libpath, :clang_reparseTranslationUnit}()
            (func::C.typeof(var"c\"clang_reparseTranslationUnit\""))(var"c\"TU\"", var"c\"num_unsaved_files\"", var"c\"unsaved_files\"", var"c\"options\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"num_unsaved_files\"", var"c\"unsaved_files\"", var"c\"options\"")
                end
            const clang_reparseTranslationUnit = var"c\"clang_reparseTranslationUnit\""
            export var"c\"clang_reparseTranslationUnit\""
            export clang_reparseTranslationUnit
            var"c\"clang_reparseTranslationUnit\""
        end
        begin
            abstract type var"c\"enum CXTUResourceUsageKind\"" <: Cenum end
            const CXTUResourceUsageKind = var"c\"enum CXTUResourceUsageKind\""
            export var"c\"enum CXTUResourceUsageKind\""
            export CXTUResourceUsageKind
            var"c\"enum CXTUResourceUsageKind\""
        end
        begin
            primitive type var"(c\"enum CXTUResourceUsageKind\")" <: var"c\"enum CXTUResourceUsageKind\"" 32 end
            (::(Type){var"(c\"enum CXTUResourceUsageKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTUResourceUsageKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTUResourceUsageKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXTUResourceUsage_AST\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXTUResourceUsage_Identifiers\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXTUResourceUsage_Selectors\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXTUResourceUsage_GlobalCompletionResults\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXTUResourceUsage_SourceManagerContentCache\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXTUResourceUsage_AST_SideTables\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXTUResourceUsage_SourceManager_Membuffer_Malloc\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXTUResourceUsage_SourceManager_Membuffer_MMap\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXTUResourceUsage_ExternalASTSource_Membuffer_MMap\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXTUResourceUsage_Preprocessor\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXTUResourceUsage_PreprocessingRecord\""), 0x000000000000000c}, C.Tuple{Symbol("c\"CXTUResourceUsage_SourceManager_DataStructures\""), 0x000000000000000d}, C.Tuple{Symbol("c\"CXTUResourceUsage_Preprocessor_HeaderSearch\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXTUResourceUsage_MEMORY_IN_BYTES_END\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXTUResourceUsage_First\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXTUResourceUsage_Last\""), 0x000000000000000e}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTUResourceUsageKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTUResourceUsageKind\")"}) = begin
                    var"(c\"enum CXTUResourceUsageKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTUResourceUsageKind\""}) = begin
                    var"(c\"enum CXTUResourceUsageKind\")"
                end
            const var"c\"CXTUResourceUsage_AST\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000001)
            const var"c\"CXTUResourceUsage_Identifiers\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000002)
            const var"c\"CXTUResourceUsage_Selectors\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000003)
            const var"c\"CXTUResourceUsage_GlobalCompletionResults\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000004)
            const var"c\"CXTUResourceUsage_SourceManagerContentCache\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000005)
            const var"c\"CXTUResourceUsage_AST_SideTables\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000006)
            const var"c\"CXTUResourceUsage_SourceManager_Membuffer_Malloc\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000007)
            const var"c\"CXTUResourceUsage_SourceManager_Membuffer_MMap\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000008)
            const var"c\"CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000009)
            const var"c\"CXTUResourceUsage_ExternalASTSource_Membuffer_MMap\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x000000000000000a)
            const var"c\"CXTUResourceUsage_Preprocessor\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x000000000000000b)
            const var"c\"CXTUResourceUsage_PreprocessingRecord\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x000000000000000c)
            const var"c\"CXTUResourceUsage_SourceManager_DataStructures\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x000000000000000d)
            const var"c\"CXTUResourceUsage_Preprocessor_HeaderSearch\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x000000000000000e)
            const var"c\"CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000001)
            const var"c\"CXTUResourceUsage_MEMORY_IN_BYTES_END\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x000000000000000e)
            const var"c\"CXTUResourceUsage_First\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x0000000000000001)
            const var"c\"CXTUResourceUsage_Last\"" = var"(c\"enum CXTUResourceUsageKind\")"(0x000000000000000e)
            const CXTUResourceUsageKind = var"c\"enum CXTUResourceUsageKind\""
            const CXTUResourceUsage_AST = var"c\"CXTUResourceUsage_AST\""
            const CXTUResourceUsage_Identifiers = var"c\"CXTUResourceUsage_Identifiers\""
            const CXTUResourceUsage_Selectors = var"c\"CXTUResourceUsage_Selectors\""
            const CXTUResourceUsage_GlobalCompletionResults = var"c\"CXTUResourceUsage_GlobalCompletionResults\""
            const CXTUResourceUsage_SourceManagerContentCache = var"c\"CXTUResourceUsage_SourceManagerContentCache\""
            const CXTUResourceUsage_AST_SideTables = var"c\"CXTUResourceUsage_AST_SideTables\""
            const CXTUResourceUsage_SourceManager_Membuffer_Malloc = var"c\"CXTUResourceUsage_SourceManager_Membuffer_Malloc\""
            const CXTUResourceUsage_SourceManager_Membuffer_MMap = var"c\"CXTUResourceUsage_SourceManager_Membuffer_MMap\""
            const CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc = var"c\"CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc\""
            const CXTUResourceUsage_ExternalASTSource_Membuffer_MMap = var"c\"CXTUResourceUsage_ExternalASTSource_Membuffer_MMap\""
            const CXTUResourceUsage_Preprocessor = var"c\"CXTUResourceUsage_Preprocessor\""
            const CXTUResourceUsage_PreprocessingRecord = var"c\"CXTUResourceUsage_PreprocessingRecord\""
            const CXTUResourceUsage_SourceManager_DataStructures = var"c\"CXTUResourceUsage_SourceManager_DataStructures\""
            const CXTUResourceUsage_Preprocessor_HeaderSearch = var"c\"CXTUResourceUsage_Preprocessor_HeaderSearch\""
            const CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN = var"c\"CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN\""
            const CXTUResourceUsage_MEMORY_IN_BYTES_END = var"c\"CXTUResourceUsage_MEMORY_IN_BYTES_END\""
            const CXTUResourceUsage_First = var"c\"CXTUResourceUsage_First\""
            const CXTUResourceUsage_Last = var"c\"CXTUResourceUsage_Last\""
            export var"c\"enum CXTUResourceUsageKind\"", var"(c\"enum CXTUResourceUsageKind\")", var"c\"CXTUResourceUsage_AST\"", var"c\"CXTUResourceUsage_Identifiers\"", var"c\"CXTUResourceUsage_Selectors\"", var"c\"CXTUResourceUsage_GlobalCompletionResults\"", var"c\"CXTUResourceUsage_SourceManagerContentCache\"", var"c\"CXTUResourceUsage_AST_SideTables\"", var"c\"CXTUResourceUsage_SourceManager_Membuffer_Malloc\"", var"c\"CXTUResourceUsage_SourceManager_Membuffer_MMap\"", var"c\"CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc\"", var"c\"CXTUResourceUsage_ExternalASTSource_Membuffer_MMap\"", var"c\"CXTUResourceUsage_Preprocessor\"", var"c\"CXTUResourceUsage_PreprocessingRecord\"", var"c\"CXTUResourceUsage_SourceManager_DataStructures\"", var"c\"CXTUResourceUsage_Preprocessor_HeaderSearch\"", var"c\"CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN\"", var"c\"CXTUResourceUsage_MEMORY_IN_BYTES_END\"", var"c\"CXTUResourceUsage_First\"", var"c\"CXTUResourceUsage_Last\""
            export CXTUResourceUsageKind, CXTUResourceUsage_AST, CXTUResourceUsage_Identifiers, CXTUResourceUsage_Selectors, CXTUResourceUsage_GlobalCompletionResults, CXTUResourceUsage_SourceManagerContentCache, CXTUResourceUsage_AST_SideTables, CXTUResourceUsage_SourceManager_Membuffer_Malloc, CXTUResourceUsage_SourceManager_Membuffer_MMap, CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc, CXTUResourceUsage_ExternalASTSource_Membuffer_MMap, CXTUResourceUsage_Preprocessor, CXTUResourceUsage_PreprocessingRecord, CXTUResourceUsage_SourceManager_DataStructures, CXTUResourceUsage_Preprocessor_HeaderSearch, CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN, CXTUResourceUsage_MEMORY_IN_BYTES_END, CXTUResourceUsage_First, CXTUResourceUsage_Last
            var"c\"enum CXTUResourceUsageKind\""
        end
        begin
            const var"c\"clang_getTUResourceUsageName\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{C.Cchar}}, C.Tuple{var"c\"enum CXTUResourceUsageKind\""}, :cdecl}, libpath, :clang_getTUResourceUsageName}()
            (func::C.typeof(var"c\"clang_getTUResourceUsageName\""))(var"c\"kind\"") = begin
                    C.funccall(func, var"c\"kind\"")
                end
            const clang_getTUResourceUsageName = var"c\"clang_getTUResourceUsageName\""
            export var"c\"clang_getTUResourceUsageName\""
            export clang_getTUResourceUsageName
            var"c\"clang_getTUResourceUsageName\""
        end
        begin
            abstract type var"c\"struct CXTUResourceUsageEntry\"" <: Cstruct end
            const CXTUResourceUsageEntry = var"c\"struct CXTUResourceUsageEntry\""
            export var"c\"struct CXTUResourceUsageEntry\""
            export CXTUResourceUsageEntry
            var"c\"struct CXTUResourceUsageEntry\""
        end
        begin
            struct var"(c\"struct CXTUResourceUsageEntry\")" <: var"c\"struct CXTUResourceUsageEntry\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"struct CXTUResourceUsageEntry\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"struct CXTUResourceUsageEntry\")"}) = begin
                    C.Tuple{C.Tuple{:kind, C.Tuple{var"c\"enum CXTUResourceUsageKind\"", C.bitstype(var"c\"enum CXTUResourceUsageKind\""), C.integraltype(var"c\"enum CXTUResourceUsageKind\""), 0, 0, -1}}, C.Tuple{:amount, C.Tuple{C.Culong, C.bitstype(C.Culong), C.integraltype(C.Culong), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"struct CXTUResourceUsageEntry\")"}) = begin
                    var"(c\"struct CXTUResourceUsageEntry\")"
                end
            (C.C).bitstype(::C.Type{var"c\"struct CXTUResourceUsageEntry\""}) = begin
                    var"(c\"struct CXTUResourceUsageEntry\")"
                end
            const CXTUResourceUsageEntry = var"c\"struct CXTUResourceUsageEntry\""
            export var"c\"struct CXTUResourceUsageEntry\"", var"(c\"struct CXTUResourceUsageEntry\")"
            export CXTUResourceUsageEntry
            var"c\"struct CXTUResourceUsageEntry\""
        end
        begin
            const var"c\"CXTUResourceUsageEntry\"" = var"c\"struct CXTUResourceUsageEntry\""
            const CXTUResourceUsageEntry = var"c\"CXTUResourceUsageEntry\""
            export var"c\"CXTUResourceUsageEntry\""
            export CXTUResourceUsageEntry
            var"c\"CXTUResourceUsageEntry\""
        end
        begin
            abstract type var"c\"struct CXTUResourceUsage\"" <: Cstruct end
            const CXTUResourceUsage = var"c\"struct CXTUResourceUsage\""
            export var"c\"struct CXTUResourceUsage\""
            export CXTUResourceUsage
            var"c\"struct CXTUResourceUsage\""
        end
        begin
            struct var"(c\"struct CXTUResourceUsage\")" <: var"c\"struct CXTUResourceUsage\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"struct CXTUResourceUsage\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"struct CXTUResourceUsage\")"}) = begin
                    C.Tuple{C.Tuple{:data, C.Tuple{C.Cptr{C.Cvoid}, C.bitstype(C.Cptr{C.Cvoid}), C.integraltype(C.Cptr{C.Cvoid}), 0, 0, -1}}, C.Tuple{:numEntries, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 8, 0, -1}}, C.Tuple{:entries, C.Tuple{C.Cptr{var"c\"CXTUResourceUsageEntry\""}, C.bitstype(C.Cptr{var"c\"CXTUResourceUsageEntry\""}), C.integraltype(C.Cptr{var"c\"CXTUResourceUsageEntry\""}), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"struct CXTUResourceUsage\")"}) = begin
                    var"(c\"struct CXTUResourceUsage\")"
                end
            (C.C).bitstype(::C.Type{var"c\"struct CXTUResourceUsage\""}) = begin
                    var"(c\"struct CXTUResourceUsage\")"
                end
            const CXTUResourceUsage = var"c\"struct CXTUResourceUsage\""
            export var"c\"struct CXTUResourceUsage\"", var"(c\"struct CXTUResourceUsage\")"
            export CXTUResourceUsage
            var"c\"struct CXTUResourceUsage\""
        end
        begin
            const var"c\"CXTUResourceUsage\"" = var"c\"struct CXTUResourceUsage\""
            const CXTUResourceUsage = var"c\"CXTUResourceUsage\""
            export var"c\"CXTUResourceUsage\""
            export CXTUResourceUsage
            var"c\"CXTUResourceUsage\""
        end
        begin
            const var"c\"clang_getCXTUResourceUsage\"" = C.Cbinding{C.Cfunction{var"c\"CXTUResourceUsage\"", C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_getCXTUResourceUsage}()
            (func::C.typeof(var"c\"clang_getCXTUResourceUsage\""))(var"c\"TU\"") = begin
                    C.funccall(func, var"c\"TU\"")
                end
            const clang_getCXTUResourceUsage = var"c\"clang_getCXTUResourceUsage\""
            export var"c\"clang_getCXTUResourceUsage\""
            export clang_getCXTUResourceUsage
            var"c\"clang_getCXTUResourceUsage\""
        end
        begin
            const var"c\"clang_disposeCXTUResourceUsage\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXTUResourceUsage\""}, :cdecl}, libpath, :clang_disposeCXTUResourceUsage}()
            (func::C.typeof(var"c\"clang_disposeCXTUResourceUsage\""))(var"c\"usage\"") = begin
                    C.funccall(func, var"c\"usage\"")
                end
            const clang_disposeCXTUResourceUsage = var"c\"clang_disposeCXTUResourceUsage\""
            export var"c\"clang_disposeCXTUResourceUsage\""
            export clang_disposeCXTUResourceUsage
            var"c\"clang_disposeCXTUResourceUsage\""
        end
        begin
            const var"c\"clang_getTranslationUnitTargetInfo\"" = C.Cbinding{C.Cfunction{var"c\"CXTargetInfo\"", C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_getTranslationUnitTargetInfo}()
            (func::C.typeof(var"c\"clang_getTranslationUnitTargetInfo\""))(var"c\"CTUnit\"") = begin
                    C.funccall(func, var"c\"CTUnit\"")
                end
            const clang_getTranslationUnitTargetInfo = var"c\"clang_getTranslationUnitTargetInfo\""
            export var"c\"clang_getTranslationUnitTargetInfo\""
            export clang_getTranslationUnitTargetInfo
            var"c\"clang_getTranslationUnitTargetInfo\""
        end
        begin
            const var"c\"clang_TargetInfo_dispose\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXTargetInfo\""}, :cdecl}, libpath, :clang_TargetInfo_dispose}()
            (func::C.typeof(var"c\"clang_TargetInfo_dispose\""))(var"c\"Info\"") = begin
                    C.funccall(func, var"c\"Info\"")
                end
            const clang_TargetInfo_dispose = var"c\"clang_TargetInfo_dispose\""
            export var"c\"clang_TargetInfo_dispose\""
            export clang_TargetInfo_dispose
            var"c\"clang_TargetInfo_dispose\""
        end
        begin
            const var"c\"clang_TargetInfo_getTriple\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXTargetInfo\""}, :cdecl}, libpath, :clang_TargetInfo_getTriple}()
            (func::C.typeof(var"c\"clang_TargetInfo_getTriple\""))(var"c\"Info\"") = begin
                    C.funccall(func, var"c\"Info\"")
                end
            const clang_TargetInfo_getTriple = var"c\"clang_TargetInfo_getTriple\""
            export var"c\"clang_TargetInfo_getTriple\""
            export clang_TargetInfo_getTriple
            var"c\"clang_TargetInfo_getTriple\""
        end
        begin
            const var"c\"clang_TargetInfo_getPointerWidth\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXTargetInfo\""}, :cdecl}, libpath, :clang_TargetInfo_getPointerWidth}()
            (func::C.typeof(var"c\"clang_TargetInfo_getPointerWidth\""))(var"c\"Info\"") = begin
                    C.funccall(func, var"c\"Info\"")
                end
            const clang_TargetInfo_getPointerWidth = var"c\"clang_TargetInfo_getPointerWidth\""
            export var"c\"clang_TargetInfo_getPointerWidth\""
            export clang_TargetInfo_getPointerWidth
            var"c\"clang_TargetInfo_getPointerWidth\""
        end
        begin
            abstract type var"c\"enum CXCursorKind\"" <: Cenum end
            const CXCursorKind = var"c\"enum CXCursorKind\""
            export var"c\"enum CXCursorKind\""
            export CXCursorKind
            var"c\"enum CXCursorKind\""
        end
        begin
            primitive type var"(c\"enum CXCursorKind\")" <: var"c\"enum CXCursorKind\"" 32 end
            (::(Type){var"(c\"enum CXCursorKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCursorKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCursorKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCursor_UnexposedDecl\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCursor_StructDecl\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXCursor_UnionDecl\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXCursor_ClassDecl\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXCursor_EnumDecl\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXCursor_FieldDecl\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXCursor_EnumConstantDecl\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXCursor_FunctionDecl\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXCursor_VarDecl\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXCursor_ParmDecl\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXCursor_ObjCInterfaceDecl\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXCursor_ObjCCategoryDecl\""), 0x000000000000000c}, C.Tuple{Symbol("c\"CXCursor_ObjCProtocolDecl\""), 0x000000000000000d}, C.Tuple{Symbol("c\"CXCursor_ObjCPropertyDecl\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXCursor_ObjCIvarDecl\""), 0x000000000000000f}, C.Tuple{Symbol("c\"CXCursor_ObjCInstanceMethodDecl\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXCursor_ObjCClassMethodDecl\""), 0x0000000000000011}, C.Tuple{Symbol("c\"CXCursor_ObjCImplementationDecl\""), 0x0000000000000012}, C.Tuple{Symbol("c\"CXCursor_ObjCCategoryImplDecl\""), 0x0000000000000013}, C.Tuple{Symbol("c\"CXCursor_TypedefDecl\""), 0x0000000000000014}, C.Tuple{Symbol("c\"CXCursor_CXXMethod\""), 0x0000000000000015}, C.Tuple{Symbol("c\"CXCursor_Namespace\""), 0x0000000000000016}, C.Tuple{Symbol("c\"CXCursor_LinkageSpec\""), 0x0000000000000017}, C.Tuple{Symbol("c\"CXCursor_Constructor\""), 0x0000000000000018}, C.Tuple{Symbol("c\"CXCursor_Destructor\""), 0x0000000000000019}, C.Tuple{Symbol("c\"CXCursor_ConversionFunction\""), 0x000000000000001a}, C.Tuple{Symbol("c\"CXCursor_TemplateTypeParameter\""), 0x000000000000001b}, C.Tuple{Symbol("c\"CXCursor_NonTypeTemplateParameter\""), 0x000000000000001c}, C.Tuple{Symbol("c\"CXCursor_TemplateTemplateParameter\""), 0x000000000000001d}, C.Tuple{Symbol("c\"CXCursor_FunctionTemplate\""), 0x000000000000001e}, C.Tuple{Symbol("c\"CXCursor_ClassTemplate\""), 0x000000000000001f}, C.Tuple{Symbol("c\"CXCursor_ClassTemplatePartialSpecialization\""), 0x0000000000000020}, C.Tuple{Symbol("c\"CXCursor_NamespaceAlias\""), 0x0000000000000021}, C.Tuple{Symbol("c\"CXCursor_UsingDirective\""), 0x0000000000000022}, C.Tuple{Symbol("c\"CXCursor_UsingDeclaration\""), 0x0000000000000023}, C.Tuple{Symbol("c\"CXCursor_TypeAliasDecl\""), 0x0000000000000024}, C.Tuple{Symbol("c\"CXCursor_ObjCSynthesizeDecl\""), 0x0000000000000025}, C.Tuple{Symbol("c\"CXCursor_ObjCDynamicDecl\""), 0x0000000000000026}, C.Tuple{Symbol("c\"CXCursor_CXXAccessSpecifier\""), 0x0000000000000027}, C.Tuple{Symbol("c\"CXCursor_FirstDecl\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCursor_LastDecl\""), 0x0000000000000027}, C.Tuple{Symbol("c\"CXCursor_FirstRef\""), 0x0000000000000028}, C.Tuple{Symbol("c\"CXCursor_ObjCSuperClassRef\""), 0x0000000000000028}, C.Tuple{Symbol("c\"CXCursor_ObjCProtocolRef\""), 0x0000000000000029}, C.Tuple{Symbol("c\"CXCursor_ObjCClassRef\""), 0x000000000000002a}, C.Tuple{Symbol("c\"CXCursor_TypeRef\""), 0x000000000000002b}, C.Tuple{Symbol("c\"CXCursor_CXXBaseSpecifier\""), 0x000000000000002c}, C.Tuple{Symbol("c\"CXCursor_TemplateRef\""), 0x000000000000002d}, C.Tuple{Symbol("c\"CXCursor_NamespaceRef\""), 0x000000000000002e}, C.Tuple{Symbol("c\"CXCursor_MemberRef\""), 0x000000000000002f}, C.Tuple{Symbol("c\"CXCursor_LabelRef\""), 0x0000000000000030}, C.Tuple{Symbol("c\"CXCursor_OverloadedDeclRef\""), 0x0000000000000031}, C.Tuple{Symbol("c\"CXCursor_VariableRef\""), 0x0000000000000032}, C.Tuple{Symbol("c\"CXCursor_LastRef\""), 0x0000000000000032}, C.Tuple{Symbol("c\"CXCursor_FirstInvalid\""), 0x0000000000000046}, C.Tuple{Symbol("c\"CXCursor_InvalidFile\""), 0x0000000000000046}, C.Tuple{Symbol("c\"CXCursor_NoDeclFound\""), 0x0000000000000047}, C.Tuple{Symbol("c\"CXCursor_NotImplemented\""), 0x0000000000000048}, C.Tuple{Symbol("c\"CXCursor_InvalidCode\""), 0x0000000000000049}, C.Tuple{Symbol("c\"CXCursor_LastInvalid\""), 0x0000000000000049}, C.Tuple{Symbol("c\"CXCursor_FirstExpr\""), 0x0000000000000064}, C.Tuple{Symbol("c\"CXCursor_UnexposedExpr\""), 0x0000000000000064}, C.Tuple{Symbol("c\"CXCursor_DeclRefExpr\""), 0x0000000000000065}, C.Tuple{Symbol("c\"CXCursor_MemberRefExpr\""), 0x0000000000000066}, C.Tuple{Symbol("c\"CXCursor_CallExpr\""), 0x0000000000000067}, C.Tuple{Symbol("c\"CXCursor_ObjCMessageExpr\""), 0x0000000000000068}, C.Tuple{Symbol("c\"CXCursor_BlockExpr\""), 0x0000000000000069}, C.Tuple{Symbol("c\"CXCursor_IntegerLiteral\""), 0x000000000000006a}, C.Tuple{Symbol("c\"CXCursor_FloatingLiteral\""), 0x000000000000006b}, C.Tuple{Symbol("c\"CXCursor_ImaginaryLiteral\""), 0x000000000000006c}, C.Tuple{Symbol("c\"CXCursor_StringLiteral\""), 0x000000000000006d}, C.Tuple{Symbol("c\"CXCursor_CharacterLiteral\""), 0x000000000000006e}, C.Tuple{Symbol("c\"CXCursor_ParenExpr\""), 0x000000000000006f}, C.Tuple{Symbol("c\"CXCursor_UnaryOperator\""), 0x0000000000000070}, C.Tuple{Symbol("c\"CXCursor_ArraySubscriptExpr\""), 0x0000000000000071}, C.Tuple{Symbol("c\"CXCursor_BinaryOperator\""), 0x0000000000000072}, C.Tuple{Symbol("c\"CXCursor_CompoundAssignOperator\""), 0x0000000000000073}, C.Tuple{Symbol("c\"CXCursor_ConditionalOperator\""), 0x0000000000000074}, C.Tuple{Symbol("c\"CXCursor_CStyleCastExpr\""), 0x0000000000000075}, C.Tuple{Symbol("c\"CXCursor_CompoundLiteralExpr\""), 0x0000000000000076}, C.Tuple{Symbol("c\"CXCursor_InitListExpr\""), 0x0000000000000077}, C.Tuple{Symbol("c\"CXCursor_AddrLabelExpr\""), 0x0000000000000078}, C.Tuple{Symbol("c\"CXCursor_StmtExpr\""), 0x0000000000000079}, C.Tuple{Symbol("c\"CXCursor_GenericSelectionExpr\""), 0x000000000000007a}, C.Tuple{Symbol("c\"CXCursor_GNUNullExpr\""), 0x000000000000007b}, C.Tuple{Symbol("c\"CXCursor_CXXStaticCastExpr\""), 0x000000000000007c}, C.Tuple{Symbol("c\"CXCursor_CXXDynamicCastExpr\""), 0x000000000000007d}, C.Tuple{Symbol("c\"CXCursor_CXXReinterpretCastExpr\""), 0x000000000000007e}, C.Tuple{Symbol("c\"CXCursor_CXXConstCastExpr\""), 0x000000000000007f}, C.Tuple{Symbol("c\"CXCursor_CXXFunctionalCastExpr\""), 0x0000000000000080}, C.Tuple{Symbol("c\"CXCursor_CXXAddrspaceCastExpr\""), 0x0000000000000081}, C.Tuple{Symbol("c\"CXCursor_CXXTypeidExpr\""), 0x0000000000000082}, C.Tuple{Symbol("c\"CXCursor_CXXBoolLiteralExpr\""), 0x0000000000000083}, C.Tuple{Symbol("c\"CXCursor_CXXNullPtrLiteralExpr\""), 0x0000000000000084}, C.Tuple{Symbol("c\"CXCursor_CXXThisExpr\""), 0x0000000000000085}, C.Tuple{Symbol("c\"CXCursor_CXXThrowExpr\""), 0x0000000000000086}, C.Tuple{Symbol("c\"CXCursor_CXXNewExpr\""), 0x0000000000000087}, C.Tuple{Symbol("c\"CXCursor_CXXDeleteExpr\""), 0x0000000000000088}, C.Tuple{Symbol("c\"CXCursor_UnaryExpr\""), 0x0000000000000089}, C.Tuple{Symbol("c\"CXCursor_ObjCStringLiteral\""), 0x000000000000008a}, C.Tuple{Symbol("c\"CXCursor_ObjCEncodeExpr\""), 0x000000000000008b}, C.Tuple{Symbol("c\"CXCursor_ObjCSelectorExpr\""), 0x000000000000008c}, C.Tuple{Symbol("c\"CXCursor_ObjCProtocolExpr\""), 0x000000000000008d}, C.Tuple{Symbol("c\"CXCursor_ObjCBridgedCastExpr\""), 0x000000000000008e}, C.Tuple{Symbol("c\"CXCursor_PackExpansionExpr\""), 0x000000000000008f}, C.Tuple{Symbol("c\"CXCursor_SizeOfPackExpr\""), 0x0000000000000090}, C.Tuple{Symbol("c\"CXCursor_LambdaExpr\""), 0x0000000000000091}, C.Tuple{Symbol("c\"CXCursor_ObjCBoolLiteralExpr\""), 0x0000000000000092}, C.Tuple{Symbol("c\"CXCursor_ObjCSelfExpr\""), 0x0000000000000093}, C.Tuple{Symbol("c\"CXCursor_OMPArraySectionExpr\""), 0x0000000000000094}, C.Tuple{Symbol("c\"CXCursor_ObjCAvailabilityCheckExpr\""), 0x0000000000000095}, C.Tuple{Symbol("c\"CXCursor_FixedPointLiteral\""), 0x0000000000000096}, C.Tuple{Symbol("c\"CXCursor_OMPArrayShapingExpr\""), 0x0000000000000097}, C.Tuple{Symbol("c\"CXCursor_OMPIteratorExpr\""), 0x0000000000000098}, C.Tuple{Symbol("c\"CXCursor_LastExpr\""), 0x0000000000000098}, C.Tuple{Symbol("c\"CXCursor_FirstStmt\""), 0x00000000000000c8}, C.Tuple{Symbol("c\"CXCursor_UnexposedStmt\""), 0x00000000000000c8}, C.Tuple{Symbol("c\"CXCursor_LabelStmt\""), 0x00000000000000c9}, C.Tuple{Symbol("c\"CXCursor_CompoundStmt\""), 0x00000000000000ca}, C.Tuple{Symbol("c\"CXCursor_CaseStmt\""), 0x00000000000000cb}, C.Tuple{Symbol("c\"CXCursor_DefaultStmt\""), 0x00000000000000cc}, C.Tuple{Symbol("c\"CXCursor_IfStmt\""), 0x00000000000000cd}, C.Tuple{Symbol("c\"CXCursor_SwitchStmt\""), 0x00000000000000ce}, C.Tuple{Symbol("c\"CXCursor_WhileStmt\""), 0x00000000000000cf}, C.Tuple{Symbol("c\"CXCursor_DoStmt\""), 0x00000000000000d0}, C.Tuple{Symbol("c\"CXCursor_ForStmt\""), 0x00000000000000d1}, C.Tuple{Symbol("c\"CXCursor_GotoStmt\""), 0x00000000000000d2}, C.Tuple{Symbol("c\"CXCursor_IndirectGotoStmt\""), 0x00000000000000d3}, C.Tuple{Symbol("c\"CXCursor_ContinueStmt\""), 0x00000000000000d4}, C.Tuple{Symbol("c\"CXCursor_BreakStmt\""), 0x00000000000000d5}, C.Tuple{Symbol("c\"CXCursor_ReturnStmt\""), 0x00000000000000d6}, C.Tuple{Symbol("c\"CXCursor_GCCAsmStmt\""), 0x00000000000000d7}, C.Tuple{Symbol("c\"CXCursor_AsmStmt\""), 0x00000000000000d7}, C.Tuple{Symbol("c\"CXCursor_ObjCAtTryStmt\""), 0x00000000000000d8}, C.Tuple{Symbol("c\"CXCursor_ObjCAtCatchStmt\""), 0x00000000000000d9}, C.Tuple{Symbol("c\"CXCursor_ObjCAtFinallyStmt\""), 0x00000000000000da}, C.Tuple{Symbol("c\"CXCursor_ObjCAtThrowStmt\""), 0x00000000000000db}, C.Tuple{Symbol("c\"CXCursor_ObjCAtSynchronizedStmt\""), 0x00000000000000dc}, C.Tuple{Symbol("c\"CXCursor_ObjCAutoreleasePoolStmt\""), 0x00000000000000dd}, C.Tuple{Symbol("c\"CXCursor_ObjCForCollectionStmt\""), 0x00000000000000de}, C.Tuple{Symbol("c\"CXCursor_CXXCatchStmt\""), 0x00000000000000df}, C.Tuple{Symbol("c\"CXCursor_CXXTryStmt\""), 0x00000000000000e0}, C.Tuple{Symbol("c\"CXCursor_CXXForRangeStmt\""), 0x00000000000000e1}, C.Tuple{Symbol("c\"CXCursor_SEHTryStmt\""), 0x00000000000000e2}, C.Tuple{Symbol("c\"CXCursor_SEHExceptStmt\""), 0x00000000000000e3}, C.Tuple{Symbol("c\"CXCursor_SEHFinallyStmt\""), 0x00000000000000e4}, C.Tuple{Symbol("c\"CXCursor_MSAsmStmt\""), 0x00000000000000e5}, C.Tuple{Symbol("c\"CXCursor_NullStmt\""), 0x00000000000000e6}, C.Tuple{Symbol("c\"CXCursor_DeclStmt\""), 0x00000000000000e7}, C.Tuple{Symbol("c\"CXCursor_OMPParallelDirective\""), 0x00000000000000e8}, C.Tuple{Symbol("c\"CXCursor_OMPSimdDirective\""), 0x00000000000000e9}, C.Tuple{Symbol("c\"CXCursor_OMPForDirective\""), 0x00000000000000ea}, C.Tuple{Symbol("c\"CXCursor_OMPSectionsDirective\""), 0x00000000000000eb}, C.Tuple{Symbol("c\"CXCursor_OMPSectionDirective\""), 0x00000000000000ec}, C.Tuple{Symbol("c\"CXCursor_OMPSingleDirective\""), 0x00000000000000ed}, C.Tuple{Symbol("c\"CXCursor_OMPParallelForDirective\""), 0x00000000000000ee}, C.Tuple{Symbol("c\"CXCursor_OMPParallelSectionsDirective\""), 0x00000000000000ef}, C.Tuple{Symbol("c\"CXCursor_OMPTaskDirective\""), 0x00000000000000f0}, C.Tuple{Symbol("c\"CXCursor_OMPMasterDirective\""), 0x00000000000000f1}, C.Tuple{Symbol("c\"CXCursor_OMPCriticalDirective\""), 0x00000000000000f2}, C.Tuple{Symbol("c\"CXCursor_OMPTaskyieldDirective\""), 0x00000000000000f3}, C.Tuple{Symbol("c\"CXCursor_OMPBarrierDirective\""), 0x00000000000000f4}, C.Tuple{Symbol("c\"CXCursor_OMPTaskwaitDirective\""), 0x00000000000000f5}, C.Tuple{Symbol("c\"CXCursor_OMPFlushDirective\""), 0x00000000000000f6}, C.Tuple{Symbol("c\"CXCursor_SEHLeaveStmt\""), 0x00000000000000f7}, C.Tuple{Symbol("c\"CXCursor_OMPOrderedDirective\""), 0x00000000000000f8}, C.Tuple{Symbol("c\"CXCursor_OMPAtomicDirective\""), 0x00000000000000f9}, C.Tuple{Symbol("c\"CXCursor_OMPForSimdDirective\""), 0x00000000000000fa}, C.Tuple{Symbol("c\"CXCursor_OMPParallelForSimdDirective\""), 0x00000000000000fb}, C.Tuple{Symbol("c\"CXCursor_OMPTargetDirective\""), 0x00000000000000fc}, C.Tuple{Symbol("c\"CXCursor_OMPTeamsDirective\""), 0x00000000000000fd}, C.Tuple{Symbol("c\"CXCursor_OMPTaskgroupDirective\""), 0x00000000000000fe}, C.Tuple{Symbol("c\"CXCursor_OMPCancellationPointDirective\""), 0x00000000000000ff}, C.Tuple{Symbol("c\"CXCursor_OMPCancelDirective\""), 0x0000000000000100}, C.Tuple{Symbol("c\"CXCursor_OMPTargetDataDirective\""), 0x0000000000000101}, C.Tuple{Symbol("c\"CXCursor_OMPTaskLoopDirective\""), 0x0000000000000102}, C.Tuple{Symbol("c\"CXCursor_OMPTaskLoopSimdDirective\""), 0x0000000000000103}, C.Tuple{Symbol("c\"CXCursor_OMPDistributeDirective\""), 0x0000000000000104}, C.Tuple{Symbol("c\"CXCursor_OMPTargetEnterDataDirective\""), 0x0000000000000105}, C.Tuple{Symbol("c\"CXCursor_OMPTargetExitDataDirective\""), 0x0000000000000106}, C.Tuple{Symbol("c\"CXCursor_OMPTargetParallelDirective\""), 0x0000000000000107}, C.Tuple{Symbol("c\"CXCursor_OMPTargetParallelForDirective\""), 0x0000000000000108}, C.Tuple{Symbol("c\"CXCursor_OMPTargetUpdateDirective\""), 0x0000000000000109}, C.Tuple{Symbol("c\"CXCursor_OMPDistributeParallelForDirective\""), 0x000000000000010a}, C.Tuple{Symbol("c\"CXCursor_OMPDistributeParallelForSimdDirective\""), 0x000000000000010b}, C.Tuple{Symbol("c\"CXCursor_OMPDistributeSimdDirective\""), 0x000000000000010c}, C.Tuple{Symbol("c\"CXCursor_OMPTargetParallelForSimdDirective\""), 0x000000000000010d}, C.Tuple{Symbol("c\"CXCursor_OMPTargetSimdDirective\""), 0x000000000000010e}, C.Tuple{Symbol("c\"CXCursor_OMPTeamsDistributeDirective\""), 0x000000000000010f}, C.Tuple{Symbol("c\"CXCursor_OMPTeamsDistributeSimdDirective\""), 0x0000000000000110}, C.Tuple{Symbol("c\"CXCursor_OMPTeamsDistributeParallelForSimdDirective\""), 0x0000000000000111}, C.Tuple{Symbol("c\"CXCursor_OMPTeamsDistributeParallelForDirective\""), 0x0000000000000112}, C.Tuple{Symbol("c\"CXCursor_OMPTargetTeamsDirective\""), 0x0000000000000113}, C.Tuple{Symbol("c\"CXCursor_OMPTargetTeamsDistributeDirective\""), 0x0000000000000114}, C.Tuple{Symbol("c\"CXCursor_OMPTargetTeamsDistributeParallelForDirective\""), 0x0000000000000115}, C.Tuple{Symbol("c\"CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective\""), 0x0000000000000116}, C.Tuple{Symbol("c\"CXCursor_OMPTargetTeamsDistributeSimdDirective\""), 0x0000000000000117}, C.Tuple{Symbol("c\"CXCursor_BuiltinBitCastExpr\""), 0x0000000000000118}, C.Tuple{Symbol("c\"CXCursor_OMPMasterTaskLoopDirective\""), 0x0000000000000119}, C.Tuple{Symbol("c\"CXCursor_OMPParallelMasterTaskLoopDirective\""), 0x000000000000011a}, C.Tuple{Symbol("c\"CXCursor_OMPMasterTaskLoopSimdDirective\""), 0x000000000000011b}, C.Tuple{Symbol("c\"CXCursor_OMPParallelMasterTaskLoopSimdDirective\""), 0x000000000000011c}, C.Tuple{Symbol("c\"CXCursor_OMPParallelMasterDirective\""), 0x000000000000011d}, C.Tuple{Symbol("c\"CXCursor_OMPDepobjDirective\""), 0x000000000000011e}, C.Tuple{Symbol("c\"CXCursor_OMPScanDirective\""), 0x000000000000011f}, C.Tuple{Symbol("c\"CXCursor_LastStmt\""), 0x000000000000011f}, C.Tuple{Symbol("c\"CXCursor_TranslationUnit\""), 0x000000000000012c}, C.Tuple{Symbol("c\"CXCursor_FirstAttr\""), 0x0000000000000190}, C.Tuple{Symbol("c\"CXCursor_UnexposedAttr\""), 0x0000000000000190}, C.Tuple{Symbol("c\"CXCursor_IBActionAttr\""), 0x0000000000000191}, C.Tuple{Symbol("c\"CXCursor_IBOutletAttr\""), 0x0000000000000192}, C.Tuple{Symbol("c\"CXCursor_IBOutletCollectionAttr\""), 0x0000000000000193}, C.Tuple{Symbol("c\"CXCursor_CXXFinalAttr\""), 0x0000000000000194}, C.Tuple{Symbol("c\"CXCursor_CXXOverrideAttr\""), 0x0000000000000195}, C.Tuple{Symbol("c\"CXCursor_AnnotateAttr\""), 0x0000000000000196}, C.Tuple{Symbol("c\"CXCursor_AsmLabelAttr\""), 0x0000000000000197}, C.Tuple{Symbol("c\"CXCursor_PackedAttr\""), 0x0000000000000198}, C.Tuple{Symbol("c\"CXCursor_PureAttr\""), 0x0000000000000199}, C.Tuple{Symbol("c\"CXCursor_ConstAttr\""), 0x000000000000019a}, C.Tuple{Symbol("c\"CXCursor_NoDuplicateAttr\""), 0x000000000000019b}, C.Tuple{Symbol("c\"CXCursor_CUDAConstantAttr\""), 0x000000000000019c}, C.Tuple{Symbol("c\"CXCursor_CUDADeviceAttr\""), 0x000000000000019d}, C.Tuple{Symbol("c\"CXCursor_CUDAGlobalAttr\""), 0x000000000000019e}, C.Tuple{Symbol("c\"CXCursor_CUDAHostAttr\""), 0x000000000000019f}, C.Tuple{Symbol("c\"CXCursor_CUDASharedAttr\""), 0x00000000000001a0}, C.Tuple{Symbol("c\"CXCursor_VisibilityAttr\""), 0x00000000000001a1}, C.Tuple{Symbol("c\"CXCursor_DLLExport\""), 0x00000000000001a2}, C.Tuple{Symbol("c\"CXCursor_DLLImport\""), 0x00000000000001a3}, C.Tuple{Symbol("c\"CXCursor_NSReturnsRetained\""), 0x00000000000001a4}, C.Tuple{Symbol("c\"CXCursor_NSReturnsNotRetained\""), 0x00000000000001a5}, C.Tuple{Symbol("c\"CXCursor_NSReturnsAutoreleased\""), 0x00000000000001a6}, C.Tuple{Symbol("c\"CXCursor_NSConsumesSelf\""), 0x00000000000001a7}, C.Tuple{Symbol("c\"CXCursor_NSConsumed\""), 0x00000000000001a8}, C.Tuple{Symbol("c\"CXCursor_ObjCException\""), 0x00000000000001a9}, C.Tuple{Symbol("c\"CXCursor_ObjCNSObject\""), 0x00000000000001aa}, C.Tuple{Symbol("c\"CXCursor_ObjCIndependentClass\""), 0x00000000000001ab}, C.Tuple{Symbol("c\"CXCursor_ObjCPreciseLifetime\""), 0x00000000000001ac}, C.Tuple{Symbol("c\"CXCursor_ObjCReturnsInnerPointer\""), 0x00000000000001ad}, C.Tuple{Symbol("c\"CXCursor_ObjCRequiresSuper\""), 0x00000000000001ae}, C.Tuple{Symbol("c\"CXCursor_ObjCRootClass\""), 0x00000000000001af}, C.Tuple{Symbol("c\"CXCursor_ObjCSubclassingRestricted\""), 0x00000000000001b0}, C.Tuple{Symbol("c\"CXCursor_ObjCExplicitProtocolImpl\""), 0x00000000000001b1}, C.Tuple{Symbol("c\"CXCursor_ObjCDesignatedInitializer\""), 0x00000000000001b2}, C.Tuple{Symbol("c\"CXCursor_ObjCRuntimeVisible\""), 0x00000000000001b3}, C.Tuple{Symbol("c\"CXCursor_ObjCBoxable\""), 0x00000000000001b4}, C.Tuple{Symbol("c\"CXCursor_FlagEnum\""), 0x00000000000001b5}, C.Tuple{Symbol("c\"CXCursor_ConvergentAttr\""), 0x00000000000001b6}, C.Tuple{Symbol("c\"CXCursor_WarnUnusedAttr\""), 0x00000000000001b7}, C.Tuple{Symbol("c\"CXCursor_WarnUnusedResultAttr\""), 0x00000000000001b8}, C.Tuple{Symbol("c\"CXCursor_AlignedAttr\""), 0x00000000000001b9}, C.Tuple{Symbol("c\"CXCursor_LastAttr\""), 0x00000000000001b9}, C.Tuple{Symbol("c\"CXCursor_PreprocessingDirective\""), 0x00000000000001f4}, C.Tuple{Symbol("c\"CXCursor_MacroDefinition\""), 0x00000000000001f5}, C.Tuple{Symbol("c\"CXCursor_MacroExpansion\""), 0x00000000000001f6}, C.Tuple{Symbol("c\"CXCursor_MacroInstantiation\""), 0x00000000000001f6}, C.Tuple{Symbol("c\"CXCursor_InclusionDirective\""), 0x00000000000001f7}, C.Tuple{Symbol("c\"CXCursor_FirstPreprocessing\""), 0x00000000000001f4}, C.Tuple{Symbol("c\"CXCursor_LastPreprocessing\""), 0x00000000000001f7}, C.Tuple{Symbol("c\"CXCursor_ModuleImportDecl\""), 0x0000000000000258}, C.Tuple{Symbol("c\"CXCursor_TypeAliasTemplateDecl\""), 0x0000000000000259}, C.Tuple{Symbol("c\"CXCursor_StaticAssert\""), 0x000000000000025a}, C.Tuple{Symbol("c\"CXCursor_FriendDecl\""), 0x000000000000025b}, C.Tuple{Symbol("c\"CXCursor_FirstExtraDecl\""), 0x0000000000000258}, C.Tuple{Symbol("c\"CXCursor_LastExtraDecl\""), 0x000000000000025b}, C.Tuple{Symbol("c\"CXCursor_OverloadCandidate\""), 0x00000000000002bc}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCursorKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCursorKind\")"}) = begin
                    var"(c\"enum CXCursorKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCursorKind\""}) = begin
                    var"(c\"enum CXCursorKind\")"
                end
            const var"c\"CXCursor_UnexposedDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000001)
            const var"c\"CXCursor_StructDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000002)
            const var"c\"CXCursor_UnionDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000003)
            const var"c\"CXCursor_ClassDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000004)
            const var"c\"CXCursor_EnumDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000005)
            const var"c\"CXCursor_FieldDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000006)
            const var"c\"CXCursor_EnumConstantDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000007)
            const var"c\"CXCursor_FunctionDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000008)
            const var"c\"CXCursor_VarDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000009)
            const var"c\"CXCursor_ParmDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000000a)
            const var"c\"CXCursor_ObjCInterfaceDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000000b)
            const var"c\"CXCursor_ObjCCategoryDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000000c)
            const var"c\"CXCursor_ObjCProtocolDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000000d)
            const var"c\"CXCursor_ObjCPropertyDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000000e)
            const var"c\"CXCursor_ObjCIvarDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000000f)
            const var"c\"CXCursor_ObjCInstanceMethodDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000010)
            const var"c\"CXCursor_ObjCClassMethodDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000011)
            const var"c\"CXCursor_ObjCImplementationDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000012)
            const var"c\"CXCursor_ObjCCategoryImplDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000013)
            const var"c\"CXCursor_TypedefDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000014)
            const var"c\"CXCursor_CXXMethod\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000015)
            const var"c\"CXCursor_Namespace\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000016)
            const var"c\"CXCursor_LinkageSpec\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000017)
            const var"c\"CXCursor_Constructor\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000018)
            const var"c\"CXCursor_Destructor\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000019)
            const var"c\"CXCursor_ConversionFunction\"" = var"(c\"enum CXCursorKind\")"(0x000000000000001a)
            const var"c\"CXCursor_TemplateTypeParameter\"" = var"(c\"enum CXCursorKind\")"(0x000000000000001b)
            const var"c\"CXCursor_NonTypeTemplateParameter\"" = var"(c\"enum CXCursorKind\")"(0x000000000000001c)
            const var"c\"CXCursor_TemplateTemplateParameter\"" = var"(c\"enum CXCursorKind\")"(0x000000000000001d)
            const var"c\"CXCursor_FunctionTemplate\"" = var"(c\"enum CXCursorKind\")"(0x000000000000001e)
            const var"c\"CXCursor_ClassTemplate\"" = var"(c\"enum CXCursorKind\")"(0x000000000000001f)
            const var"c\"CXCursor_ClassTemplatePartialSpecialization\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000020)
            const var"c\"CXCursor_NamespaceAlias\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000021)
            const var"c\"CXCursor_UsingDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000022)
            const var"c\"CXCursor_UsingDeclaration\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000023)
            const var"c\"CXCursor_TypeAliasDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000024)
            const var"c\"CXCursor_ObjCSynthesizeDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000025)
            const var"c\"CXCursor_ObjCDynamicDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000026)
            const var"c\"CXCursor_CXXAccessSpecifier\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000027)
            const var"c\"CXCursor_FirstDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000001)
            const var"c\"CXCursor_LastDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000027)
            const var"c\"CXCursor_FirstRef\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000028)
            const var"c\"CXCursor_ObjCSuperClassRef\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000028)
            const var"c\"CXCursor_ObjCProtocolRef\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000029)
            const var"c\"CXCursor_ObjCClassRef\"" = var"(c\"enum CXCursorKind\")"(0x000000000000002a)
            const var"c\"CXCursor_TypeRef\"" = var"(c\"enum CXCursorKind\")"(0x000000000000002b)
            const var"c\"CXCursor_CXXBaseSpecifier\"" = var"(c\"enum CXCursorKind\")"(0x000000000000002c)
            const var"c\"CXCursor_TemplateRef\"" = var"(c\"enum CXCursorKind\")"(0x000000000000002d)
            const var"c\"CXCursor_NamespaceRef\"" = var"(c\"enum CXCursorKind\")"(0x000000000000002e)
            const var"c\"CXCursor_MemberRef\"" = var"(c\"enum CXCursorKind\")"(0x000000000000002f)
            const var"c\"CXCursor_LabelRef\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000030)
            const var"c\"CXCursor_OverloadedDeclRef\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000031)
            const var"c\"CXCursor_VariableRef\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000032)
            const var"c\"CXCursor_LastRef\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000032)
            const var"c\"CXCursor_FirstInvalid\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000046)
            const var"c\"CXCursor_InvalidFile\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000046)
            const var"c\"CXCursor_NoDeclFound\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000047)
            const var"c\"CXCursor_NotImplemented\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000048)
            const var"c\"CXCursor_InvalidCode\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000049)
            const var"c\"CXCursor_LastInvalid\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000049)
            const var"c\"CXCursor_FirstExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000064)
            const var"c\"CXCursor_UnexposedExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000064)
            const var"c\"CXCursor_DeclRefExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000065)
            const var"c\"CXCursor_MemberRefExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000066)
            const var"c\"CXCursor_CallExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000067)
            const var"c\"CXCursor_ObjCMessageExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000068)
            const var"c\"CXCursor_BlockExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000069)
            const var"c\"CXCursor_IntegerLiteral\"" = var"(c\"enum CXCursorKind\")"(0x000000000000006a)
            const var"c\"CXCursor_FloatingLiteral\"" = var"(c\"enum CXCursorKind\")"(0x000000000000006b)
            const var"c\"CXCursor_ImaginaryLiteral\"" = var"(c\"enum CXCursorKind\")"(0x000000000000006c)
            const var"c\"CXCursor_StringLiteral\"" = var"(c\"enum CXCursorKind\")"(0x000000000000006d)
            const var"c\"CXCursor_CharacterLiteral\"" = var"(c\"enum CXCursorKind\")"(0x000000000000006e)
            const var"c\"CXCursor_ParenExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000006f)
            const var"c\"CXCursor_UnaryOperator\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000070)
            const var"c\"CXCursor_ArraySubscriptExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000071)
            const var"c\"CXCursor_BinaryOperator\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000072)
            const var"c\"CXCursor_CompoundAssignOperator\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000073)
            const var"c\"CXCursor_ConditionalOperator\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000074)
            const var"c\"CXCursor_CStyleCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000075)
            const var"c\"CXCursor_CompoundLiteralExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000076)
            const var"c\"CXCursor_InitListExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000077)
            const var"c\"CXCursor_AddrLabelExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000078)
            const var"c\"CXCursor_StmtExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000079)
            const var"c\"CXCursor_GenericSelectionExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000007a)
            const var"c\"CXCursor_GNUNullExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000007b)
            const var"c\"CXCursor_CXXStaticCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000007c)
            const var"c\"CXCursor_CXXDynamicCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000007d)
            const var"c\"CXCursor_CXXReinterpretCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000007e)
            const var"c\"CXCursor_CXXConstCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000007f)
            const var"c\"CXCursor_CXXFunctionalCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000080)
            const var"c\"CXCursor_CXXAddrspaceCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000081)
            const var"c\"CXCursor_CXXTypeidExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000082)
            const var"c\"CXCursor_CXXBoolLiteralExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000083)
            const var"c\"CXCursor_CXXNullPtrLiteralExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000084)
            const var"c\"CXCursor_CXXThisExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000085)
            const var"c\"CXCursor_CXXThrowExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000086)
            const var"c\"CXCursor_CXXNewExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000087)
            const var"c\"CXCursor_CXXDeleteExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000088)
            const var"c\"CXCursor_UnaryExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000089)
            const var"c\"CXCursor_ObjCStringLiteral\"" = var"(c\"enum CXCursorKind\")"(0x000000000000008a)
            const var"c\"CXCursor_ObjCEncodeExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000008b)
            const var"c\"CXCursor_ObjCSelectorExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000008c)
            const var"c\"CXCursor_ObjCProtocolExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000008d)
            const var"c\"CXCursor_ObjCBridgedCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000008e)
            const var"c\"CXCursor_PackExpansionExpr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000008f)
            const var"c\"CXCursor_SizeOfPackExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000090)
            const var"c\"CXCursor_LambdaExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000091)
            const var"c\"CXCursor_ObjCBoolLiteralExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000092)
            const var"c\"CXCursor_ObjCSelfExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000093)
            const var"c\"CXCursor_OMPArraySectionExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000094)
            const var"c\"CXCursor_ObjCAvailabilityCheckExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000095)
            const var"c\"CXCursor_FixedPointLiteral\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000096)
            const var"c\"CXCursor_OMPArrayShapingExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000097)
            const var"c\"CXCursor_OMPIteratorExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000098)
            const var"c\"CXCursor_LastExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000098)
            const var"c\"CXCursor_FirstStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000c8)
            const var"c\"CXCursor_UnexposedStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000c8)
            const var"c\"CXCursor_LabelStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000c9)
            const var"c\"CXCursor_CompoundStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ca)
            const var"c\"CXCursor_CaseStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000cb)
            const var"c\"CXCursor_DefaultStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000cc)
            const var"c\"CXCursor_IfStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000cd)
            const var"c\"CXCursor_SwitchStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ce)
            const var"c\"CXCursor_WhileStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000cf)
            const var"c\"CXCursor_DoStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d0)
            const var"c\"CXCursor_ForStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d1)
            const var"c\"CXCursor_GotoStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d2)
            const var"c\"CXCursor_IndirectGotoStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d3)
            const var"c\"CXCursor_ContinueStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d4)
            const var"c\"CXCursor_BreakStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d5)
            const var"c\"CXCursor_ReturnStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d6)
            const var"c\"CXCursor_GCCAsmStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d7)
            const var"c\"CXCursor_AsmStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d7)
            const var"c\"CXCursor_ObjCAtTryStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d8)
            const var"c\"CXCursor_ObjCAtCatchStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000d9)
            const var"c\"CXCursor_ObjCAtFinallyStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000da)
            const var"c\"CXCursor_ObjCAtThrowStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000db)
            const var"c\"CXCursor_ObjCAtSynchronizedStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000dc)
            const var"c\"CXCursor_ObjCAutoreleasePoolStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000dd)
            const var"c\"CXCursor_ObjCForCollectionStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000de)
            const var"c\"CXCursor_CXXCatchStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000df)
            const var"c\"CXCursor_CXXTryStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e0)
            const var"c\"CXCursor_CXXForRangeStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e1)
            const var"c\"CXCursor_SEHTryStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e2)
            const var"c\"CXCursor_SEHExceptStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e3)
            const var"c\"CXCursor_SEHFinallyStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e4)
            const var"c\"CXCursor_MSAsmStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e5)
            const var"c\"CXCursor_NullStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e6)
            const var"c\"CXCursor_DeclStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e7)
            const var"c\"CXCursor_OMPParallelDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e8)
            const var"c\"CXCursor_OMPSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000e9)
            const var"c\"CXCursor_OMPForDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ea)
            const var"c\"CXCursor_OMPSectionsDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000eb)
            const var"c\"CXCursor_OMPSectionDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ec)
            const var"c\"CXCursor_OMPSingleDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ed)
            const var"c\"CXCursor_OMPParallelForDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ee)
            const var"c\"CXCursor_OMPParallelSectionsDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ef)
            const var"c\"CXCursor_OMPTaskDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f0)
            const var"c\"CXCursor_OMPMasterDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f1)
            const var"c\"CXCursor_OMPCriticalDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f2)
            const var"c\"CXCursor_OMPTaskyieldDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f3)
            const var"c\"CXCursor_OMPBarrierDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f4)
            const var"c\"CXCursor_OMPTaskwaitDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f5)
            const var"c\"CXCursor_OMPFlushDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f6)
            const var"c\"CXCursor_SEHLeaveStmt\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f7)
            const var"c\"CXCursor_OMPOrderedDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f8)
            const var"c\"CXCursor_OMPAtomicDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000f9)
            const var"c\"CXCursor_OMPForSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000fa)
            const var"c\"CXCursor_OMPParallelForSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000fb)
            const var"c\"CXCursor_OMPTargetDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000fc)
            const var"c\"CXCursor_OMPTeamsDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000fd)
            const var"c\"CXCursor_OMPTaskgroupDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000fe)
            const var"c\"CXCursor_OMPCancellationPointDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000000ff)
            const var"c\"CXCursor_OMPCancelDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000100)
            const var"c\"CXCursor_OMPTargetDataDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000101)
            const var"c\"CXCursor_OMPTaskLoopDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000102)
            const var"c\"CXCursor_OMPTaskLoopSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000103)
            const var"c\"CXCursor_OMPDistributeDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000104)
            const var"c\"CXCursor_OMPTargetEnterDataDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000105)
            const var"c\"CXCursor_OMPTargetExitDataDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000106)
            const var"c\"CXCursor_OMPTargetParallelDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000107)
            const var"c\"CXCursor_OMPTargetParallelForDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000108)
            const var"c\"CXCursor_OMPTargetUpdateDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000109)
            const var"c\"CXCursor_OMPDistributeParallelForDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000010a)
            const var"c\"CXCursor_OMPDistributeParallelForSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000010b)
            const var"c\"CXCursor_OMPDistributeSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000010c)
            const var"c\"CXCursor_OMPTargetParallelForSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000010d)
            const var"c\"CXCursor_OMPTargetSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000010e)
            const var"c\"CXCursor_OMPTeamsDistributeDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000010f)
            const var"c\"CXCursor_OMPTeamsDistributeSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000110)
            const var"c\"CXCursor_OMPTeamsDistributeParallelForSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000111)
            const var"c\"CXCursor_OMPTeamsDistributeParallelForDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000112)
            const var"c\"CXCursor_OMPTargetTeamsDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000113)
            const var"c\"CXCursor_OMPTargetTeamsDistributeDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000114)
            const var"c\"CXCursor_OMPTargetTeamsDistributeParallelForDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000115)
            const var"c\"CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000116)
            const var"c\"CXCursor_OMPTargetTeamsDistributeSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000117)
            const var"c\"CXCursor_BuiltinBitCastExpr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000118)
            const var"c\"CXCursor_OMPMasterTaskLoopDirective\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000119)
            const var"c\"CXCursor_OMPParallelMasterTaskLoopDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000011a)
            const var"c\"CXCursor_OMPMasterTaskLoopSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000011b)
            const var"c\"CXCursor_OMPParallelMasterTaskLoopSimdDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000011c)
            const var"c\"CXCursor_OMPParallelMasterDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000011d)
            const var"c\"CXCursor_OMPDepobjDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000011e)
            const var"c\"CXCursor_OMPScanDirective\"" = var"(c\"enum CXCursorKind\")"(0x000000000000011f)
            const var"c\"CXCursor_LastStmt\"" = var"(c\"enum CXCursorKind\")"(0x000000000000011f)
            const var"c\"CXCursor_TranslationUnit\"" = var"(c\"enum CXCursorKind\")"(0x000000000000012c)
            const var"c\"CXCursor_FirstAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000190)
            const var"c\"CXCursor_UnexposedAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000190)
            const var"c\"CXCursor_IBActionAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000191)
            const var"c\"CXCursor_IBOutletAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000192)
            const var"c\"CXCursor_IBOutletCollectionAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000193)
            const var"c\"CXCursor_CXXFinalAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000194)
            const var"c\"CXCursor_CXXOverrideAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000195)
            const var"c\"CXCursor_AnnotateAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000196)
            const var"c\"CXCursor_AsmLabelAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000197)
            const var"c\"CXCursor_PackedAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000198)
            const var"c\"CXCursor_PureAttr\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000199)
            const var"c\"CXCursor_ConstAttr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000019a)
            const var"c\"CXCursor_NoDuplicateAttr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000019b)
            const var"c\"CXCursor_CUDAConstantAttr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000019c)
            const var"c\"CXCursor_CUDADeviceAttr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000019d)
            const var"c\"CXCursor_CUDAGlobalAttr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000019e)
            const var"c\"CXCursor_CUDAHostAttr\"" = var"(c\"enum CXCursorKind\")"(0x000000000000019f)
            const var"c\"CXCursor_CUDASharedAttr\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a0)
            const var"c\"CXCursor_VisibilityAttr\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a1)
            const var"c\"CXCursor_DLLExport\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a2)
            const var"c\"CXCursor_DLLImport\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a3)
            const var"c\"CXCursor_NSReturnsRetained\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a4)
            const var"c\"CXCursor_NSReturnsNotRetained\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a5)
            const var"c\"CXCursor_NSReturnsAutoreleased\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a6)
            const var"c\"CXCursor_NSConsumesSelf\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a7)
            const var"c\"CXCursor_NSConsumed\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a8)
            const var"c\"CXCursor_ObjCException\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001a9)
            const var"c\"CXCursor_ObjCNSObject\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001aa)
            const var"c\"CXCursor_ObjCIndependentClass\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001ab)
            const var"c\"CXCursor_ObjCPreciseLifetime\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001ac)
            const var"c\"CXCursor_ObjCReturnsInnerPointer\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001ad)
            const var"c\"CXCursor_ObjCRequiresSuper\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001ae)
            const var"c\"CXCursor_ObjCRootClass\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001af)
            const var"c\"CXCursor_ObjCSubclassingRestricted\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b0)
            const var"c\"CXCursor_ObjCExplicitProtocolImpl\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b1)
            const var"c\"CXCursor_ObjCDesignatedInitializer\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b2)
            const var"c\"CXCursor_ObjCRuntimeVisible\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b3)
            const var"c\"CXCursor_ObjCBoxable\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b4)
            const var"c\"CXCursor_FlagEnum\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b5)
            const var"c\"CXCursor_ConvergentAttr\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b6)
            const var"c\"CXCursor_WarnUnusedAttr\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b7)
            const var"c\"CXCursor_WarnUnusedResultAttr\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b8)
            const var"c\"CXCursor_AlignedAttr\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b9)
            const var"c\"CXCursor_LastAttr\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001b9)
            const var"c\"CXCursor_PreprocessingDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001f4)
            const var"c\"CXCursor_MacroDefinition\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001f5)
            const var"c\"CXCursor_MacroExpansion\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001f6)
            const var"c\"CXCursor_MacroInstantiation\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001f6)
            const var"c\"CXCursor_InclusionDirective\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001f7)
            const var"c\"CXCursor_FirstPreprocessing\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001f4)
            const var"c\"CXCursor_LastPreprocessing\"" = var"(c\"enum CXCursorKind\")"(0x00000000000001f7)
            const var"c\"CXCursor_ModuleImportDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000258)
            const var"c\"CXCursor_TypeAliasTemplateDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000259)
            const var"c\"CXCursor_StaticAssert\"" = var"(c\"enum CXCursorKind\")"(0x000000000000025a)
            const var"c\"CXCursor_FriendDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000025b)
            const var"c\"CXCursor_FirstExtraDecl\"" = var"(c\"enum CXCursorKind\")"(0x0000000000000258)
            const var"c\"CXCursor_LastExtraDecl\"" = var"(c\"enum CXCursorKind\")"(0x000000000000025b)
            const var"c\"CXCursor_OverloadCandidate\"" = var"(c\"enum CXCursorKind\")"(0x00000000000002bc)
            const CXCursorKind = var"c\"enum CXCursorKind\""
            const CXCursor_UnexposedDecl = var"c\"CXCursor_UnexposedDecl\""
            const CXCursor_StructDecl = var"c\"CXCursor_StructDecl\""
            const CXCursor_UnionDecl = var"c\"CXCursor_UnionDecl\""
            const CXCursor_ClassDecl = var"c\"CXCursor_ClassDecl\""
            const CXCursor_EnumDecl = var"c\"CXCursor_EnumDecl\""
            const CXCursor_FieldDecl = var"c\"CXCursor_FieldDecl\""
            const CXCursor_EnumConstantDecl = var"c\"CXCursor_EnumConstantDecl\""
            const CXCursor_FunctionDecl = var"c\"CXCursor_FunctionDecl\""
            const CXCursor_VarDecl = var"c\"CXCursor_VarDecl\""
            const CXCursor_ParmDecl = var"c\"CXCursor_ParmDecl\""
            const CXCursor_ObjCInterfaceDecl = var"c\"CXCursor_ObjCInterfaceDecl\""
            const CXCursor_ObjCCategoryDecl = var"c\"CXCursor_ObjCCategoryDecl\""
            const CXCursor_ObjCProtocolDecl = var"c\"CXCursor_ObjCProtocolDecl\""
            const CXCursor_ObjCPropertyDecl = var"c\"CXCursor_ObjCPropertyDecl\""
            const CXCursor_ObjCIvarDecl = var"c\"CXCursor_ObjCIvarDecl\""
            const CXCursor_ObjCInstanceMethodDecl = var"c\"CXCursor_ObjCInstanceMethodDecl\""
            const CXCursor_ObjCClassMethodDecl = var"c\"CXCursor_ObjCClassMethodDecl\""
            const CXCursor_ObjCImplementationDecl = var"c\"CXCursor_ObjCImplementationDecl\""
            const CXCursor_ObjCCategoryImplDecl = var"c\"CXCursor_ObjCCategoryImplDecl\""
            const CXCursor_TypedefDecl = var"c\"CXCursor_TypedefDecl\""
            const CXCursor_CXXMethod = var"c\"CXCursor_CXXMethod\""
            const CXCursor_Namespace = var"c\"CXCursor_Namespace\""
            const CXCursor_LinkageSpec = var"c\"CXCursor_LinkageSpec\""
            const CXCursor_Constructor = var"c\"CXCursor_Constructor\""
            const CXCursor_Destructor = var"c\"CXCursor_Destructor\""
            const CXCursor_ConversionFunction = var"c\"CXCursor_ConversionFunction\""
            const CXCursor_TemplateTypeParameter = var"c\"CXCursor_TemplateTypeParameter\""
            const CXCursor_NonTypeTemplateParameter = var"c\"CXCursor_NonTypeTemplateParameter\""
            const CXCursor_TemplateTemplateParameter = var"c\"CXCursor_TemplateTemplateParameter\""
            const CXCursor_FunctionTemplate = var"c\"CXCursor_FunctionTemplate\""
            const CXCursor_ClassTemplate = var"c\"CXCursor_ClassTemplate\""
            const CXCursor_ClassTemplatePartialSpecialization = var"c\"CXCursor_ClassTemplatePartialSpecialization\""
            const CXCursor_NamespaceAlias = var"c\"CXCursor_NamespaceAlias\""
            const CXCursor_UsingDirective = var"c\"CXCursor_UsingDirective\""
            const CXCursor_UsingDeclaration = var"c\"CXCursor_UsingDeclaration\""
            const CXCursor_TypeAliasDecl = var"c\"CXCursor_TypeAliasDecl\""
            const CXCursor_ObjCSynthesizeDecl = var"c\"CXCursor_ObjCSynthesizeDecl\""
            const CXCursor_ObjCDynamicDecl = var"c\"CXCursor_ObjCDynamicDecl\""
            const CXCursor_CXXAccessSpecifier = var"c\"CXCursor_CXXAccessSpecifier\""
            const CXCursor_FirstDecl = var"c\"CXCursor_FirstDecl\""
            const CXCursor_LastDecl = var"c\"CXCursor_LastDecl\""
            const CXCursor_FirstRef = var"c\"CXCursor_FirstRef\""
            const CXCursor_ObjCSuperClassRef = var"c\"CXCursor_ObjCSuperClassRef\""
            const CXCursor_ObjCProtocolRef = var"c\"CXCursor_ObjCProtocolRef\""
            const CXCursor_ObjCClassRef = var"c\"CXCursor_ObjCClassRef\""
            const CXCursor_TypeRef = var"c\"CXCursor_TypeRef\""
            const CXCursor_CXXBaseSpecifier = var"c\"CXCursor_CXXBaseSpecifier\""
            const CXCursor_TemplateRef = var"c\"CXCursor_TemplateRef\""
            const CXCursor_NamespaceRef = var"c\"CXCursor_NamespaceRef\""
            const CXCursor_MemberRef = var"c\"CXCursor_MemberRef\""
            const CXCursor_LabelRef = var"c\"CXCursor_LabelRef\""
            const CXCursor_OverloadedDeclRef = var"c\"CXCursor_OverloadedDeclRef\""
            const CXCursor_VariableRef = var"c\"CXCursor_VariableRef\""
            const CXCursor_LastRef = var"c\"CXCursor_LastRef\""
            const CXCursor_FirstInvalid = var"c\"CXCursor_FirstInvalid\""
            const CXCursor_InvalidFile = var"c\"CXCursor_InvalidFile\""
            const CXCursor_NoDeclFound = var"c\"CXCursor_NoDeclFound\""
            const CXCursor_NotImplemented = var"c\"CXCursor_NotImplemented\""
            const CXCursor_InvalidCode = var"c\"CXCursor_InvalidCode\""
            const CXCursor_LastInvalid = var"c\"CXCursor_LastInvalid\""
            const CXCursor_FirstExpr = var"c\"CXCursor_FirstExpr\""
            const CXCursor_UnexposedExpr = var"c\"CXCursor_UnexposedExpr\""
            const CXCursor_DeclRefExpr = var"c\"CXCursor_DeclRefExpr\""
            const CXCursor_MemberRefExpr = var"c\"CXCursor_MemberRefExpr\""
            const CXCursor_CallExpr = var"c\"CXCursor_CallExpr\""
            const CXCursor_ObjCMessageExpr = var"c\"CXCursor_ObjCMessageExpr\""
            const CXCursor_BlockExpr = var"c\"CXCursor_BlockExpr\""
            const CXCursor_IntegerLiteral = var"c\"CXCursor_IntegerLiteral\""
            const CXCursor_FloatingLiteral = var"c\"CXCursor_FloatingLiteral\""
            const CXCursor_ImaginaryLiteral = var"c\"CXCursor_ImaginaryLiteral\""
            const CXCursor_StringLiteral = var"c\"CXCursor_StringLiteral\""
            const CXCursor_CharacterLiteral = var"c\"CXCursor_CharacterLiteral\""
            const CXCursor_ParenExpr = var"c\"CXCursor_ParenExpr\""
            const CXCursor_UnaryOperator = var"c\"CXCursor_UnaryOperator\""
            const CXCursor_ArraySubscriptExpr = var"c\"CXCursor_ArraySubscriptExpr\""
            const CXCursor_BinaryOperator = var"c\"CXCursor_BinaryOperator\""
            const CXCursor_CompoundAssignOperator = var"c\"CXCursor_CompoundAssignOperator\""
            const CXCursor_ConditionalOperator = var"c\"CXCursor_ConditionalOperator\""
            const CXCursor_CStyleCastExpr = var"c\"CXCursor_CStyleCastExpr\""
            const CXCursor_CompoundLiteralExpr = var"c\"CXCursor_CompoundLiteralExpr\""
            const CXCursor_InitListExpr = var"c\"CXCursor_InitListExpr\""
            const CXCursor_AddrLabelExpr = var"c\"CXCursor_AddrLabelExpr\""
            const CXCursor_StmtExpr = var"c\"CXCursor_StmtExpr\""
            const CXCursor_GenericSelectionExpr = var"c\"CXCursor_GenericSelectionExpr\""
            const CXCursor_GNUNullExpr = var"c\"CXCursor_GNUNullExpr\""
            const CXCursor_CXXStaticCastExpr = var"c\"CXCursor_CXXStaticCastExpr\""
            const CXCursor_CXXDynamicCastExpr = var"c\"CXCursor_CXXDynamicCastExpr\""
            const CXCursor_CXXReinterpretCastExpr = var"c\"CXCursor_CXXReinterpretCastExpr\""
            const CXCursor_CXXConstCastExpr = var"c\"CXCursor_CXXConstCastExpr\""
            const CXCursor_CXXFunctionalCastExpr = var"c\"CXCursor_CXXFunctionalCastExpr\""
            const CXCursor_CXXAddrspaceCastExpr = var"c\"CXCursor_CXXAddrspaceCastExpr\""
            const CXCursor_CXXTypeidExpr = var"c\"CXCursor_CXXTypeidExpr\""
            const CXCursor_CXXBoolLiteralExpr = var"c\"CXCursor_CXXBoolLiteralExpr\""
            const CXCursor_CXXNullPtrLiteralExpr = var"c\"CXCursor_CXXNullPtrLiteralExpr\""
            const CXCursor_CXXThisExpr = var"c\"CXCursor_CXXThisExpr\""
            const CXCursor_CXXThrowExpr = var"c\"CXCursor_CXXThrowExpr\""
            const CXCursor_CXXNewExpr = var"c\"CXCursor_CXXNewExpr\""
            const CXCursor_CXXDeleteExpr = var"c\"CXCursor_CXXDeleteExpr\""
            const CXCursor_UnaryExpr = var"c\"CXCursor_UnaryExpr\""
            const CXCursor_ObjCStringLiteral = var"c\"CXCursor_ObjCStringLiteral\""
            const CXCursor_ObjCEncodeExpr = var"c\"CXCursor_ObjCEncodeExpr\""
            const CXCursor_ObjCSelectorExpr = var"c\"CXCursor_ObjCSelectorExpr\""
            const CXCursor_ObjCProtocolExpr = var"c\"CXCursor_ObjCProtocolExpr\""
            const CXCursor_ObjCBridgedCastExpr = var"c\"CXCursor_ObjCBridgedCastExpr\""
            const CXCursor_PackExpansionExpr = var"c\"CXCursor_PackExpansionExpr\""
            const CXCursor_SizeOfPackExpr = var"c\"CXCursor_SizeOfPackExpr\""
            const CXCursor_LambdaExpr = var"c\"CXCursor_LambdaExpr\""
            const CXCursor_ObjCBoolLiteralExpr = var"c\"CXCursor_ObjCBoolLiteralExpr\""
            const CXCursor_ObjCSelfExpr = var"c\"CXCursor_ObjCSelfExpr\""
            const CXCursor_OMPArraySectionExpr = var"c\"CXCursor_OMPArraySectionExpr\""
            const CXCursor_ObjCAvailabilityCheckExpr = var"c\"CXCursor_ObjCAvailabilityCheckExpr\""
            const CXCursor_FixedPointLiteral = var"c\"CXCursor_FixedPointLiteral\""
            const CXCursor_OMPArrayShapingExpr = var"c\"CXCursor_OMPArrayShapingExpr\""
            const CXCursor_OMPIteratorExpr = var"c\"CXCursor_OMPIteratorExpr\""
            const CXCursor_LastExpr = var"c\"CXCursor_LastExpr\""
            const CXCursor_FirstStmt = var"c\"CXCursor_FirstStmt\""
            const CXCursor_UnexposedStmt = var"c\"CXCursor_UnexposedStmt\""
            const CXCursor_LabelStmt = var"c\"CXCursor_LabelStmt\""
            const CXCursor_CompoundStmt = var"c\"CXCursor_CompoundStmt\""
            const CXCursor_CaseStmt = var"c\"CXCursor_CaseStmt\""
            const CXCursor_DefaultStmt = var"c\"CXCursor_DefaultStmt\""
            const CXCursor_IfStmt = var"c\"CXCursor_IfStmt\""
            const CXCursor_SwitchStmt = var"c\"CXCursor_SwitchStmt\""
            const CXCursor_WhileStmt = var"c\"CXCursor_WhileStmt\""
            const CXCursor_DoStmt = var"c\"CXCursor_DoStmt\""
            const CXCursor_ForStmt = var"c\"CXCursor_ForStmt\""
            const CXCursor_GotoStmt = var"c\"CXCursor_GotoStmt\""
            const CXCursor_IndirectGotoStmt = var"c\"CXCursor_IndirectGotoStmt\""
            const CXCursor_ContinueStmt = var"c\"CXCursor_ContinueStmt\""
            const CXCursor_BreakStmt = var"c\"CXCursor_BreakStmt\""
            const CXCursor_ReturnStmt = var"c\"CXCursor_ReturnStmt\""
            const CXCursor_GCCAsmStmt = var"c\"CXCursor_GCCAsmStmt\""
            const CXCursor_AsmStmt = var"c\"CXCursor_AsmStmt\""
            const CXCursor_ObjCAtTryStmt = var"c\"CXCursor_ObjCAtTryStmt\""
            const CXCursor_ObjCAtCatchStmt = var"c\"CXCursor_ObjCAtCatchStmt\""
            const CXCursor_ObjCAtFinallyStmt = var"c\"CXCursor_ObjCAtFinallyStmt\""
            const CXCursor_ObjCAtThrowStmt = var"c\"CXCursor_ObjCAtThrowStmt\""
            const CXCursor_ObjCAtSynchronizedStmt = var"c\"CXCursor_ObjCAtSynchronizedStmt\""
            const CXCursor_ObjCAutoreleasePoolStmt = var"c\"CXCursor_ObjCAutoreleasePoolStmt\""
            const CXCursor_ObjCForCollectionStmt = var"c\"CXCursor_ObjCForCollectionStmt\""
            const CXCursor_CXXCatchStmt = var"c\"CXCursor_CXXCatchStmt\""
            const CXCursor_CXXTryStmt = var"c\"CXCursor_CXXTryStmt\""
            const CXCursor_CXXForRangeStmt = var"c\"CXCursor_CXXForRangeStmt\""
            const CXCursor_SEHTryStmt = var"c\"CXCursor_SEHTryStmt\""
            const CXCursor_SEHExceptStmt = var"c\"CXCursor_SEHExceptStmt\""
            const CXCursor_SEHFinallyStmt = var"c\"CXCursor_SEHFinallyStmt\""
            const CXCursor_MSAsmStmt = var"c\"CXCursor_MSAsmStmt\""
            const CXCursor_NullStmt = var"c\"CXCursor_NullStmt\""
            const CXCursor_DeclStmt = var"c\"CXCursor_DeclStmt\""
            const CXCursor_OMPParallelDirective = var"c\"CXCursor_OMPParallelDirective\""
            const CXCursor_OMPSimdDirective = var"c\"CXCursor_OMPSimdDirective\""
            const CXCursor_OMPForDirective = var"c\"CXCursor_OMPForDirective\""
            const CXCursor_OMPSectionsDirective = var"c\"CXCursor_OMPSectionsDirective\""
            const CXCursor_OMPSectionDirective = var"c\"CXCursor_OMPSectionDirective\""
            const CXCursor_OMPSingleDirective = var"c\"CXCursor_OMPSingleDirective\""
            const CXCursor_OMPParallelForDirective = var"c\"CXCursor_OMPParallelForDirective\""
            const CXCursor_OMPParallelSectionsDirective = var"c\"CXCursor_OMPParallelSectionsDirective\""
            const CXCursor_OMPTaskDirective = var"c\"CXCursor_OMPTaskDirective\""
            const CXCursor_OMPMasterDirective = var"c\"CXCursor_OMPMasterDirective\""
            const CXCursor_OMPCriticalDirective = var"c\"CXCursor_OMPCriticalDirective\""
            const CXCursor_OMPTaskyieldDirective = var"c\"CXCursor_OMPTaskyieldDirective\""
            const CXCursor_OMPBarrierDirective = var"c\"CXCursor_OMPBarrierDirective\""
            const CXCursor_OMPTaskwaitDirective = var"c\"CXCursor_OMPTaskwaitDirective\""
            const CXCursor_OMPFlushDirective = var"c\"CXCursor_OMPFlushDirective\""
            const CXCursor_SEHLeaveStmt = var"c\"CXCursor_SEHLeaveStmt\""
            const CXCursor_OMPOrderedDirective = var"c\"CXCursor_OMPOrderedDirective\""
            const CXCursor_OMPAtomicDirective = var"c\"CXCursor_OMPAtomicDirective\""
            const CXCursor_OMPForSimdDirective = var"c\"CXCursor_OMPForSimdDirective\""
            const CXCursor_OMPParallelForSimdDirective = var"c\"CXCursor_OMPParallelForSimdDirective\""
            const CXCursor_OMPTargetDirective = var"c\"CXCursor_OMPTargetDirective\""
            const CXCursor_OMPTeamsDirective = var"c\"CXCursor_OMPTeamsDirective\""
            const CXCursor_OMPTaskgroupDirective = var"c\"CXCursor_OMPTaskgroupDirective\""
            const CXCursor_OMPCancellationPointDirective = var"c\"CXCursor_OMPCancellationPointDirective\""
            const CXCursor_OMPCancelDirective = var"c\"CXCursor_OMPCancelDirective\""
            const CXCursor_OMPTargetDataDirective = var"c\"CXCursor_OMPTargetDataDirective\""
            const CXCursor_OMPTaskLoopDirective = var"c\"CXCursor_OMPTaskLoopDirective\""
            const CXCursor_OMPTaskLoopSimdDirective = var"c\"CXCursor_OMPTaskLoopSimdDirective\""
            const CXCursor_OMPDistributeDirective = var"c\"CXCursor_OMPDistributeDirective\""
            const CXCursor_OMPTargetEnterDataDirective = var"c\"CXCursor_OMPTargetEnterDataDirective\""
            const CXCursor_OMPTargetExitDataDirective = var"c\"CXCursor_OMPTargetExitDataDirective\""
            const CXCursor_OMPTargetParallelDirective = var"c\"CXCursor_OMPTargetParallelDirective\""
            const CXCursor_OMPTargetParallelForDirective = var"c\"CXCursor_OMPTargetParallelForDirective\""
            const CXCursor_OMPTargetUpdateDirective = var"c\"CXCursor_OMPTargetUpdateDirective\""
            const CXCursor_OMPDistributeParallelForDirective = var"c\"CXCursor_OMPDistributeParallelForDirective\""
            const CXCursor_OMPDistributeParallelForSimdDirective = var"c\"CXCursor_OMPDistributeParallelForSimdDirective\""
            const CXCursor_OMPDistributeSimdDirective = var"c\"CXCursor_OMPDistributeSimdDirective\""
            const CXCursor_OMPTargetParallelForSimdDirective = var"c\"CXCursor_OMPTargetParallelForSimdDirective\""
            const CXCursor_OMPTargetSimdDirective = var"c\"CXCursor_OMPTargetSimdDirective\""
            const CXCursor_OMPTeamsDistributeDirective = var"c\"CXCursor_OMPTeamsDistributeDirective\""
            const CXCursor_OMPTeamsDistributeSimdDirective = var"c\"CXCursor_OMPTeamsDistributeSimdDirective\""
            const CXCursor_OMPTeamsDistributeParallelForSimdDirective = var"c\"CXCursor_OMPTeamsDistributeParallelForSimdDirective\""
            const CXCursor_OMPTeamsDistributeParallelForDirective = var"c\"CXCursor_OMPTeamsDistributeParallelForDirective\""
            const CXCursor_OMPTargetTeamsDirective = var"c\"CXCursor_OMPTargetTeamsDirective\""
            const CXCursor_OMPTargetTeamsDistributeDirective = var"c\"CXCursor_OMPTargetTeamsDistributeDirective\""
            const CXCursor_OMPTargetTeamsDistributeParallelForDirective = var"c\"CXCursor_OMPTargetTeamsDistributeParallelForDirective\""
            const CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective = var"c\"CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective\""
            const CXCursor_OMPTargetTeamsDistributeSimdDirective = var"c\"CXCursor_OMPTargetTeamsDistributeSimdDirective\""
            const CXCursor_BuiltinBitCastExpr = var"c\"CXCursor_BuiltinBitCastExpr\""
            const CXCursor_OMPMasterTaskLoopDirective = var"c\"CXCursor_OMPMasterTaskLoopDirective\""
            const CXCursor_OMPParallelMasterTaskLoopDirective = var"c\"CXCursor_OMPParallelMasterTaskLoopDirective\""
            const CXCursor_OMPMasterTaskLoopSimdDirective = var"c\"CXCursor_OMPMasterTaskLoopSimdDirective\""
            const CXCursor_OMPParallelMasterTaskLoopSimdDirective = var"c\"CXCursor_OMPParallelMasterTaskLoopSimdDirective\""
            const CXCursor_OMPParallelMasterDirective = var"c\"CXCursor_OMPParallelMasterDirective\""
            const CXCursor_OMPDepobjDirective = var"c\"CXCursor_OMPDepobjDirective\""
            const CXCursor_OMPScanDirective = var"c\"CXCursor_OMPScanDirective\""
            const CXCursor_LastStmt = var"c\"CXCursor_LastStmt\""
            const CXCursor_TranslationUnit = var"c\"CXCursor_TranslationUnit\""
            const CXCursor_FirstAttr = var"c\"CXCursor_FirstAttr\""
            const CXCursor_UnexposedAttr = var"c\"CXCursor_UnexposedAttr\""
            const CXCursor_IBActionAttr = var"c\"CXCursor_IBActionAttr\""
            const CXCursor_IBOutletAttr = var"c\"CXCursor_IBOutletAttr\""
            const CXCursor_IBOutletCollectionAttr = var"c\"CXCursor_IBOutletCollectionAttr\""
            const CXCursor_CXXFinalAttr = var"c\"CXCursor_CXXFinalAttr\""
            const CXCursor_CXXOverrideAttr = var"c\"CXCursor_CXXOverrideAttr\""
            const CXCursor_AnnotateAttr = var"c\"CXCursor_AnnotateAttr\""
            const CXCursor_AsmLabelAttr = var"c\"CXCursor_AsmLabelAttr\""
            const CXCursor_PackedAttr = var"c\"CXCursor_PackedAttr\""
            const CXCursor_PureAttr = var"c\"CXCursor_PureAttr\""
            const CXCursor_ConstAttr = var"c\"CXCursor_ConstAttr\""
            const CXCursor_NoDuplicateAttr = var"c\"CXCursor_NoDuplicateAttr\""
            const CXCursor_CUDAConstantAttr = var"c\"CXCursor_CUDAConstantAttr\""
            const CXCursor_CUDADeviceAttr = var"c\"CXCursor_CUDADeviceAttr\""
            const CXCursor_CUDAGlobalAttr = var"c\"CXCursor_CUDAGlobalAttr\""
            const CXCursor_CUDAHostAttr = var"c\"CXCursor_CUDAHostAttr\""
            const CXCursor_CUDASharedAttr = var"c\"CXCursor_CUDASharedAttr\""
            const CXCursor_VisibilityAttr = var"c\"CXCursor_VisibilityAttr\""
            const CXCursor_DLLExport = var"c\"CXCursor_DLLExport\""
            const CXCursor_DLLImport = var"c\"CXCursor_DLLImport\""
            const CXCursor_NSReturnsRetained = var"c\"CXCursor_NSReturnsRetained\""
            const CXCursor_NSReturnsNotRetained = var"c\"CXCursor_NSReturnsNotRetained\""
            const CXCursor_NSReturnsAutoreleased = var"c\"CXCursor_NSReturnsAutoreleased\""
            const CXCursor_NSConsumesSelf = var"c\"CXCursor_NSConsumesSelf\""
            const CXCursor_NSConsumed = var"c\"CXCursor_NSConsumed\""
            const CXCursor_ObjCException = var"c\"CXCursor_ObjCException\""
            const CXCursor_ObjCNSObject = var"c\"CXCursor_ObjCNSObject\""
            const CXCursor_ObjCIndependentClass = var"c\"CXCursor_ObjCIndependentClass\""
            const CXCursor_ObjCPreciseLifetime = var"c\"CXCursor_ObjCPreciseLifetime\""
            const CXCursor_ObjCReturnsInnerPointer = var"c\"CXCursor_ObjCReturnsInnerPointer\""
            const CXCursor_ObjCRequiresSuper = var"c\"CXCursor_ObjCRequiresSuper\""
            const CXCursor_ObjCRootClass = var"c\"CXCursor_ObjCRootClass\""
            const CXCursor_ObjCSubclassingRestricted = var"c\"CXCursor_ObjCSubclassingRestricted\""
            const CXCursor_ObjCExplicitProtocolImpl = var"c\"CXCursor_ObjCExplicitProtocolImpl\""
            const CXCursor_ObjCDesignatedInitializer = var"c\"CXCursor_ObjCDesignatedInitializer\""
            const CXCursor_ObjCRuntimeVisible = var"c\"CXCursor_ObjCRuntimeVisible\""
            const CXCursor_ObjCBoxable = var"c\"CXCursor_ObjCBoxable\""
            const CXCursor_FlagEnum = var"c\"CXCursor_FlagEnum\""
            const CXCursor_ConvergentAttr = var"c\"CXCursor_ConvergentAttr\""
            const CXCursor_WarnUnusedAttr = var"c\"CXCursor_WarnUnusedAttr\""
            const CXCursor_WarnUnusedResultAttr = var"c\"CXCursor_WarnUnusedResultAttr\""
            const CXCursor_AlignedAttr = var"c\"CXCursor_AlignedAttr\""
            const CXCursor_LastAttr = var"c\"CXCursor_LastAttr\""
            const CXCursor_PreprocessingDirective = var"c\"CXCursor_PreprocessingDirective\""
            const CXCursor_MacroDefinition = var"c\"CXCursor_MacroDefinition\""
            const CXCursor_MacroExpansion = var"c\"CXCursor_MacroExpansion\""
            const CXCursor_MacroInstantiation = var"c\"CXCursor_MacroInstantiation\""
            const CXCursor_InclusionDirective = var"c\"CXCursor_InclusionDirective\""
            const CXCursor_FirstPreprocessing = var"c\"CXCursor_FirstPreprocessing\""
            const CXCursor_LastPreprocessing = var"c\"CXCursor_LastPreprocessing\""
            const CXCursor_ModuleImportDecl = var"c\"CXCursor_ModuleImportDecl\""
            const CXCursor_TypeAliasTemplateDecl = var"c\"CXCursor_TypeAliasTemplateDecl\""
            const CXCursor_StaticAssert = var"c\"CXCursor_StaticAssert\""
            const CXCursor_FriendDecl = var"c\"CXCursor_FriendDecl\""
            const CXCursor_FirstExtraDecl = var"c\"CXCursor_FirstExtraDecl\""
            const CXCursor_LastExtraDecl = var"c\"CXCursor_LastExtraDecl\""
            const CXCursor_OverloadCandidate = var"c\"CXCursor_OverloadCandidate\""
            export var"c\"enum CXCursorKind\"", var"(c\"enum CXCursorKind\")", var"c\"CXCursor_UnexposedDecl\"", var"c\"CXCursor_StructDecl\"", var"c\"CXCursor_UnionDecl\"", var"c\"CXCursor_ClassDecl\"", var"c\"CXCursor_EnumDecl\"", var"c\"CXCursor_FieldDecl\"", var"c\"CXCursor_EnumConstantDecl\"", var"c\"CXCursor_FunctionDecl\"", var"c\"CXCursor_VarDecl\"", var"c\"CXCursor_ParmDecl\"", var"c\"CXCursor_ObjCInterfaceDecl\"", var"c\"CXCursor_ObjCCategoryDecl\"", var"c\"CXCursor_ObjCProtocolDecl\"", var"c\"CXCursor_ObjCPropertyDecl\"", var"c\"CXCursor_ObjCIvarDecl\"", var"c\"CXCursor_ObjCInstanceMethodDecl\"", var"c\"CXCursor_ObjCClassMethodDecl\"", var"c\"CXCursor_ObjCImplementationDecl\"", var"c\"CXCursor_ObjCCategoryImplDecl\"", var"c\"CXCursor_TypedefDecl\"", var"c\"CXCursor_CXXMethod\"", var"c\"CXCursor_Namespace\"", var"c\"CXCursor_LinkageSpec\"", var"c\"CXCursor_Constructor\"", var"c\"CXCursor_Destructor\"", var"c\"CXCursor_ConversionFunction\"", var"c\"CXCursor_TemplateTypeParameter\"", var"c\"CXCursor_NonTypeTemplateParameter\"", var"c\"CXCursor_TemplateTemplateParameter\"", var"c\"CXCursor_FunctionTemplate\"", var"c\"CXCursor_ClassTemplate\"", var"c\"CXCursor_ClassTemplatePartialSpecialization\"", var"c\"CXCursor_NamespaceAlias\"", var"c\"CXCursor_UsingDirective\"", var"c\"CXCursor_UsingDeclaration\"", var"c\"CXCursor_TypeAliasDecl\"", var"c\"CXCursor_ObjCSynthesizeDecl\"", var"c\"CXCursor_ObjCDynamicDecl\"", var"c\"CXCursor_CXXAccessSpecifier\"", var"c\"CXCursor_FirstDecl\"", var"c\"CXCursor_LastDecl\"", var"c\"CXCursor_FirstRef\"", var"c\"CXCursor_ObjCSuperClassRef\"", var"c\"CXCursor_ObjCProtocolRef\"", var"c\"CXCursor_ObjCClassRef\"", var"c\"CXCursor_TypeRef\"", var"c\"CXCursor_CXXBaseSpecifier\"", var"c\"CXCursor_TemplateRef\"", var"c\"CXCursor_NamespaceRef\"", var"c\"CXCursor_MemberRef\"", var"c\"CXCursor_LabelRef\"", var"c\"CXCursor_OverloadedDeclRef\"", var"c\"CXCursor_VariableRef\"", var"c\"CXCursor_LastRef\"", var"c\"CXCursor_FirstInvalid\"", var"c\"CXCursor_InvalidFile\"", var"c\"CXCursor_NoDeclFound\"", var"c\"CXCursor_NotImplemented\"", var"c\"CXCursor_InvalidCode\"", var"c\"CXCursor_LastInvalid\"", var"c\"CXCursor_FirstExpr\"", var"c\"CXCursor_UnexposedExpr\"", var"c\"CXCursor_DeclRefExpr\"", var"c\"CXCursor_MemberRefExpr\"", var"c\"CXCursor_CallExpr\"", var"c\"CXCursor_ObjCMessageExpr\"", var"c\"CXCursor_BlockExpr\"", var"c\"CXCursor_IntegerLiteral\"", var"c\"CXCursor_FloatingLiteral\"", var"c\"CXCursor_ImaginaryLiteral\"", var"c\"CXCursor_StringLiteral\"", var"c\"CXCursor_CharacterLiteral\"", var"c\"CXCursor_ParenExpr\"", var"c\"CXCursor_UnaryOperator\"", var"c\"CXCursor_ArraySubscriptExpr\"", var"c\"CXCursor_BinaryOperator\"", var"c\"CXCursor_CompoundAssignOperator\"", var"c\"CXCursor_ConditionalOperator\"", var"c\"CXCursor_CStyleCastExpr\"", var"c\"CXCursor_CompoundLiteralExpr\"", var"c\"CXCursor_InitListExpr\"", var"c\"CXCursor_AddrLabelExpr\"", var"c\"CXCursor_StmtExpr\"", var"c\"CXCursor_GenericSelectionExpr\"", var"c\"CXCursor_GNUNullExpr\"", var"c\"CXCursor_CXXStaticCastExpr\"", var"c\"CXCursor_CXXDynamicCastExpr\"", var"c\"CXCursor_CXXReinterpretCastExpr\"", var"c\"CXCursor_CXXConstCastExpr\"", var"c\"CXCursor_CXXFunctionalCastExpr\"", var"c\"CXCursor_CXXAddrspaceCastExpr\"", var"c\"CXCursor_CXXTypeidExpr\"", var"c\"CXCursor_CXXBoolLiteralExpr\"", var"c\"CXCursor_CXXNullPtrLiteralExpr\"", var"c\"CXCursor_CXXThisExpr\"", var"c\"CXCursor_CXXThrowExpr\"", var"c\"CXCursor_CXXNewExpr\"", var"c\"CXCursor_CXXDeleteExpr\"", var"c\"CXCursor_UnaryExpr\"", var"c\"CXCursor_ObjCStringLiteral\"", var"c\"CXCursor_ObjCEncodeExpr\"", var"c\"CXCursor_ObjCSelectorExpr\"", var"c\"CXCursor_ObjCProtocolExpr\"", var"c\"CXCursor_ObjCBridgedCastExpr\"", var"c\"CXCursor_PackExpansionExpr\"", var"c\"CXCursor_SizeOfPackExpr\"", var"c\"CXCursor_LambdaExpr\"", var"c\"CXCursor_ObjCBoolLiteralExpr\"", var"c\"CXCursor_ObjCSelfExpr\"", var"c\"CXCursor_OMPArraySectionExpr\"", var"c\"CXCursor_ObjCAvailabilityCheckExpr\"", var"c\"CXCursor_FixedPointLiteral\"", var"c\"CXCursor_OMPArrayShapingExpr\"", var"c\"CXCursor_OMPIteratorExpr\"", var"c\"CXCursor_LastExpr\"", var"c\"CXCursor_FirstStmt\"", var"c\"CXCursor_UnexposedStmt\"", var"c\"CXCursor_LabelStmt\"", var"c\"CXCursor_CompoundStmt\"", var"c\"CXCursor_CaseStmt\"", var"c\"CXCursor_DefaultStmt\"", var"c\"CXCursor_IfStmt\"", var"c\"CXCursor_SwitchStmt\"", var"c\"CXCursor_WhileStmt\"", var"c\"CXCursor_DoStmt\"", var"c\"CXCursor_ForStmt\"", var"c\"CXCursor_GotoStmt\"", var"c\"CXCursor_IndirectGotoStmt\"", var"c\"CXCursor_ContinueStmt\"", var"c\"CXCursor_BreakStmt\"", var"c\"CXCursor_ReturnStmt\"", var"c\"CXCursor_GCCAsmStmt\"", var"c\"CXCursor_AsmStmt\"", var"c\"CXCursor_ObjCAtTryStmt\"", var"c\"CXCursor_ObjCAtCatchStmt\"", var"c\"CXCursor_ObjCAtFinallyStmt\"", var"c\"CXCursor_ObjCAtThrowStmt\"", var"c\"CXCursor_ObjCAtSynchronizedStmt\"", var"c\"CXCursor_ObjCAutoreleasePoolStmt\"", var"c\"CXCursor_ObjCForCollectionStmt\"", var"c\"CXCursor_CXXCatchStmt\"", var"c\"CXCursor_CXXTryStmt\"", var"c\"CXCursor_CXXForRangeStmt\"", var"c\"CXCursor_SEHTryStmt\"", var"c\"CXCursor_SEHExceptStmt\"", var"c\"CXCursor_SEHFinallyStmt\"", var"c\"CXCursor_MSAsmStmt\"", var"c\"CXCursor_NullStmt\"", var"c\"CXCursor_DeclStmt\"", var"c\"CXCursor_OMPParallelDirective\"", var"c\"CXCursor_OMPSimdDirective\"", var"c\"CXCursor_OMPForDirective\"", var"c\"CXCursor_OMPSectionsDirective\"", var"c\"CXCursor_OMPSectionDirective\"", var"c\"CXCursor_OMPSingleDirective\"", var"c\"CXCursor_OMPParallelForDirective\"", var"c\"CXCursor_OMPParallelSectionsDirective\"", var"c\"CXCursor_OMPTaskDirective\"", var"c\"CXCursor_OMPMasterDirective\"", var"c\"CXCursor_OMPCriticalDirective\"", var"c\"CXCursor_OMPTaskyieldDirective\"", var"c\"CXCursor_OMPBarrierDirective\"", var"c\"CXCursor_OMPTaskwaitDirective\"", var"c\"CXCursor_OMPFlushDirective\"", var"c\"CXCursor_SEHLeaveStmt\"", var"c\"CXCursor_OMPOrderedDirective\"", var"c\"CXCursor_OMPAtomicDirective\"", var"c\"CXCursor_OMPForSimdDirective\"", var"c\"CXCursor_OMPParallelForSimdDirective\"", var"c\"CXCursor_OMPTargetDirective\"", var"c\"CXCursor_OMPTeamsDirective\"", var"c\"CXCursor_OMPTaskgroupDirective\"", var"c\"CXCursor_OMPCancellationPointDirective\"", var"c\"CXCursor_OMPCancelDirective\"", var"c\"CXCursor_OMPTargetDataDirective\"", var"c\"CXCursor_OMPTaskLoopDirective\"", var"c\"CXCursor_OMPTaskLoopSimdDirective\"", var"c\"CXCursor_OMPDistributeDirective\"", var"c\"CXCursor_OMPTargetEnterDataDirective\"", var"c\"CXCursor_OMPTargetExitDataDirective\"", var"c\"CXCursor_OMPTargetParallelDirective\"", var"c\"CXCursor_OMPTargetParallelForDirective\"", var"c\"CXCursor_OMPTargetUpdateDirective\"", var"c\"CXCursor_OMPDistributeParallelForDirective\"", var"c\"CXCursor_OMPDistributeParallelForSimdDirective\"", var"c\"CXCursor_OMPDistributeSimdDirective\"", var"c\"CXCursor_OMPTargetParallelForSimdDirective\"", var"c\"CXCursor_OMPTargetSimdDirective\"", var"c\"CXCursor_OMPTeamsDistributeDirective\"", var"c\"CXCursor_OMPTeamsDistributeSimdDirective\"", var"c\"CXCursor_OMPTeamsDistributeParallelForSimdDirective\"", var"c\"CXCursor_OMPTeamsDistributeParallelForDirective\"", var"c\"CXCursor_OMPTargetTeamsDirective\"", var"c\"CXCursor_OMPTargetTeamsDistributeDirective\"", var"c\"CXCursor_OMPTargetTeamsDistributeParallelForDirective\"", var"c\"CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective\"", var"c\"CXCursor_OMPTargetTeamsDistributeSimdDirective\"", var"c\"CXCursor_BuiltinBitCastExpr\"", var"c\"CXCursor_OMPMasterTaskLoopDirective\"", var"c\"CXCursor_OMPParallelMasterTaskLoopDirective\"", var"c\"CXCursor_OMPMasterTaskLoopSimdDirective\"", var"c\"CXCursor_OMPParallelMasterTaskLoopSimdDirective\"", var"c\"CXCursor_OMPParallelMasterDirective\"", var"c\"CXCursor_OMPDepobjDirective\"", var"c\"CXCursor_OMPScanDirective\"", var"c\"CXCursor_LastStmt\"", var"c\"CXCursor_TranslationUnit\"", var"c\"CXCursor_FirstAttr\"", var"c\"CXCursor_UnexposedAttr\"", var"c\"CXCursor_IBActionAttr\"", var"c\"CXCursor_IBOutletAttr\"", var"c\"CXCursor_IBOutletCollectionAttr\"", var"c\"CXCursor_CXXFinalAttr\"", var"c\"CXCursor_CXXOverrideAttr\"", var"c\"CXCursor_AnnotateAttr\"", var"c\"CXCursor_AsmLabelAttr\"", var"c\"CXCursor_PackedAttr\"", var"c\"CXCursor_PureAttr\"", var"c\"CXCursor_ConstAttr\"", var"c\"CXCursor_NoDuplicateAttr\"", var"c\"CXCursor_CUDAConstantAttr\"", var"c\"CXCursor_CUDADeviceAttr\"", var"c\"CXCursor_CUDAGlobalAttr\"", var"c\"CXCursor_CUDAHostAttr\"", var"c\"CXCursor_CUDASharedAttr\"", var"c\"CXCursor_VisibilityAttr\"", var"c\"CXCursor_DLLExport\"", var"c\"CXCursor_DLLImport\"", var"c\"CXCursor_NSReturnsRetained\"", var"c\"CXCursor_NSReturnsNotRetained\"", var"c\"CXCursor_NSReturnsAutoreleased\"", var"c\"CXCursor_NSConsumesSelf\"", var"c\"CXCursor_NSConsumed\"", var"c\"CXCursor_ObjCException\"", var"c\"CXCursor_ObjCNSObject\"", var"c\"CXCursor_ObjCIndependentClass\"", var"c\"CXCursor_ObjCPreciseLifetime\"", var"c\"CXCursor_ObjCReturnsInnerPointer\"", var"c\"CXCursor_ObjCRequiresSuper\"", var"c\"CXCursor_ObjCRootClass\"", var"c\"CXCursor_ObjCSubclassingRestricted\"", var"c\"CXCursor_ObjCExplicitProtocolImpl\"", var"c\"CXCursor_ObjCDesignatedInitializer\"", var"c\"CXCursor_ObjCRuntimeVisible\"", var"c\"CXCursor_ObjCBoxable\"", var"c\"CXCursor_FlagEnum\"", var"c\"CXCursor_ConvergentAttr\"", var"c\"CXCursor_WarnUnusedAttr\"", var"c\"CXCursor_WarnUnusedResultAttr\"", var"c\"CXCursor_AlignedAttr\"", var"c\"CXCursor_LastAttr\"", var"c\"CXCursor_PreprocessingDirective\"", var"c\"CXCursor_MacroDefinition\"", var"c\"CXCursor_MacroExpansion\"", var"c\"CXCursor_MacroInstantiation\"", var"c\"CXCursor_InclusionDirective\"", var"c\"CXCursor_FirstPreprocessing\"", var"c\"CXCursor_LastPreprocessing\"", var"c\"CXCursor_ModuleImportDecl\"", var"c\"CXCursor_TypeAliasTemplateDecl\"", var"c\"CXCursor_StaticAssert\"", var"c\"CXCursor_FriendDecl\"", var"c\"CXCursor_FirstExtraDecl\"", var"c\"CXCursor_LastExtraDecl\"", var"c\"CXCursor_OverloadCandidate\""
            export CXCursorKind, CXCursor_UnexposedDecl, CXCursor_StructDecl, CXCursor_UnionDecl, CXCursor_ClassDecl, CXCursor_EnumDecl, CXCursor_FieldDecl, CXCursor_EnumConstantDecl, CXCursor_FunctionDecl, CXCursor_VarDecl, CXCursor_ParmDecl, CXCursor_ObjCInterfaceDecl, CXCursor_ObjCCategoryDecl, CXCursor_ObjCProtocolDecl, CXCursor_ObjCPropertyDecl, CXCursor_ObjCIvarDecl, CXCursor_ObjCInstanceMethodDecl, CXCursor_ObjCClassMethodDecl, CXCursor_ObjCImplementationDecl, CXCursor_ObjCCategoryImplDecl, CXCursor_TypedefDecl, CXCursor_CXXMethod, CXCursor_Namespace, CXCursor_LinkageSpec, CXCursor_Constructor, CXCursor_Destructor, CXCursor_ConversionFunction, CXCursor_TemplateTypeParameter, CXCursor_NonTypeTemplateParameter, CXCursor_TemplateTemplateParameter, CXCursor_FunctionTemplate, CXCursor_ClassTemplate, CXCursor_ClassTemplatePartialSpecialization, CXCursor_NamespaceAlias, CXCursor_UsingDirective, CXCursor_UsingDeclaration, CXCursor_TypeAliasDecl, CXCursor_ObjCSynthesizeDecl, CXCursor_ObjCDynamicDecl, CXCursor_CXXAccessSpecifier, CXCursor_FirstDecl, CXCursor_LastDecl, CXCursor_FirstRef, CXCursor_ObjCSuperClassRef, CXCursor_ObjCProtocolRef, CXCursor_ObjCClassRef, CXCursor_TypeRef, CXCursor_CXXBaseSpecifier, CXCursor_TemplateRef, CXCursor_NamespaceRef, CXCursor_MemberRef, CXCursor_LabelRef, CXCursor_OverloadedDeclRef, CXCursor_VariableRef, CXCursor_LastRef, CXCursor_FirstInvalid, CXCursor_InvalidFile, CXCursor_NoDeclFound, CXCursor_NotImplemented, CXCursor_InvalidCode, CXCursor_LastInvalid, CXCursor_FirstExpr, CXCursor_UnexposedExpr, CXCursor_DeclRefExpr, CXCursor_MemberRefExpr, CXCursor_CallExpr, CXCursor_ObjCMessageExpr, CXCursor_BlockExpr, CXCursor_IntegerLiteral, CXCursor_FloatingLiteral, CXCursor_ImaginaryLiteral, CXCursor_StringLiteral, CXCursor_CharacterLiteral, CXCursor_ParenExpr, CXCursor_UnaryOperator, CXCursor_ArraySubscriptExpr, CXCursor_BinaryOperator, CXCursor_CompoundAssignOperator, CXCursor_ConditionalOperator, CXCursor_CStyleCastExpr, CXCursor_CompoundLiteralExpr, CXCursor_InitListExpr, CXCursor_AddrLabelExpr, CXCursor_StmtExpr, CXCursor_GenericSelectionExpr, CXCursor_GNUNullExpr, CXCursor_CXXStaticCastExpr, CXCursor_CXXDynamicCastExpr, CXCursor_CXXReinterpretCastExpr, CXCursor_CXXConstCastExpr, CXCursor_CXXFunctionalCastExpr, CXCursor_CXXAddrspaceCastExpr, CXCursor_CXXTypeidExpr, CXCursor_CXXBoolLiteralExpr, CXCursor_CXXNullPtrLiteralExpr, CXCursor_CXXThisExpr, CXCursor_CXXThrowExpr, CXCursor_CXXNewExpr, CXCursor_CXXDeleteExpr, CXCursor_UnaryExpr, CXCursor_ObjCStringLiteral, CXCursor_ObjCEncodeExpr, CXCursor_ObjCSelectorExpr, CXCursor_ObjCProtocolExpr, CXCursor_ObjCBridgedCastExpr, CXCursor_PackExpansionExpr, CXCursor_SizeOfPackExpr, CXCursor_LambdaExpr, CXCursor_ObjCBoolLiteralExpr, CXCursor_ObjCSelfExpr, CXCursor_OMPArraySectionExpr, CXCursor_ObjCAvailabilityCheckExpr, CXCursor_FixedPointLiteral, CXCursor_OMPArrayShapingExpr, CXCursor_OMPIteratorExpr, CXCursor_LastExpr, CXCursor_FirstStmt, CXCursor_UnexposedStmt, CXCursor_LabelStmt, CXCursor_CompoundStmt, CXCursor_CaseStmt, CXCursor_DefaultStmt, CXCursor_IfStmt, CXCursor_SwitchStmt, CXCursor_WhileStmt, CXCursor_DoStmt, CXCursor_ForStmt, CXCursor_GotoStmt, CXCursor_IndirectGotoStmt, CXCursor_ContinueStmt, CXCursor_BreakStmt, CXCursor_ReturnStmt, CXCursor_GCCAsmStmt, CXCursor_AsmStmt, CXCursor_ObjCAtTryStmt, CXCursor_ObjCAtCatchStmt, CXCursor_ObjCAtFinallyStmt, CXCursor_ObjCAtThrowStmt, CXCursor_ObjCAtSynchronizedStmt, CXCursor_ObjCAutoreleasePoolStmt, CXCursor_ObjCForCollectionStmt, CXCursor_CXXCatchStmt, CXCursor_CXXTryStmt, CXCursor_CXXForRangeStmt, CXCursor_SEHTryStmt, CXCursor_SEHExceptStmt, CXCursor_SEHFinallyStmt, CXCursor_MSAsmStmt, CXCursor_NullStmt, CXCursor_DeclStmt, CXCursor_OMPParallelDirective, CXCursor_OMPSimdDirective, CXCursor_OMPForDirective, CXCursor_OMPSectionsDirective, CXCursor_OMPSectionDirective, CXCursor_OMPSingleDirective, CXCursor_OMPParallelForDirective, CXCursor_OMPParallelSectionsDirective, CXCursor_OMPTaskDirective, CXCursor_OMPMasterDirective, CXCursor_OMPCriticalDirective, CXCursor_OMPTaskyieldDirective, CXCursor_OMPBarrierDirective, CXCursor_OMPTaskwaitDirective, CXCursor_OMPFlushDirective, CXCursor_SEHLeaveStmt, CXCursor_OMPOrderedDirective, CXCursor_OMPAtomicDirective, CXCursor_OMPForSimdDirective, CXCursor_OMPParallelForSimdDirective, CXCursor_OMPTargetDirective, CXCursor_OMPTeamsDirective, CXCursor_OMPTaskgroupDirective, CXCursor_OMPCancellationPointDirective, CXCursor_OMPCancelDirective, CXCursor_OMPTargetDataDirective, CXCursor_OMPTaskLoopDirective, CXCursor_OMPTaskLoopSimdDirective, CXCursor_OMPDistributeDirective, CXCursor_OMPTargetEnterDataDirective, CXCursor_OMPTargetExitDataDirective, CXCursor_OMPTargetParallelDirective, CXCursor_OMPTargetParallelForDirective, CXCursor_OMPTargetUpdateDirective, CXCursor_OMPDistributeParallelForDirective, CXCursor_OMPDistributeParallelForSimdDirective, CXCursor_OMPDistributeSimdDirective, CXCursor_OMPTargetParallelForSimdDirective, CXCursor_OMPTargetSimdDirective, CXCursor_OMPTeamsDistributeDirective, CXCursor_OMPTeamsDistributeSimdDirective, CXCursor_OMPTeamsDistributeParallelForSimdDirective, CXCursor_OMPTeamsDistributeParallelForDirective, CXCursor_OMPTargetTeamsDirective, CXCursor_OMPTargetTeamsDistributeDirective, CXCursor_OMPTargetTeamsDistributeParallelForDirective, CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective, CXCursor_OMPTargetTeamsDistributeSimdDirective, CXCursor_BuiltinBitCastExpr, CXCursor_OMPMasterTaskLoopDirective, CXCursor_OMPParallelMasterTaskLoopDirective, CXCursor_OMPMasterTaskLoopSimdDirective, CXCursor_OMPParallelMasterTaskLoopSimdDirective, CXCursor_OMPParallelMasterDirective, CXCursor_OMPDepobjDirective, CXCursor_OMPScanDirective, CXCursor_LastStmt, CXCursor_TranslationUnit, CXCursor_FirstAttr, CXCursor_UnexposedAttr, CXCursor_IBActionAttr, CXCursor_IBOutletAttr, CXCursor_IBOutletCollectionAttr, CXCursor_CXXFinalAttr, CXCursor_CXXOverrideAttr, CXCursor_AnnotateAttr, CXCursor_AsmLabelAttr, CXCursor_PackedAttr, CXCursor_PureAttr, CXCursor_ConstAttr, CXCursor_NoDuplicateAttr, CXCursor_CUDAConstantAttr, CXCursor_CUDADeviceAttr, CXCursor_CUDAGlobalAttr, CXCursor_CUDAHostAttr, CXCursor_CUDASharedAttr, CXCursor_VisibilityAttr, CXCursor_DLLExport, CXCursor_DLLImport, CXCursor_NSReturnsRetained, CXCursor_NSReturnsNotRetained, CXCursor_NSReturnsAutoreleased, CXCursor_NSConsumesSelf, CXCursor_NSConsumed, CXCursor_ObjCException, CXCursor_ObjCNSObject, CXCursor_ObjCIndependentClass, CXCursor_ObjCPreciseLifetime, CXCursor_ObjCReturnsInnerPointer, CXCursor_ObjCRequiresSuper, CXCursor_ObjCRootClass, CXCursor_ObjCSubclassingRestricted, CXCursor_ObjCExplicitProtocolImpl, CXCursor_ObjCDesignatedInitializer, CXCursor_ObjCRuntimeVisible, CXCursor_ObjCBoxable, CXCursor_FlagEnum, CXCursor_ConvergentAttr, CXCursor_WarnUnusedAttr, CXCursor_WarnUnusedResultAttr, CXCursor_AlignedAttr, CXCursor_LastAttr, CXCursor_PreprocessingDirective, CXCursor_MacroDefinition, CXCursor_MacroExpansion, CXCursor_MacroInstantiation, CXCursor_InclusionDirective, CXCursor_FirstPreprocessing, CXCursor_LastPreprocessing, CXCursor_ModuleImportDecl, CXCursor_TypeAliasTemplateDecl, CXCursor_StaticAssert, CXCursor_FriendDecl, CXCursor_FirstExtraDecl, CXCursor_LastExtraDecl, CXCursor_OverloadCandidate
            var"c\"enum CXCursorKind\""
        end
        begin
            abstract type var"c\"CXCursor\"" <: Cstruct end
            const CXCursor = var"c\"CXCursor\""
            export var"c\"CXCursor\""
            export CXCursor
            var"c\"CXCursor\""
        end
        begin
            struct var"(c\"CXCursor\")" <: var"c\"CXCursor\""
                mem::C.NTuple{32, C.UInt8}
                var"(c\"CXCursor\")"(::C.UndefInitializer, mem::C.NTuple{32, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXCursor\")"}) = begin
                    C.Tuple{C.Tuple{:kind, C.Tuple{var"c\"enum CXCursorKind\"", C.bitstype(var"c\"enum CXCursorKind\""), C.integraltype(var"c\"enum CXCursorKind\""), 0, 0, -1}}, C.Tuple{:xdata, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 4, 0, -1}}, C.Tuple{:data, C.Tuple{C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 3}, C.bitstype(C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 3}), C.integraltype(C.Carray{C.Cptr{C.Cconst{C.Cvoid}}, 3}), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXCursor\")"}) = begin
                    var"(c\"CXCursor\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXCursor\""}) = begin
                    var"(c\"CXCursor\")"
                end
            const CXCursor = var"c\"CXCursor\""
            export var"c\"CXCursor\"", var"(c\"CXCursor\")"
            export CXCursor
            var"c\"CXCursor\""
        end
        begin
        end
        begin
            const var"c\"clang_getNullCursor\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{}, :cdecl}, libpath, :clang_getNullCursor}()
            (func::C.typeof(var"c\"clang_getNullCursor\""))() = begin
                    C.funccall(func)
                end
            const clang_getNullCursor = var"c\"clang_getNullCursor\""
            export var"c\"clang_getNullCursor\""
            export clang_getNullCursor
            var"c\"clang_getNullCursor\""
        end
        begin
            const var"c\"clang_getTranslationUnitCursor\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_getTranslationUnitCursor}()
            (func::C.typeof(var"c\"clang_getTranslationUnitCursor\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getTranslationUnitCursor = var"c\"clang_getTranslationUnitCursor\""
            export var"c\"clang_getTranslationUnitCursor\""
            export clang_getTranslationUnitCursor
            var"c\"clang_getTranslationUnitCursor\""
        end
        begin
            const var"c\"clang_equalCursors\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\"", var"c\"CXCursor\""}, :cdecl}, libpath, :clang_equalCursors}()
            (func::C.typeof(var"c\"clang_equalCursors\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_equalCursors = var"c\"clang_equalCursors\""
            export var"c\"clang_equalCursors\""
            export clang_equalCursors
            var"c\"clang_equalCursors\""
        end
        begin
            const var"c\"clang_Cursor_isNull\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isNull}()
            (func::C.typeof(var"c\"clang_Cursor_isNull\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_Cursor_isNull = var"c\"clang_Cursor_isNull\""
            export var"c\"clang_Cursor_isNull\""
            export clang_Cursor_isNull
            var"c\"clang_Cursor_isNull\""
        end
        begin
            const var"c\"clang_hashCursor\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_hashCursor}()
            (func::C.typeof(var"c\"clang_hashCursor\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_hashCursor = var"c\"clang_hashCursor\""
            export var"c\"clang_hashCursor\""
            export clang_hashCursor
            var"c\"clang_hashCursor\""
        end
        begin
            const var"c\"clang_getCursorKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCursorKind\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorKind}()
            (func::C.typeof(var"c\"clang_getCursorKind\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorKind = var"c\"clang_getCursorKind\""
            export var"c\"clang_getCursorKind\""
            export clang_getCursorKind
            var"c\"clang_getCursorKind\""
        end
        begin
            const var"c\"clang_isDeclaration\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isDeclaration}()
            (func::C.typeof(var"c\"clang_isDeclaration\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isDeclaration = var"c\"clang_isDeclaration\""
            export var"c\"clang_isDeclaration\""
            export clang_isDeclaration
            var"c\"clang_isDeclaration\""
        end
        begin
            const var"c\"clang_isInvalidDeclaration\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_isInvalidDeclaration}()
            (func::C.typeof(var"c\"clang_isInvalidDeclaration\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isInvalidDeclaration = var"c\"clang_isInvalidDeclaration\""
            export var"c\"clang_isInvalidDeclaration\""
            export clang_isInvalidDeclaration
            var"c\"clang_isInvalidDeclaration\""
        end
        begin
            const var"c\"clang_isReference\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isReference}()
            (func::C.typeof(var"c\"clang_isReference\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isReference = var"c\"clang_isReference\""
            export var"c\"clang_isReference\""
            export clang_isReference
            var"c\"clang_isReference\""
        end
        begin
            const var"c\"clang_isExpression\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isExpression}()
            (func::C.typeof(var"c\"clang_isExpression\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isExpression = var"c\"clang_isExpression\""
            export var"c\"clang_isExpression\""
            export clang_isExpression
            var"c\"clang_isExpression\""
        end
        begin
            const var"c\"clang_isStatement\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isStatement}()
            (func::C.typeof(var"c\"clang_isStatement\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isStatement = var"c\"clang_isStatement\""
            export var"c\"clang_isStatement\""
            export clang_isStatement
            var"c\"clang_isStatement\""
        end
        begin
            const var"c\"clang_isAttribute\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isAttribute}()
            (func::C.typeof(var"c\"clang_isAttribute\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isAttribute = var"c\"clang_isAttribute\""
            export var"c\"clang_isAttribute\""
            export clang_isAttribute
            var"c\"clang_isAttribute\""
        end
        begin
            const var"c\"clang_Cursor_hasAttrs\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_hasAttrs}()
            (func::C.typeof(var"c\"clang_Cursor_hasAttrs\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_hasAttrs = var"c\"clang_Cursor_hasAttrs\""
            export var"c\"clang_Cursor_hasAttrs\""
            export clang_Cursor_hasAttrs
            var"c\"clang_Cursor_hasAttrs\""
        end
        begin
            const var"c\"clang_isInvalid\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isInvalid}()
            (func::C.typeof(var"c\"clang_isInvalid\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isInvalid = var"c\"clang_isInvalid\""
            export var"c\"clang_isInvalid\""
            export clang_isInvalid
            var"c\"clang_isInvalid\""
        end
        begin
            const var"c\"clang_isTranslationUnit\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isTranslationUnit}()
            (func::C.typeof(var"c\"clang_isTranslationUnit\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isTranslationUnit = var"c\"clang_isTranslationUnit\""
            export var"c\"clang_isTranslationUnit\""
            export clang_isTranslationUnit
            var"c\"clang_isTranslationUnit\""
        end
        begin
            const var"c\"clang_isPreprocessing\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isPreprocessing}()
            (func::C.typeof(var"c\"clang_isPreprocessing\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isPreprocessing = var"c\"clang_isPreprocessing\""
            export var"c\"clang_isPreprocessing\""
            export clang_isPreprocessing
            var"c\"clang_isPreprocessing\""
        end
        begin
            const var"c\"clang_isUnexposed\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_isUnexposed}()
            (func::C.typeof(var"c\"clang_isUnexposed\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isUnexposed = var"c\"clang_isUnexposed\""
            export var"c\"clang_isUnexposed\""
            export clang_isUnexposed
            var"c\"clang_isUnexposed\""
        end
        begin
            abstract type var"c\"enum CXLinkageKind\"" <: Cenum end
            const CXLinkageKind = var"c\"enum CXLinkageKind\""
            export var"c\"enum CXLinkageKind\""
            export CXLinkageKind
            var"c\"enum CXLinkageKind\""
        end
        begin
            primitive type var"(c\"enum CXLinkageKind\")" <: var"c\"enum CXLinkageKind\"" 32 end
            (::(Type){var"(c\"enum CXLinkageKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXLinkageKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXLinkageKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXLinkage_Invalid\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXLinkage_NoLinkage\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXLinkage_Internal\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXLinkage_UniqueExternal\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXLinkage_External\""), 0x0000000000000004}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXLinkageKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXLinkageKind\")"}) = begin
                    var"(c\"enum CXLinkageKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXLinkageKind\""}) = begin
                    var"(c\"enum CXLinkageKind\")"
                end
            const var"c\"CXLinkage_Invalid\"" = var"(c\"enum CXLinkageKind\")"(0x0000000000000000)
            const var"c\"CXLinkage_NoLinkage\"" = var"(c\"enum CXLinkageKind\")"(0x0000000000000001)
            const var"c\"CXLinkage_Internal\"" = var"(c\"enum CXLinkageKind\")"(0x0000000000000002)
            const var"c\"CXLinkage_UniqueExternal\"" = var"(c\"enum CXLinkageKind\")"(0x0000000000000003)
            const var"c\"CXLinkage_External\"" = var"(c\"enum CXLinkageKind\")"(0x0000000000000004)
            const CXLinkageKind = var"c\"enum CXLinkageKind\""
            const CXLinkage_Invalid = var"c\"CXLinkage_Invalid\""
            const CXLinkage_NoLinkage = var"c\"CXLinkage_NoLinkage\""
            const CXLinkage_Internal = var"c\"CXLinkage_Internal\""
            const CXLinkage_UniqueExternal = var"c\"CXLinkage_UniqueExternal\""
            const CXLinkage_External = var"c\"CXLinkage_External\""
            export var"c\"enum CXLinkageKind\"", var"(c\"enum CXLinkageKind\")", var"c\"CXLinkage_Invalid\"", var"c\"CXLinkage_NoLinkage\"", var"c\"CXLinkage_Internal\"", var"c\"CXLinkage_UniqueExternal\"", var"c\"CXLinkage_External\""
            export CXLinkageKind, CXLinkage_Invalid, CXLinkage_NoLinkage, CXLinkage_Internal, CXLinkage_UniqueExternal, CXLinkage_External
            var"c\"enum CXLinkageKind\""
        end
        begin
            const var"c\"clang_getCursorLinkage\"" = C.Cbinding{C.Cfunction{var"c\"enum CXLinkageKind\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorLinkage}()
            (func::C.typeof(var"c\"clang_getCursorLinkage\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorLinkage = var"c\"clang_getCursorLinkage\""
            export var"c\"clang_getCursorLinkage\""
            export clang_getCursorLinkage
            var"c\"clang_getCursorLinkage\""
        end
        begin
            abstract type var"c\"enum CXVisibilityKind\"" <: Cenum end
            const CXVisibilityKind = var"c\"enum CXVisibilityKind\""
            export var"c\"enum CXVisibilityKind\""
            export CXVisibilityKind
            var"c\"enum CXVisibilityKind\""
        end
        begin
            primitive type var"(c\"enum CXVisibilityKind\")" <: var"c\"enum CXVisibilityKind\"" 32 end
            (::(Type){var"(c\"enum CXVisibilityKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXVisibilityKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXVisibilityKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXVisibility_Invalid\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXVisibility_Hidden\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXVisibility_Protected\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXVisibility_Default\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXVisibilityKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXVisibilityKind\")"}) = begin
                    var"(c\"enum CXVisibilityKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXVisibilityKind\""}) = begin
                    var"(c\"enum CXVisibilityKind\")"
                end
            const var"c\"CXVisibility_Invalid\"" = var"(c\"enum CXVisibilityKind\")"(0x0000000000000000)
            const var"c\"CXVisibility_Hidden\"" = var"(c\"enum CXVisibilityKind\")"(0x0000000000000001)
            const var"c\"CXVisibility_Protected\"" = var"(c\"enum CXVisibilityKind\")"(0x0000000000000002)
            const var"c\"CXVisibility_Default\"" = var"(c\"enum CXVisibilityKind\")"(0x0000000000000003)
            const CXVisibilityKind = var"c\"enum CXVisibilityKind\""
            const CXVisibility_Invalid = var"c\"CXVisibility_Invalid\""
            const CXVisibility_Hidden = var"c\"CXVisibility_Hidden\""
            const CXVisibility_Protected = var"c\"CXVisibility_Protected\""
            const CXVisibility_Default = var"c\"CXVisibility_Default\""
            export var"c\"enum CXVisibilityKind\"", var"(c\"enum CXVisibilityKind\")", var"c\"CXVisibility_Invalid\"", var"c\"CXVisibility_Hidden\"", var"c\"CXVisibility_Protected\"", var"c\"CXVisibility_Default\""
            export CXVisibilityKind, CXVisibility_Invalid, CXVisibility_Hidden, CXVisibility_Protected, CXVisibility_Default
            var"c\"enum CXVisibilityKind\""
        end
        begin
            const var"c\"clang_getCursorVisibility\"" = C.Cbinding{C.Cfunction{var"c\"enum CXVisibilityKind\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorVisibility}()
            (func::C.typeof(var"c\"clang_getCursorVisibility\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorVisibility = var"c\"clang_getCursorVisibility\""
            export var"c\"clang_getCursorVisibility\""
            export clang_getCursorVisibility
            var"c\"clang_getCursorVisibility\""
        end
        begin
            const var"c\"clang_getCursorAvailability\"" = C.Cbinding{C.Cfunction{var"c\"enum CXAvailabilityKind\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorAvailability}()
            (func::C.typeof(var"c\"clang_getCursorAvailability\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorAvailability = var"c\"clang_getCursorAvailability\""
            export var"c\"clang_getCursorAvailability\""
            export clang_getCursorAvailability
            var"c\"clang_getCursorAvailability\""
        end
        begin
            abstract type var"c\"struct CXPlatformAvailability\"" <: Cstruct end
            const CXPlatformAvailability = var"c\"struct CXPlatformAvailability\""
            export var"c\"struct CXPlatformAvailability\""
            export CXPlatformAvailability
            var"c\"struct CXPlatformAvailability\""
        end
        begin
            struct var"(c\"struct CXPlatformAvailability\")" <: var"c\"struct CXPlatformAvailability\""
                mem::C.NTuple{72, C.UInt8}
                var"(c\"struct CXPlatformAvailability\")"(::C.UndefInitializer, mem::C.NTuple{72, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"struct CXPlatformAvailability\")"}) = begin
                    C.Tuple{C.Tuple{:Platform, C.Tuple{var"c\"CXString\"", C.bitstype(var"c\"CXString\""), C.integraltype(var"c\"CXString\""), 0, 0, -1}}, C.Tuple{:Introduced, C.Tuple{var"c\"CXVersion\"", C.bitstype(var"c\"CXVersion\""), C.integraltype(var"c\"CXVersion\""), 16, 0, -1}}, C.Tuple{:Deprecated, C.Tuple{var"c\"CXVersion\"", C.bitstype(var"c\"CXVersion\""), C.integraltype(var"c\"CXVersion\""), 28, 0, -1}}, C.Tuple{:Obsoleted, C.Tuple{var"c\"CXVersion\"", C.bitstype(var"c\"CXVersion\""), C.integraltype(var"c\"CXVersion\""), 40, 0, -1}}, C.Tuple{:Unavailable, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 52, 0, -1}}, C.Tuple{:Message, C.Tuple{var"c\"CXString\"", C.bitstype(var"c\"CXString\""), C.integraltype(var"c\"CXString\""), 56, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"struct CXPlatformAvailability\")"}) = begin
                    var"(c\"struct CXPlatformAvailability\")"
                end
            (C.C).bitstype(::C.Type{var"c\"struct CXPlatformAvailability\""}) = begin
                    var"(c\"struct CXPlatformAvailability\")"
                end
            const CXPlatformAvailability = var"c\"struct CXPlatformAvailability\""
            export var"c\"struct CXPlatformAvailability\"", var"(c\"struct CXPlatformAvailability\")"
            export CXPlatformAvailability
            var"c\"struct CXPlatformAvailability\""
        end
        begin
            const var"c\"CXPlatformAvailability\"" = var"c\"struct CXPlatformAvailability\""
            const CXPlatformAvailability = var"c\"CXPlatformAvailability\""
            export var"c\"CXPlatformAvailability\""
            export CXPlatformAvailability
            var"c\"CXPlatformAvailability\""
        end
        begin
            const var"c\"clang_getCursorPlatformAvailability\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\"", C.Cptr{C.Cint}, C.Cptr{var"c\"CXString\""}, C.Cptr{C.Cint}, C.Cptr{var"c\"CXString\""}, C.Cptr{var"c\"CXPlatformAvailability\""}, C.Cint}, :cdecl}, libpath, :clang_getCursorPlatformAvailability}()
            (func::C.typeof(var"c\"clang_getCursorPlatformAvailability\""))(var"c\"cursor\"", var"c\"always_deprecated\"", var"c\"deprecated_message\"", var"c\"always_unavailable\"", var"c\"unavailable_message\"", var"c\"availability\"", var"c\"availability_size\"") = begin
                    C.funccall(func, var"c\"cursor\"", var"c\"always_deprecated\"", var"c\"deprecated_message\"", var"c\"always_unavailable\"", var"c\"unavailable_message\"", var"c\"availability\"", var"c\"availability_size\"")
                end
            const clang_getCursorPlatformAvailability = var"c\"clang_getCursorPlatformAvailability\""
            export var"c\"clang_getCursorPlatformAvailability\""
            export clang_getCursorPlatformAvailability
            var"c\"clang_getCursorPlatformAvailability\""
        end
        begin
            const var"c\"clang_disposeCXPlatformAvailability\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{var"c\"CXPlatformAvailability\""}}, :cdecl}, libpath, :clang_disposeCXPlatformAvailability}()
            (func::C.typeof(var"c\"clang_disposeCXPlatformAvailability\""))(var"c\"availability\"") = begin
                    C.funccall(func, var"c\"availability\"")
                end
            const clang_disposeCXPlatformAvailability = var"c\"clang_disposeCXPlatformAvailability\""
            export var"c\"clang_disposeCXPlatformAvailability\""
            export clang_disposeCXPlatformAvailability
            var"c\"clang_disposeCXPlatformAvailability\""
        end
        begin
            abstract type var"c\"enum CXLanguageKind\"" <: Cenum end
            const CXLanguageKind = var"c\"enum CXLanguageKind\""
            export var"c\"enum CXLanguageKind\""
            export CXLanguageKind
            var"c\"enum CXLanguageKind\""
        end
        begin
            primitive type var"(c\"enum CXLanguageKind\")" <: var"c\"enum CXLanguageKind\"" 32 end
            (::(Type){var"(c\"enum CXLanguageKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXLanguageKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXLanguageKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXLanguage_Invalid\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXLanguage_C\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXLanguage_ObjC\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXLanguage_CPlusPlus\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXLanguageKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXLanguageKind\")"}) = begin
                    var"(c\"enum CXLanguageKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXLanguageKind\""}) = begin
                    var"(c\"enum CXLanguageKind\")"
                end
            const var"c\"CXLanguage_Invalid\"" = var"(c\"enum CXLanguageKind\")"(0x0000000000000000)
            const var"c\"CXLanguage_C\"" = var"(c\"enum CXLanguageKind\")"(0x0000000000000001)
            const var"c\"CXLanguage_ObjC\"" = var"(c\"enum CXLanguageKind\")"(0x0000000000000002)
            const var"c\"CXLanguage_CPlusPlus\"" = var"(c\"enum CXLanguageKind\")"(0x0000000000000003)
            const CXLanguageKind = var"c\"enum CXLanguageKind\""
            const CXLanguage_Invalid = var"c\"CXLanguage_Invalid\""
            const CXLanguage_C = var"c\"CXLanguage_C\""
            const CXLanguage_ObjC = var"c\"CXLanguage_ObjC\""
            const CXLanguage_CPlusPlus = var"c\"CXLanguage_CPlusPlus\""
            export var"c\"enum CXLanguageKind\"", var"(c\"enum CXLanguageKind\")", var"c\"CXLanguage_Invalid\"", var"c\"CXLanguage_C\"", var"c\"CXLanguage_ObjC\"", var"c\"CXLanguage_CPlusPlus\""
            export CXLanguageKind, CXLanguage_Invalid, CXLanguage_C, CXLanguage_ObjC, CXLanguage_CPlusPlus
            var"c\"enum CXLanguageKind\""
        end
        begin
            const var"c\"clang_getCursorLanguage\"" = C.Cbinding{C.Cfunction{var"c\"enum CXLanguageKind\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorLanguage}()
            (func::C.typeof(var"c\"clang_getCursorLanguage\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorLanguage = var"c\"clang_getCursorLanguage\""
            export var"c\"clang_getCursorLanguage\""
            export clang_getCursorLanguage
            var"c\"clang_getCursorLanguage\""
        end
        begin
            abstract type var"c\"enum CXTLSKind\"" <: Cenum end
            const CXTLSKind = var"c\"enum CXTLSKind\""
            export var"c\"enum CXTLSKind\""
            export CXTLSKind
            var"c\"enum CXTLSKind\""
        end
        begin
            primitive type var"(c\"enum CXTLSKind\")" <: var"c\"enum CXTLSKind\"" 32 end
            (::(Type){var"(c\"enum CXTLSKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTLSKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTLSKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXTLS_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXTLS_Dynamic\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXTLS_Static\""), 0x0000000000000002}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTLSKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTLSKind\")"}) = begin
                    var"(c\"enum CXTLSKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTLSKind\""}) = begin
                    var"(c\"enum CXTLSKind\")"
                end
            const var"c\"CXTLS_None\"" = var"(c\"enum CXTLSKind\")"(0x0000000000000000)
            const var"c\"CXTLS_Dynamic\"" = var"(c\"enum CXTLSKind\")"(0x0000000000000001)
            const var"c\"CXTLS_Static\"" = var"(c\"enum CXTLSKind\")"(0x0000000000000002)
            const CXTLSKind = var"c\"enum CXTLSKind\""
            const CXTLS_None = var"c\"CXTLS_None\""
            const CXTLS_Dynamic = var"c\"CXTLS_Dynamic\""
            const CXTLS_Static = var"c\"CXTLS_Static\""
            export var"c\"enum CXTLSKind\"", var"(c\"enum CXTLSKind\")", var"c\"CXTLS_None\"", var"c\"CXTLS_Dynamic\"", var"c\"CXTLS_Static\""
            export CXTLSKind, CXTLS_None, CXTLS_Dynamic, CXTLS_Static
            var"c\"enum CXTLSKind\""
        end
        begin
            const var"c\"clang_getCursorTLSKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXTLSKind\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorTLSKind}()
            (func::C.typeof(var"c\"clang_getCursorTLSKind\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorTLSKind = var"c\"clang_getCursorTLSKind\""
            export var"c\"clang_getCursorTLSKind\""
            export clang_getCursorTLSKind
            var"c\"clang_getCursorTLSKind\""
        end
        begin
            const var"c\"clang_Cursor_getTranslationUnit\"" = C.Cbinding{C.Cfunction{var"c\"CXTranslationUnit\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getTranslationUnit}()
            (func::C.typeof(var"c\"clang_Cursor_getTranslationUnit\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_Cursor_getTranslationUnit = var"c\"clang_Cursor_getTranslationUnit\""
            export var"c\"clang_Cursor_getTranslationUnit\""
            export clang_Cursor_getTranslationUnit
            var"c\"clang_Cursor_getTranslationUnit\""
        end
        begin
            abstract type var"c\"struct CXCursorSetImpl\"" <: Cstruct end
            const CXCursorSetImpl = var"c\"struct CXCursorSetImpl\""
            export var"c\"struct CXCursorSetImpl\""
            export CXCursorSetImpl
            var"c\"struct CXCursorSetImpl\""
        end
        begin
            const var"c\"CXCursorSet\"" = C.Cptr{var"c\"struct CXCursorSetImpl\""}
            const CXCursorSet = var"c\"CXCursorSet\""
            export var"c\"CXCursorSet\""
            export CXCursorSet
            var"c\"CXCursorSet\""
        end
        begin
            const var"c\"clang_createCXCursorSet\"" = C.Cbinding{C.Cfunction{var"c\"CXCursorSet\"", C.Tuple{}, :cdecl}, libpath, :clang_createCXCursorSet}()
            (func::C.typeof(var"c\"clang_createCXCursorSet\""))() = begin
                    C.funccall(func)
                end
            const clang_createCXCursorSet = var"c\"clang_createCXCursorSet\""
            export var"c\"clang_createCXCursorSet\""
            export clang_createCXCursorSet
            var"c\"clang_createCXCursorSet\""
        end
        begin
            const var"c\"clang_disposeCXCursorSet\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXCursorSet\""}, :cdecl}, libpath, :clang_disposeCXCursorSet}()
            (func::C.typeof(var"c\"clang_disposeCXCursorSet\""))(var"c\"cset\"") = begin
                    C.funccall(func, var"c\"cset\"")
                end
            const clang_disposeCXCursorSet = var"c\"clang_disposeCXCursorSet\""
            export var"c\"clang_disposeCXCursorSet\""
            export clang_disposeCXCursorSet
            var"c\"clang_disposeCXCursorSet\""
        end
        begin
            const var"c\"clang_CXCursorSet_contains\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursorSet\"", var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXCursorSet_contains}()
            (func::C.typeof(var"c\"clang_CXCursorSet_contains\""))(var"c\"cset\"", var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cset\"", var"c\"cursor\"")
                end
            const clang_CXCursorSet_contains = var"c\"clang_CXCursorSet_contains\""
            export var"c\"clang_CXCursorSet_contains\""
            export clang_CXCursorSet_contains
            var"c\"clang_CXCursorSet_contains\""
        end
        begin
            const var"c\"clang_CXCursorSet_insert\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursorSet\"", var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXCursorSet_insert}()
            (func::C.typeof(var"c\"clang_CXCursorSet_insert\""))(var"c\"cset\"", var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cset\"", var"c\"cursor\"")
                end
            const clang_CXCursorSet_insert = var"c\"clang_CXCursorSet_insert\""
            export var"c\"clang_CXCursorSet_insert\""
            export clang_CXCursorSet_insert
            var"c\"clang_CXCursorSet_insert\""
        end
        begin
            const var"c\"clang_getCursorSemanticParent\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorSemanticParent}()
            (func::C.typeof(var"c\"clang_getCursorSemanticParent\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorSemanticParent = var"c\"clang_getCursorSemanticParent\""
            export var"c\"clang_getCursorSemanticParent\""
            export clang_getCursorSemanticParent
            var"c\"clang_getCursorSemanticParent\""
        end
        begin
            const var"c\"clang_getCursorLexicalParent\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorLexicalParent}()
            (func::C.typeof(var"c\"clang_getCursorLexicalParent\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorLexicalParent = var"c\"clang_getCursorLexicalParent\""
            export var"c\"clang_getCursorLexicalParent\""
            export clang_getCursorLexicalParent
            var"c\"clang_getCursorLexicalParent\""
        end
        begin
            const var"c\"clang_getOverriddenCursors\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXCursor\"", C.Cptr{C.Cptr{var"c\"CXCursor\""}}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_getOverriddenCursors}()
            (func::C.typeof(var"c\"clang_getOverriddenCursors\""))(var"c\"cursor\"", var"c\"overridden\"", var"c\"num_overridden\"") = begin
                    C.funccall(func, var"c\"cursor\"", var"c\"overridden\"", var"c\"num_overridden\"")
                end
            const clang_getOverriddenCursors = var"c\"clang_getOverriddenCursors\""
            export var"c\"clang_getOverriddenCursors\""
            export clang_getOverriddenCursors
            var"c\"clang_getOverriddenCursors\""
        end
        begin
            const var"c\"clang_disposeOverriddenCursors\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{var"c\"CXCursor\""}}, :cdecl}, libpath, :clang_disposeOverriddenCursors}()
            (func::C.typeof(var"c\"clang_disposeOverriddenCursors\""))(var"c\"overridden\"") = begin
                    C.funccall(func, var"c\"overridden\"")
                end
            const clang_disposeOverriddenCursors = var"c\"clang_disposeOverriddenCursors\""
            export var"c\"clang_disposeOverriddenCursors\""
            export clang_disposeOverriddenCursors
            var"c\"clang_disposeOverriddenCursors\""
        end
        begin
            const var"c\"clang_getIncludedFile\"" = C.Cbinding{C.Cfunction{var"c\"CXFile\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getIncludedFile}()
            (func::C.typeof(var"c\"clang_getIncludedFile\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getIncludedFile = var"c\"clang_getIncludedFile\""
            export var"c\"clang_getIncludedFile\""
            export clang_getIncludedFile
            var"c\"clang_getIncludedFile\""
        end
        begin
            const var"c\"clang_getCursor\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXSourceLocation\""}, :cdecl}, libpath, :clang_getCursor}()
            (func::C.typeof(var"c\"clang_getCursor\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_getCursor = var"c\"clang_getCursor\""
            export var"c\"clang_getCursor\""
            export clang_getCursor
            var"c\"clang_getCursor\""
        end
        begin
            const var"c\"clang_getCursorLocation\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorLocation}()
            (func::C.typeof(var"c\"clang_getCursorLocation\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorLocation = var"c\"clang_getCursorLocation\""
            export var"c\"clang_getCursorLocation\""
            export clang_getCursorLocation
            var"c\"clang_getCursorLocation\""
        end
        begin
            const var"c\"clang_getCursorExtent\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorExtent}()
            (func::C.typeof(var"c\"clang_getCursorExtent\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorExtent = var"c\"clang_getCursorExtent\""
            export var"c\"clang_getCursorExtent\""
            export clang_getCursorExtent
            var"c\"clang_getCursorExtent\""
        end
        begin
            abstract type var"c\"enum CXTypeKind\"" <: Cenum end
            const CXTypeKind = var"c\"enum CXTypeKind\""
            export var"c\"enum CXTypeKind\""
            export CXTypeKind
            var"c\"enum CXTypeKind\""
        end
        begin
            primitive type var"(c\"enum CXTypeKind\")" <: var"c\"enum CXTypeKind\"" 32 end
            (::(Type){var"(c\"enum CXTypeKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTypeKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTypeKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXType_Invalid\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXType_Unexposed\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXType_Void\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXType_Bool\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXType_Char_U\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXType_UChar\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXType_Char16\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXType_Char32\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXType_UShort\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXType_UInt\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXType_ULong\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXType_ULongLong\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXType_UInt128\""), 0x000000000000000c}, C.Tuple{Symbol("c\"CXType_Char_S\""), 0x000000000000000d}, C.Tuple{Symbol("c\"CXType_SChar\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXType_WChar\""), 0x000000000000000f}, C.Tuple{Symbol("c\"CXType_Short\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXType_Int\""), 0x0000000000000011}, C.Tuple{Symbol("c\"CXType_Long\""), 0x0000000000000012}, C.Tuple{Symbol("c\"CXType_LongLong\""), 0x0000000000000013}, C.Tuple{Symbol("c\"CXType_Int128\""), 0x0000000000000014}, C.Tuple{Symbol("c\"CXType_Float\""), 0x0000000000000015}, C.Tuple{Symbol("c\"CXType_Double\""), 0x0000000000000016}, C.Tuple{Symbol("c\"CXType_LongDouble\""), 0x0000000000000017}, C.Tuple{Symbol("c\"CXType_NullPtr\""), 0x0000000000000018}, C.Tuple{Symbol("c\"CXType_Overload\""), 0x0000000000000019}, C.Tuple{Symbol("c\"CXType_Dependent\""), 0x000000000000001a}, C.Tuple{Symbol("c\"CXType_ObjCId\""), 0x000000000000001b}, C.Tuple{Symbol("c\"CXType_ObjCClass\""), 0x000000000000001c}, C.Tuple{Symbol("c\"CXType_ObjCSel\""), 0x000000000000001d}, C.Tuple{Symbol("c\"CXType_Float128\""), 0x000000000000001e}, C.Tuple{Symbol("c\"CXType_Half\""), 0x000000000000001f}, C.Tuple{Symbol("c\"CXType_Float16\""), 0x0000000000000020}, C.Tuple{Symbol("c\"CXType_ShortAccum\""), 0x0000000000000021}, C.Tuple{Symbol("c\"CXType_Accum\""), 0x0000000000000022}, C.Tuple{Symbol("c\"CXType_LongAccum\""), 0x0000000000000023}, C.Tuple{Symbol("c\"CXType_UShortAccum\""), 0x0000000000000024}, C.Tuple{Symbol("c\"CXType_UAccum\""), 0x0000000000000025}, C.Tuple{Symbol("c\"CXType_ULongAccum\""), 0x0000000000000026}, C.Tuple{Symbol("c\"CXType_BFloat16\""), 0x0000000000000027}, C.Tuple{Symbol("c\"CXType_FirstBuiltin\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXType_LastBuiltin\""), 0x0000000000000027}, C.Tuple{Symbol("c\"CXType_Complex\""), 0x0000000000000064}, C.Tuple{Symbol("c\"CXType_Pointer\""), 0x0000000000000065}, C.Tuple{Symbol("c\"CXType_BlockPointer\""), 0x0000000000000066}, C.Tuple{Symbol("c\"CXType_LValueReference\""), 0x0000000000000067}, C.Tuple{Symbol("c\"CXType_RValueReference\""), 0x0000000000000068}, C.Tuple{Symbol("c\"CXType_Record\""), 0x0000000000000069}, C.Tuple{Symbol("c\"CXType_Enum\""), 0x000000000000006a}, C.Tuple{Symbol("c\"CXType_Typedef\""), 0x000000000000006b}, C.Tuple{Symbol("c\"CXType_ObjCInterface\""), 0x000000000000006c}, C.Tuple{Symbol("c\"CXType_ObjCObjectPointer\""), 0x000000000000006d}, C.Tuple{Symbol("c\"CXType_FunctionNoProto\""), 0x000000000000006e}, C.Tuple{Symbol("c\"CXType_FunctionProto\""), 0x000000000000006f}, C.Tuple{Symbol("c\"CXType_ConstantArray\""), 0x0000000000000070}, C.Tuple{Symbol("c\"CXType_Vector\""), 0x0000000000000071}, C.Tuple{Symbol("c\"CXType_IncompleteArray\""), 0x0000000000000072}, C.Tuple{Symbol("c\"CXType_VariableArray\""), 0x0000000000000073}, C.Tuple{Symbol("c\"CXType_DependentSizedArray\""), 0x0000000000000074}, C.Tuple{Symbol("c\"CXType_MemberPointer\""), 0x0000000000000075}, C.Tuple{Symbol("c\"CXType_Auto\""), 0x0000000000000076}, C.Tuple{Symbol("c\"CXType_Elaborated\""), 0x0000000000000077}, C.Tuple{Symbol("c\"CXType_Pipe\""), 0x0000000000000078}, C.Tuple{Symbol("c\"CXType_OCLImage1dRO\""), 0x0000000000000079}, C.Tuple{Symbol("c\"CXType_OCLImage1dArrayRO\""), 0x000000000000007a}, C.Tuple{Symbol("c\"CXType_OCLImage1dBufferRO\""), 0x000000000000007b}, C.Tuple{Symbol("c\"CXType_OCLImage2dRO\""), 0x000000000000007c}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayRO\""), 0x000000000000007d}, C.Tuple{Symbol("c\"CXType_OCLImage2dDepthRO\""), 0x000000000000007e}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayDepthRO\""), 0x000000000000007f}, C.Tuple{Symbol("c\"CXType_OCLImage2dMSAARO\""), 0x0000000000000080}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayMSAARO\""), 0x0000000000000081}, C.Tuple{Symbol("c\"CXType_OCLImage2dMSAADepthRO\""), 0x0000000000000082}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayMSAADepthRO\""), 0x0000000000000083}, C.Tuple{Symbol("c\"CXType_OCLImage3dRO\""), 0x0000000000000084}, C.Tuple{Symbol("c\"CXType_OCLImage1dWO\""), 0x0000000000000085}, C.Tuple{Symbol("c\"CXType_OCLImage1dArrayWO\""), 0x0000000000000086}, C.Tuple{Symbol("c\"CXType_OCLImage1dBufferWO\""), 0x0000000000000087}, C.Tuple{Symbol("c\"CXType_OCLImage2dWO\""), 0x0000000000000088}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayWO\""), 0x0000000000000089}, C.Tuple{Symbol("c\"CXType_OCLImage2dDepthWO\""), 0x000000000000008a}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayDepthWO\""), 0x000000000000008b}, C.Tuple{Symbol("c\"CXType_OCLImage2dMSAAWO\""), 0x000000000000008c}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayMSAAWO\""), 0x000000000000008d}, C.Tuple{Symbol("c\"CXType_OCLImage2dMSAADepthWO\""), 0x000000000000008e}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayMSAADepthWO\""), 0x000000000000008f}, C.Tuple{Symbol("c\"CXType_OCLImage3dWO\""), 0x0000000000000090}, C.Tuple{Symbol("c\"CXType_OCLImage1dRW\""), 0x0000000000000091}, C.Tuple{Symbol("c\"CXType_OCLImage1dArrayRW\""), 0x0000000000000092}, C.Tuple{Symbol("c\"CXType_OCLImage1dBufferRW\""), 0x0000000000000093}, C.Tuple{Symbol("c\"CXType_OCLImage2dRW\""), 0x0000000000000094}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayRW\""), 0x0000000000000095}, C.Tuple{Symbol("c\"CXType_OCLImage2dDepthRW\""), 0x0000000000000096}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayDepthRW\""), 0x0000000000000097}, C.Tuple{Symbol("c\"CXType_OCLImage2dMSAARW\""), 0x0000000000000098}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayMSAARW\""), 0x0000000000000099}, C.Tuple{Symbol("c\"CXType_OCLImage2dMSAADepthRW\""), 0x000000000000009a}, C.Tuple{Symbol("c\"CXType_OCLImage2dArrayMSAADepthRW\""), 0x000000000000009b}, C.Tuple{Symbol("c\"CXType_OCLImage3dRW\""), 0x000000000000009c}, C.Tuple{Symbol("c\"CXType_OCLSampler\""), 0x000000000000009d}, C.Tuple{Symbol("c\"CXType_OCLEvent\""), 0x000000000000009e}, C.Tuple{Symbol("c\"CXType_OCLQueue\""), 0x000000000000009f}, C.Tuple{Symbol("c\"CXType_OCLReserveID\""), 0x00000000000000a0}, C.Tuple{Symbol("c\"CXType_ObjCObject\""), 0x00000000000000a1}, C.Tuple{Symbol("c\"CXType_ObjCTypeParam\""), 0x00000000000000a2}, C.Tuple{Symbol("c\"CXType_Attributed\""), 0x00000000000000a3}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCMcePayload\""), 0x00000000000000a4}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCImePayload\""), 0x00000000000000a5}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCRefPayload\""), 0x00000000000000a6}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCSicPayload\""), 0x00000000000000a7}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCMceResult\""), 0x00000000000000a8}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCImeResult\""), 0x00000000000000a9}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCRefResult\""), 0x00000000000000aa}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCSicResult\""), 0x00000000000000ab}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout\""), 0x00000000000000ac}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout\""), 0x00000000000000ad}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCImeSingleRefStreamin\""), 0x00000000000000ae}, C.Tuple{Symbol("c\"CXType_OCLIntelSubgroupAVCImeDualRefStreamin\""), 0x00000000000000af}, C.Tuple{Symbol("c\"CXType_ExtVector\""), 0x00000000000000b0}, C.Tuple{Symbol("c\"CXType_Atomic\""), 0x00000000000000b1}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTypeKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTypeKind\")"}) = begin
                    var"(c\"enum CXTypeKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTypeKind\""}) = begin
                    var"(c\"enum CXTypeKind\")"
                end
            const var"c\"CXType_Invalid\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000000)
            const var"c\"CXType_Unexposed\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000001)
            const var"c\"CXType_Void\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000002)
            const var"c\"CXType_Bool\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000003)
            const var"c\"CXType_Char_U\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000004)
            const var"c\"CXType_UChar\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000005)
            const var"c\"CXType_Char16\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000006)
            const var"c\"CXType_Char32\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000007)
            const var"c\"CXType_UShort\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000008)
            const var"c\"CXType_UInt\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000009)
            const var"c\"CXType_ULong\"" = var"(c\"enum CXTypeKind\")"(0x000000000000000a)
            const var"c\"CXType_ULongLong\"" = var"(c\"enum CXTypeKind\")"(0x000000000000000b)
            const var"c\"CXType_UInt128\"" = var"(c\"enum CXTypeKind\")"(0x000000000000000c)
            const var"c\"CXType_Char_S\"" = var"(c\"enum CXTypeKind\")"(0x000000000000000d)
            const var"c\"CXType_SChar\"" = var"(c\"enum CXTypeKind\")"(0x000000000000000e)
            const var"c\"CXType_WChar\"" = var"(c\"enum CXTypeKind\")"(0x000000000000000f)
            const var"c\"CXType_Short\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000010)
            const var"c\"CXType_Int\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000011)
            const var"c\"CXType_Long\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000012)
            const var"c\"CXType_LongLong\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000013)
            const var"c\"CXType_Int128\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000014)
            const var"c\"CXType_Float\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000015)
            const var"c\"CXType_Double\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000016)
            const var"c\"CXType_LongDouble\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000017)
            const var"c\"CXType_NullPtr\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000018)
            const var"c\"CXType_Overload\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000019)
            const var"c\"CXType_Dependent\"" = var"(c\"enum CXTypeKind\")"(0x000000000000001a)
            const var"c\"CXType_ObjCId\"" = var"(c\"enum CXTypeKind\")"(0x000000000000001b)
            const var"c\"CXType_ObjCClass\"" = var"(c\"enum CXTypeKind\")"(0x000000000000001c)
            const var"c\"CXType_ObjCSel\"" = var"(c\"enum CXTypeKind\")"(0x000000000000001d)
            const var"c\"CXType_Float128\"" = var"(c\"enum CXTypeKind\")"(0x000000000000001e)
            const var"c\"CXType_Half\"" = var"(c\"enum CXTypeKind\")"(0x000000000000001f)
            const var"c\"CXType_Float16\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000020)
            const var"c\"CXType_ShortAccum\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000021)
            const var"c\"CXType_Accum\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000022)
            const var"c\"CXType_LongAccum\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000023)
            const var"c\"CXType_UShortAccum\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000024)
            const var"c\"CXType_UAccum\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000025)
            const var"c\"CXType_ULongAccum\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000026)
            const var"c\"CXType_BFloat16\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000027)
            const var"c\"CXType_FirstBuiltin\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000002)
            const var"c\"CXType_LastBuiltin\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000027)
            const var"c\"CXType_Complex\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000064)
            const var"c\"CXType_Pointer\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000065)
            const var"c\"CXType_BlockPointer\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000066)
            const var"c\"CXType_LValueReference\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000067)
            const var"c\"CXType_RValueReference\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000068)
            const var"c\"CXType_Record\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000069)
            const var"c\"CXType_Enum\"" = var"(c\"enum CXTypeKind\")"(0x000000000000006a)
            const var"c\"CXType_Typedef\"" = var"(c\"enum CXTypeKind\")"(0x000000000000006b)
            const var"c\"CXType_ObjCInterface\"" = var"(c\"enum CXTypeKind\")"(0x000000000000006c)
            const var"c\"CXType_ObjCObjectPointer\"" = var"(c\"enum CXTypeKind\")"(0x000000000000006d)
            const var"c\"CXType_FunctionNoProto\"" = var"(c\"enum CXTypeKind\")"(0x000000000000006e)
            const var"c\"CXType_FunctionProto\"" = var"(c\"enum CXTypeKind\")"(0x000000000000006f)
            const var"c\"CXType_ConstantArray\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000070)
            const var"c\"CXType_Vector\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000071)
            const var"c\"CXType_IncompleteArray\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000072)
            const var"c\"CXType_VariableArray\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000073)
            const var"c\"CXType_DependentSizedArray\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000074)
            const var"c\"CXType_MemberPointer\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000075)
            const var"c\"CXType_Auto\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000076)
            const var"c\"CXType_Elaborated\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000077)
            const var"c\"CXType_Pipe\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000078)
            const var"c\"CXType_OCLImage1dRO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000079)
            const var"c\"CXType_OCLImage1dArrayRO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000007a)
            const var"c\"CXType_OCLImage1dBufferRO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000007b)
            const var"c\"CXType_OCLImage2dRO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000007c)
            const var"c\"CXType_OCLImage2dArrayRO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000007d)
            const var"c\"CXType_OCLImage2dDepthRO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000007e)
            const var"c\"CXType_OCLImage2dArrayDepthRO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000007f)
            const var"c\"CXType_OCLImage2dMSAARO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000080)
            const var"c\"CXType_OCLImage2dArrayMSAARO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000081)
            const var"c\"CXType_OCLImage2dMSAADepthRO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000082)
            const var"c\"CXType_OCLImage2dArrayMSAADepthRO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000083)
            const var"c\"CXType_OCLImage3dRO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000084)
            const var"c\"CXType_OCLImage1dWO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000085)
            const var"c\"CXType_OCLImage1dArrayWO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000086)
            const var"c\"CXType_OCLImage1dBufferWO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000087)
            const var"c\"CXType_OCLImage2dWO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000088)
            const var"c\"CXType_OCLImage2dArrayWO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000089)
            const var"c\"CXType_OCLImage2dDepthWO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000008a)
            const var"c\"CXType_OCLImage2dArrayDepthWO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000008b)
            const var"c\"CXType_OCLImage2dMSAAWO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000008c)
            const var"c\"CXType_OCLImage2dArrayMSAAWO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000008d)
            const var"c\"CXType_OCLImage2dMSAADepthWO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000008e)
            const var"c\"CXType_OCLImage2dArrayMSAADepthWO\"" = var"(c\"enum CXTypeKind\")"(0x000000000000008f)
            const var"c\"CXType_OCLImage3dWO\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000090)
            const var"c\"CXType_OCLImage1dRW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000091)
            const var"c\"CXType_OCLImage1dArrayRW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000092)
            const var"c\"CXType_OCLImage1dBufferRW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000093)
            const var"c\"CXType_OCLImage2dRW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000094)
            const var"c\"CXType_OCLImage2dArrayRW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000095)
            const var"c\"CXType_OCLImage2dDepthRW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000096)
            const var"c\"CXType_OCLImage2dArrayDepthRW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000097)
            const var"c\"CXType_OCLImage2dMSAARW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000098)
            const var"c\"CXType_OCLImage2dArrayMSAARW\"" = var"(c\"enum CXTypeKind\")"(0x0000000000000099)
            const var"c\"CXType_OCLImage2dMSAADepthRW\"" = var"(c\"enum CXTypeKind\")"(0x000000000000009a)
            const var"c\"CXType_OCLImage2dArrayMSAADepthRW\"" = var"(c\"enum CXTypeKind\")"(0x000000000000009b)
            const var"c\"CXType_OCLImage3dRW\"" = var"(c\"enum CXTypeKind\")"(0x000000000000009c)
            const var"c\"CXType_OCLSampler\"" = var"(c\"enum CXTypeKind\")"(0x000000000000009d)
            const var"c\"CXType_OCLEvent\"" = var"(c\"enum CXTypeKind\")"(0x000000000000009e)
            const var"c\"CXType_OCLQueue\"" = var"(c\"enum CXTypeKind\")"(0x000000000000009f)
            const var"c\"CXType_OCLReserveID\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a0)
            const var"c\"CXType_ObjCObject\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a1)
            const var"c\"CXType_ObjCTypeParam\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a2)
            const var"c\"CXType_Attributed\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a3)
            const var"c\"CXType_OCLIntelSubgroupAVCMcePayload\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a4)
            const var"c\"CXType_OCLIntelSubgroupAVCImePayload\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a5)
            const var"c\"CXType_OCLIntelSubgroupAVCRefPayload\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a6)
            const var"c\"CXType_OCLIntelSubgroupAVCSicPayload\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a7)
            const var"c\"CXType_OCLIntelSubgroupAVCMceResult\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a8)
            const var"c\"CXType_OCLIntelSubgroupAVCImeResult\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000a9)
            const var"c\"CXType_OCLIntelSubgroupAVCRefResult\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000aa)
            const var"c\"CXType_OCLIntelSubgroupAVCSicResult\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000ab)
            const var"c\"CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000ac)
            const var"c\"CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000ad)
            const var"c\"CXType_OCLIntelSubgroupAVCImeSingleRefStreamin\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000ae)
            const var"c\"CXType_OCLIntelSubgroupAVCImeDualRefStreamin\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000af)
            const var"c\"CXType_ExtVector\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000b0)
            const var"c\"CXType_Atomic\"" = var"(c\"enum CXTypeKind\")"(0x00000000000000b1)
            const CXTypeKind = var"c\"enum CXTypeKind\""
            const CXType_Invalid = var"c\"CXType_Invalid\""
            const CXType_Unexposed = var"c\"CXType_Unexposed\""
            const CXType_Void = var"c\"CXType_Void\""
            const CXType_Bool = var"c\"CXType_Bool\""
            const CXType_Char_U = var"c\"CXType_Char_U\""
            const CXType_UChar = var"c\"CXType_UChar\""
            const CXType_Char16 = var"c\"CXType_Char16\""
            const CXType_Char32 = var"c\"CXType_Char32\""
            const CXType_UShort = var"c\"CXType_UShort\""
            const CXType_UInt = var"c\"CXType_UInt\""
            const CXType_ULong = var"c\"CXType_ULong\""
            const CXType_ULongLong = var"c\"CXType_ULongLong\""
            const CXType_UInt128 = var"c\"CXType_UInt128\""
            const CXType_Char_S = var"c\"CXType_Char_S\""
            const CXType_SChar = var"c\"CXType_SChar\""
            const CXType_WChar = var"c\"CXType_WChar\""
            const CXType_Short = var"c\"CXType_Short\""
            const CXType_Int = var"c\"CXType_Int\""
            const CXType_Long = var"c\"CXType_Long\""
            const CXType_LongLong = var"c\"CXType_LongLong\""
            const CXType_Int128 = var"c\"CXType_Int128\""
            const CXType_Float = var"c\"CXType_Float\""
            const CXType_Double = var"c\"CXType_Double\""
            const CXType_LongDouble = var"c\"CXType_LongDouble\""
            const CXType_NullPtr = var"c\"CXType_NullPtr\""
            const CXType_Overload = var"c\"CXType_Overload\""
            const CXType_Dependent = var"c\"CXType_Dependent\""
            const CXType_ObjCId = var"c\"CXType_ObjCId\""
            const CXType_ObjCClass = var"c\"CXType_ObjCClass\""
            const CXType_ObjCSel = var"c\"CXType_ObjCSel\""
            const CXType_Float128 = var"c\"CXType_Float128\""
            const CXType_Half = var"c\"CXType_Half\""
            const CXType_Float16 = var"c\"CXType_Float16\""
            const CXType_ShortAccum = var"c\"CXType_ShortAccum\""
            const CXType_Accum = var"c\"CXType_Accum\""
            const CXType_LongAccum = var"c\"CXType_LongAccum\""
            const CXType_UShortAccum = var"c\"CXType_UShortAccum\""
            const CXType_UAccum = var"c\"CXType_UAccum\""
            const CXType_ULongAccum = var"c\"CXType_ULongAccum\""
            const CXType_BFloat16 = var"c\"CXType_BFloat16\""
            const CXType_FirstBuiltin = var"c\"CXType_FirstBuiltin\""
            const CXType_LastBuiltin = var"c\"CXType_LastBuiltin\""
            const CXType_Complex = var"c\"CXType_Complex\""
            const CXType_Pointer = var"c\"CXType_Pointer\""
            const CXType_BlockPointer = var"c\"CXType_BlockPointer\""
            const CXType_LValueReference = var"c\"CXType_LValueReference\""
            const CXType_RValueReference = var"c\"CXType_RValueReference\""
            const CXType_Record = var"c\"CXType_Record\""
            const CXType_Enum = var"c\"CXType_Enum\""
            const CXType_Typedef = var"c\"CXType_Typedef\""
            const CXType_ObjCInterface = var"c\"CXType_ObjCInterface\""
            const CXType_ObjCObjectPointer = var"c\"CXType_ObjCObjectPointer\""
            const CXType_FunctionNoProto = var"c\"CXType_FunctionNoProto\""
            const CXType_FunctionProto = var"c\"CXType_FunctionProto\""
            const CXType_ConstantArray = var"c\"CXType_ConstantArray\""
            const CXType_Vector = var"c\"CXType_Vector\""
            const CXType_IncompleteArray = var"c\"CXType_IncompleteArray\""
            const CXType_VariableArray = var"c\"CXType_VariableArray\""
            const CXType_DependentSizedArray = var"c\"CXType_DependentSizedArray\""
            const CXType_MemberPointer = var"c\"CXType_MemberPointer\""
            const CXType_Auto = var"c\"CXType_Auto\""
            const CXType_Elaborated = var"c\"CXType_Elaborated\""
            const CXType_Pipe = var"c\"CXType_Pipe\""
            const CXType_OCLImage1dRO = var"c\"CXType_OCLImage1dRO\""
            const CXType_OCLImage1dArrayRO = var"c\"CXType_OCLImage1dArrayRO\""
            const CXType_OCLImage1dBufferRO = var"c\"CXType_OCLImage1dBufferRO\""
            const CXType_OCLImage2dRO = var"c\"CXType_OCLImage2dRO\""
            const CXType_OCLImage2dArrayRO = var"c\"CXType_OCLImage2dArrayRO\""
            const CXType_OCLImage2dDepthRO = var"c\"CXType_OCLImage2dDepthRO\""
            const CXType_OCLImage2dArrayDepthRO = var"c\"CXType_OCLImage2dArrayDepthRO\""
            const CXType_OCLImage2dMSAARO = var"c\"CXType_OCLImage2dMSAARO\""
            const CXType_OCLImage2dArrayMSAARO = var"c\"CXType_OCLImage2dArrayMSAARO\""
            const CXType_OCLImage2dMSAADepthRO = var"c\"CXType_OCLImage2dMSAADepthRO\""
            const CXType_OCLImage2dArrayMSAADepthRO = var"c\"CXType_OCLImage2dArrayMSAADepthRO\""
            const CXType_OCLImage3dRO = var"c\"CXType_OCLImage3dRO\""
            const CXType_OCLImage1dWO = var"c\"CXType_OCLImage1dWO\""
            const CXType_OCLImage1dArrayWO = var"c\"CXType_OCLImage1dArrayWO\""
            const CXType_OCLImage1dBufferWO = var"c\"CXType_OCLImage1dBufferWO\""
            const CXType_OCLImage2dWO = var"c\"CXType_OCLImage2dWO\""
            const CXType_OCLImage2dArrayWO = var"c\"CXType_OCLImage2dArrayWO\""
            const CXType_OCLImage2dDepthWO = var"c\"CXType_OCLImage2dDepthWO\""
            const CXType_OCLImage2dArrayDepthWO = var"c\"CXType_OCLImage2dArrayDepthWO\""
            const CXType_OCLImage2dMSAAWO = var"c\"CXType_OCLImage2dMSAAWO\""
            const CXType_OCLImage2dArrayMSAAWO = var"c\"CXType_OCLImage2dArrayMSAAWO\""
            const CXType_OCLImage2dMSAADepthWO = var"c\"CXType_OCLImage2dMSAADepthWO\""
            const CXType_OCLImage2dArrayMSAADepthWO = var"c\"CXType_OCLImage2dArrayMSAADepthWO\""
            const CXType_OCLImage3dWO = var"c\"CXType_OCLImage3dWO\""
            const CXType_OCLImage1dRW = var"c\"CXType_OCLImage1dRW\""
            const CXType_OCLImage1dArrayRW = var"c\"CXType_OCLImage1dArrayRW\""
            const CXType_OCLImage1dBufferRW = var"c\"CXType_OCLImage1dBufferRW\""
            const CXType_OCLImage2dRW = var"c\"CXType_OCLImage2dRW\""
            const CXType_OCLImage2dArrayRW = var"c\"CXType_OCLImage2dArrayRW\""
            const CXType_OCLImage2dDepthRW = var"c\"CXType_OCLImage2dDepthRW\""
            const CXType_OCLImage2dArrayDepthRW = var"c\"CXType_OCLImage2dArrayDepthRW\""
            const CXType_OCLImage2dMSAARW = var"c\"CXType_OCLImage2dMSAARW\""
            const CXType_OCLImage2dArrayMSAARW = var"c\"CXType_OCLImage2dArrayMSAARW\""
            const CXType_OCLImage2dMSAADepthRW = var"c\"CXType_OCLImage2dMSAADepthRW\""
            const CXType_OCLImage2dArrayMSAADepthRW = var"c\"CXType_OCLImage2dArrayMSAADepthRW\""
            const CXType_OCLImage3dRW = var"c\"CXType_OCLImage3dRW\""
            const CXType_OCLSampler = var"c\"CXType_OCLSampler\""
            const CXType_OCLEvent = var"c\"CXType_OCLEvent\""
            const CXType_OCLQueue = var"c\"CXType_OCLQueue\""
            const CXType_OCLReserveID = var"c\"CXType_OCLReserveID\""
            const CXType_ObjCObject = var"c\"CXType_ObjCObject\""
            const CXType_ObjCTypeParam = var"c\"CXType_ObjCTypeParam\""
            const CXType_Attributed = var"c\"CXType_Attributed\""
            const CXType_OCLIntelSubgroupAVCMcePayload = var"c\"CXType_OCLIntelSubgroupAVCMcePayload\""
            const CXType_OCLIntelSubgroupAVCImePayload = var"c\"CXType_OCLIntelSubgroupAVCImePayload\""
            const CXType_OCLIntelSubgroupAVCRefPayload = var"c\"CXType_OCLIntelSubgroupAVCRefPayload\""
            const CXType_OCLIntelSubgroupAVCSicPayload = var"c\"CXType_OCLIntelSubgroupAVCSicPayload\""
            const CXType_OCLIntelSubgroupAVCMceResult = var"c\"CXType_OCLIntelSubgroupAVCMceResult\""
            const CXType_OCLIntelSubgroupAVCImeResult = var"c\"CXType_OCLIntelSubgroupAVCImeResult\""
            const CXType_OCLIntelSubgroupAVCRefResult = var"c\"CXType_OCLIntelSubgroupAVCRefResult\""
            const CXType_OCLIntelSubgroupAVCSicResult = var"c\"CXType_OCLIntelSubgroupAVCSicResult\""
            const CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout = var"c\"CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout\""
            const CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout = var"c\"CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout\""
            const CXType_OCLIntelSubgroupAVCImeSingleRefStreamin = var"c\"CXType_OCLIntelSubgroupAVCImeSingleRefStreamin\""
            const CXType_OCLIntelSubgroupAVCImeDualRefStreamin = var"c\"CXType_OCLIntelSubgroupAVCImeDualRefStreamin\""
            const CXType_ExtVector = var"c\"CXType_ExtVector\""
            const CXType_Atomic = var"c\"CXType_Atomic\""
            export var"c\"enum CXTypeKind\"", var"(c\"enum CXTypeKind\")", var"c\"CXType_Invalid\"", var"c\"CXType_Unexposed\"", var"c\"CXType_Void\"", var"c\"CXType_Bool\"", var"c\"CXType_Char_U\"", var"c\"CXType_UChar\"", var"c\"CXType_Char16\"", var"c\"CXType_Char32\"", var"c\"CXType_UShort\"", var"c\"CXType_UInt\"", var"c\"CXType_ULong\"", var"c\"CXType_ULongLong\"", var"c\"CXType_UInt128\"", var"c\"CXType_Char_S\"", var"c\"CXType_SChar\"", var"c\"CXType_WChar\"", var"c\"CXType_Short\"", var"c\"CXType_Int\"", var"c\"CXType_Long\"", var"c\"CXType_LongLong\"", var"c\"CXType_Int128\"", var"c\"CXType_Float\"", var"c\"CXType_Double\"", var"c\"CXType_LongDouble\"", var"c\"CXType_NullPtr\"", var"c\"CXType_Overload\"", var"c\"CXType_Dependent\"", var"c\"CXType_ObjCId\"", var"c\"CXType_ObjCClass\"", var"c\"CXType_ObjCSel\"", var"c\"CXType_Float128\"", var"c\"CXType_Half\"", var"c\"CXType_Float16\"", var"c\"CXType_ShortAccum\"", var"c\"CXType_Accum\"", var"c\"CXType_LongAccum\"", var"c\"CXType_UShortAccum\"", var"c\"CXType_UAccum\"", var"c\"CXType_ULongAccum\"", var"c\"CXType_BFloat16\"", var"c\"CXType_FirstBuiltin\"", var"c\"CXType_LastBuiltin\"", var"c\"CXType_Complex\"", var"c\"CXType_Pointer\"", var"c\"CXType_BlockPointer\"", var"c\"CXType_LValueReference\"", var"c\"CXType_RValueReference\"", var"c\"CXType_Record\"", var"c\"CXType_Enum\"", var"c\"CXType_Typedef\"", var"c\"CXType_ObjCInterface\"", var"c\"CXType_ObjCObjectPointer\"", var"c\"CXType_FunctionNoProto\"", var"c\"CXType_FunctionProto\"", var"c\"CXType_ConstantArray\"", var"c\"CXType_Vector\"", var"c\"CXType_IncompleteArray\"", var"c\"CXType_VariableArray\"", var"c\"CXType_DependentSizedArray\"", var"c\"CXType_MemberPointer\"", var"c\"CXType_Auto\"", var"c\"CXType_Elaborated\"", var"c\"CXType_Pipe\"", var"c\"CXType_OCLImage1dRO\"", var"c\"CXType_OCLImage1dArrayRO\"", var"c\"CXType_OCLImage1dBufferRO\"", var"c\"CXType_OCLImage2dRO\"", var"c\"CXType_OCLImage2dArrayRO\"", var"c\"CXType_OCLImage2dDepthRO\"", var"c\"CXType_OCLImage2dArrayDepthRO\"", var"c\"CXType_OCLImage2dMSAARO\"", var"c\"CXType_OCLImage2dArrayMSAARO\"", var"c\"CXType_OCLImage2dMSAADepthRO\"", var"c\"CXType_OCLImage2dArrayMSAADepthRO\"", var"c\"CXType_OCLImage3dRO\"", var"c\"CXType_OCLImage1dWO\"", var"c\"CXType_OCLImage1dArrayWO\"", var"c\"CXType_OCLImage1dBufferWO\"", var"c\"CXType_OCLImage2dWO\"", var"c\"CXType_OCLImage2dArrayWO\"", var"c\"CXType_OCLImage2dDepthWO\"", var"c\"CXType_OCLImage2dArrayDepthWO\"", var"c\"CXType_OCLImage2dMSAAWO\"", var"c\"CXType_OCLImage2dArrayMSAAWO\"", var"c\"CXType_OCLImage2dMSAADepthWO\"", var"c\"CXType_OCLImage2dArrayMSAADepthWO\"", var"c\"CXType_OCLImage3dWO\"", var"c\"CXType_OCLImage1dRW\"", var"c\"CXType_OCLImage1dArrayRW\"", var"c\"CXType_OCLImage1dBufferRW\"", var"c\"CXType_OCLImage2dRW\"", var"c\"CXType_OCLImage2dArrayRW\"", var"c\"CXType_OCLImage2dDepthRW\"", var"c\"CXType_OCLImage2dArrayDepthRW\"", var"c\"CXType_OCLImage2dMSAARW\"", var"c\"CXType_OCLImage2dArrayMSAARW\"", var"c\"CXType_OCLImage2dMSAADepthRW\"", var"c\"CXType_OCLImage2dArrayMSAADepthRW\"", var"c\"CXType_OCLImage3dRW\"", var"c\"CXType_OCLSampler\"", var"c\"CXType_OCLEvent\"", var"c\"CXType_OCLQueue\"", var"c\"CXType_OCLReserveID\"", var"c\"CXType_ObjCObject\"", var"c\"CXType_ObjCTypeParam\"", var"c\"CXType_Attributed\"", var"c\"CXType_OCLIntelSubgroupAVCMcePayload\"", var"c\"CXType_OCLIntelSubgroupAVCImePayload\"", var"c\"CXType_OCLIntelSubgroupAVCRefPayload\"", var"c\"CXType_OCLIntelSubgroupAVCSicPayload\"", var"c\"CXType_OCLIntelSubgroupAVCMceResult\"", var"c\"CXType_OCLIntelSubgroupAVCImeResult\"", var"c\"CXType_OCLIntelSubgroupAVCRefResult\"", var"c\"CXType_OCLIntelSubgroupAVCSicResult\"", var"c\"CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout\"", var"c\"CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout\"", var"c\"CXType_OCLIntelSubgroupAVCImeSingleRefStreamin\"", var"c\"CXType_OCLIntelSubgroupAVCImeDualRefStreamin\"", var"c\"CXType_ExtVector\"", var"c\"CXType_Atomic\""
            export CXTypeKind, CXType_Invalid, CXType_Unexposed, CXType_Void, CXType_Bool, CXType_Char_U, CXType_UChar, CXType_Char16, CXType_Char32, CXType_UShort, CXType_UInt, CXType_ULong, CXType_ULongLong, CXType_UInt128, CXType_Char_S, CXType_SChar, CXType_WChar, CXType_Short, CXType_Int, CXType_Long, CXType_LongLong, CXType_Int128, CXType_Float, CXType_Double, CXType_LongDouble, CXType_NullPtr, CXType_Overload, CXType_Dependent, CXType_ObjCId, CXType_ObjCClass, CXType_ObjCSel, CXType_Float128, CXType_Half, CXType_Float16, CXType_ShortAccum, CXType_Accum, CXType_LongAccum, CXType_UShortAccum, CXType_UAccum, CXType_ULongAccum, CXType_BFloat16, CXType_FirstBuiltin, CXType_LastBuiltin, CXType_Complex, CXType_Pointer, CXType_BlockPointer, CXType_LValueReference, CXType_RValueReference, CXType_Record, CXType_Enum, CXType_Typedef, CXType_ObjCInterface, CXType_ObjCObjectPointer, CXType_FunctionNoProto, CXType_FunctionProto, CXType_ConstantArray, CXType_Vector, CXType_IncompleteArray, CXType_VariableArray, CXType_DependentSizedArray, CXType_MemberPointer, CXType_Auto, CXType_Elaborated, CXType_Pipe, CXType_OCLImage1dRO, CXType_OCLImage1dArrayRO, CXType_OCLImage1dBufferRO, CXType_OCLImage2dRO, CXType_OCLImage2dArrayRO, CXType_OCLImage2dDepthRO, CXType_OCLImage2dArrayDepthRO, CXType_OCLImage2dMSAARO, CXType_OCLImage2dArrayMSAARO, CXType_OCLImage2dMSAADepthRO, CXType_OCLImage2dArrayMSAADepthRO, CXType_OCLImage3dRO, CXType_OCLImage1dWO, CXType_OCLImage1dArrayWO, CXType_OCLImage1dBufferWO, CXType_OCLImage2dWO, CXType_OCLImage2dArrayWO, CXType_OCLImage2dDepthWO, CXType_OCLImage2dArrayDepthWO, CXType_OCLImage2dMSAAWO, CXType_OCLImage2dArrayMSAAWO, CXType_OCLImage2dMSAADepthWO, CXType_OCLImage2dArrayMSAADepthWO, CXType_OCLImage3dWO, CXType_OCLImage1dRW, CXType_OCLImage1dArrayRW, CXType_OCLImage1dBufferRW, CXType_OCLImage2dRW, CXType_OCLImage2dArrayRW, CXType_OCLImage2dDepthRW, CXType_OCLImage2dArrayDepthRW, CXType_OCLImage2dMSAARW, CXType_OCLImage2dArrayMSAARW, CXType_OCLImage2dMSAADepthRW, CXType_OCLImage2dArrayMSAADepthRW, CXType_OCLImage3dRW, CXType_OCLSampler, CXType_OCLEvent, CXType_OCLQueue, CXType_OCLReserveID, CXType_ObjCObject, CXType_ObjCTypeParam, CXType_Attributed, CXType_OCLIntelSubgroupAVCMcePayload, CXType_OCLIntelSubgroupAVCImePayload, CXType_OCLIntelSubgroupAVCRefPayload, CXType_OCLIntelSubgroupAVCSicPayload, CXType_OCLIntelSubgroupAVCMceResult, CXType_OCLIntelSubgroupAVCImeResult, CXType_OCLIntelSubgroupAVCRefResult, CXType_OCLIntelSubgroupAVCSicResult, CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout, CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout, CXType_OCLIntelSubgroupAVCImeSingleRefStreamin, CXType_OCLIntelSubgroupAVCImeDualRefStreamin, CXType_ExtVector, CXType_Atomic
            var"c\"enum CXTypeKind\""
        end
        begin
            abstract type var"c\"enum CXCallingConv\"" <: Cenum end
            const CXCallingConv = var"c\"enum CXCallingConv\""
            export var"c\"enum CXCallingConv\""
            export CXCallingConv
            var"c\"enum CXCallingConv\""
        end
        begin
            primitive type var"(c\"enum CXCallingConv\")" <: var"c\"enum CXCallingConv\"" 32 end
            (::(Type){var"(c\"enum CXCallingConv\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCallingConv\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCallingConv\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCallingConv_Default\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXCallingConv_C\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCallingConv_X86StdCall\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXCallingConv_X86FastCall\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXCallingConv_X86ThisCall\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXCallingConv_X86Pascal\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXCallingConv_AAPCS\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXCallingConv_AAPCS_VFP\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXCallingConv_X86RegCall\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXCallingConv_IntelOclBicc\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXCallingConv_Win64\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXCallingConv_X86_64Win64\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXCallingConv_X86_64SysV\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXCallingConv_X86VectorCall\""), 0x000000000000000c}, C.Tuple{Symbol("c\"CXCallingConv_Swift\""), 0x000000000000000d}, C.Tuple{Symbol("c\"CXCallingConv_PreserveMost\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXCallingConv_PreserveAll\""), 0x000000000000000f}, C.Tuple{Symbol("c\"CXCallingConv_AArch64VectorCall\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXCallingConv_Invalid\""), 0x0000000000000064}, C.Tuple{Symbol("c\"CXCallingConv_Unexposed\""), 0x00000000000000c8}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCallingConv\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCallingConv\")"}) = begin
                    var"(c\"enum CXCallingConv\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCallingConv\""}) = begin
                    var"(c\"enum CXCallingConv\")"
                end
            const var"c\"CXCallingConv_Default\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000000)
            const var"c\"CXCallingConv_C\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000001)
            const var"c\"CXCallingConv_X86StdCall\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000002)
            const var"c\"CXCallingConv_X86FastCall\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000003)
            const var"c\"CXCallingConv_X86ThisCall\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000004)
            const var"c\"CXCallingConv_X86Pascal\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000005)
            const var"c\"CXCallingConv_AAPCS\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000006)
            const var"c\"CXCallingConv_AAPCS_VFP\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000007)
            const var"c\"CXCallingConv_X86RegCall\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000008)
            const var"c\"CXCallingConv_IntelOclBicc\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000009)
            const var"c\"CXCallingConv_Win64\"" = var"(c\"enum CXCallingConv\")"(0x000000000000000a)
            const var"c\"CXCallingConv_X86_64Win64\"" = var"(c\"enum CXCallingConv\")"(0x000000000000000a)
            const var"c\"CXCallingConv_X86_64SysV\"" = var"(c\"enum CXCallingConv\")"(0x000000000000000b)
            const var"c\"CXCallingConv_X86VectorCall\"" = var"(c\"enum CXCallingConv\")"(0x000000000000000c)
            const var"c\"CXCallingConv_Swift\"" = var"(c\"enum CXCallingConv\")"(0x000000000000000d)
            const var"c\"CXCallingConv_PreserveMost\"" = var"(c\"enum CXCallingConv\")"(0x000000000000000e)
            const var"c\"CXCallingConv_PreserveAll\"" = var"(c\"enum CXCallingConv\")"(0x000000000000000f)
            const var"c\"CXCallingConv_AArch64VectorCall\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000010)
            const var"c\"CXCallingConv_Invalid\"" = var"(c\"enum CXCallingConv\")"(0x0000000000000064)
            const var"c\"CXCallingConv_Unexposed\"" = var"(c\"enum CXCallingConv\")"(0x00000000000000c8)
            const CXCallingConv = var"c\"enum CXCallingConv\""
            const CXCallingConv_Default = var"c\"CXCallingConv_Default\""
            const CXCallingConv_C = var"c\"CXCallingConv_C\""
            const CXCallingConv_X86StdCall = var"c\"CXCallingConv_X86StdCall\""
            const CXCallingConv_X86FastCall = var"c\"CXCallingConv_X86FastCall\""
            const CXCallingConv_X86ThisCall = var"c\"CXCallingConv_X86ThisCall\""
            const CXCallingConv_X86Pascal = var"c\"CXCallingConv_X86Pascal\""
            const CXCallingConv_AAPCS = var"c\"CXCallingConv_AAPCS\""
            const CXCallingConv_AAPCS_VFP = var"c\"CXCallingConv_AAPCS_VFP\""
            const CXCallingConv_X86RegCall = var"c\"CXCallingConv_X86RegCall\""
            const CXCallingConv_IntelOclBicc = var"c\"CXCallingConv_IntelOclBicc\""
            const CXCallingConv_Win64 = var"c\"CXCallingConv_Win64\""
            const CXCallingConv_X86_64Win64 = var"c\"CXCallingConv_X86_64Win64\""
            const CXCallingConv_X86_64SysV = var"c\"CXCallingConv_X86_64SysV\""
            const CXCallingConv_X86VectorCall = var"c\"CXCallingConv_X86VectorCall\""
            const CXCallingConv_Swift = var"c\"CXCallingConv_Swift\""
            const CXCallingConv_PreserveMost = var"c\"CXCallingConv_PreserveMost\""
            const CXCallingConv_PreserveAll = var"c\"CXCallingConv_PreserveAll\""
            const CXCallingConv_AArch64VectorCall = var"c\"CXCallingConv_AArch64VectorCall\""
            const CXCallingConv_Invalid = var"c\"CXCallingConv_Invalid\""
            const CXCallingConv_Unexposed = var"c\"CXCallingConv_Unexposed\""
            export var"c\"enum CXCallingConv\"", var"(c\"enum CXCallingConv\")", var"c\"CXCallingConv_Default\"", var"c\"CXCallingConv_C\"", var"c\"CXCallingConv_X86StdCall\"", var"c\"CXCallingConv_X86FastCall\"", var"c\"CXCallingConv_X86ThisCall\"", var"c\"CXCallingConv_X86Pascal\"", var"c\"CXCallingConv_AAPCS\"", var"c\"CXCallingConv_AAPCS_VFP\"", var"c\"CXCallingConv_X86RegCall\"", var"c\"CXCallingConv_IntelOclBicc\"", var"c\"CXCallingConv_Win64\"", var"c\"CXCallingConv_X86_64Win64\"", var"c\"CXCallingConv_X86_64SysV\"", var"c\"CXCallingConv_X86VectorCall\"", var"c\"CXCallingConv_Swift\"", var"c\"CXCallingConv_PreserveMost\"", var"c\"CXCallingConv_PreserveAll\"", var"c\"CXCallingConv_AArch64VectorCall\"", var"c\"CXCallingConv_Invalid\"", var"c\"CXCallingConv_Unexposed\""
            export CXCallingConv, CXCallingConv_Default, CXCallingConv_C, CXCallingConv_X86StdCall, CXCallingConv_X86FastCall, CXCallingConv_X86ThisCall, CXCallingConv_X86Pascal, CXCallingConv_AAPCS, CXCallingConv_AAPCS_VFP, CXCallingConv_X86RegCall, CXCallingConv_IntelOclBicc, CXCallingConv_Win64, CXCallingConv_X86_64Win64, CXCallingConv_X86_64SysV, CXCallingConv_X86VectorCall, CXCallingConv_Swift, CXCallingConv_PreserveMost, CXCallingConv_PreserveAll, CXCallingConv_AArch64VectorCall, CXCallingConv_Invalid, CXCallingConv_Unexposed
            var"c\"enum CXCallingConv\""
        end
        begin
            abstract type var"c\"CXType\"" <: Cstruct end
            const CXType = var"c\"CXType\""
            export var"c\"CXType\""
            export CXType
            var"c\"CXType\""
        end
        begin
            struct var"(c\"CXType\")" <: var"c\"CXType\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXType\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXType\")"}) = begin
                    C.Tuple{C.Tuple{:kind, C.Tuple{var"c\"enum CXTypeKind\"", C.bitstype(var"c\"enum CXTypeKind\""), C.integraltype(var"c\"enum CXTypeKind\""), 0, 0, -1}}, C.Tuple{:data, C.Tuple{C.Carray{C.Cptr{C.Cvoid}, 2}, C.bitstype(C.Carray{C.Cptr{C.Cvoid}, 2}), C.integraltype(C.Carray{C.Cptr{C.Cvoid}, 2}), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXType\")"}) = begin
                    var"(c\"CXType\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXType\""}) = begin
                    var"(c\"CXType\")"
                end
            const CXType = var"c\"CXType\""
            export var"c\"CXType\"", var"(c\"CXType\")"
            export CXType
            var"c\"CXType\""
        end
        begin
        end
        begin
            const var"c\"clang_getCursorType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorType}()
            (func::C.typeof(var"c\"clang_getCursorType\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getCursorType = var"c\"clang_getCursorType\""
            export var"c\"clang_getCursorType\""
            export clang_getCursorType
            var"c\"clang_getCursorType\""
        end
        begin
            const var"c\"clang_getTypeSpelling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getTypeSpelling}()
            (func::C.typeof(var"c\"clang_getTypeSpelling\""))(var"c\"CT\"") = begin
                    C.funccall(func, var"c\"CT\"")
                end
            const clang_getTypeSpelling = var"c\"clang_getTypeSpelling\""
            export var"c\"clang_getTypeSpelling\""
            export clang_getTypeSpelling
            var"c\"clang_getTypeSpelling\""
        end
        begin
            const var"c\"clang_getTypedefDeclUnderlyingType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getTypedefDeclUnderlyingType}()
            (func::C.typeof(var"c\"clang_getTypedefDeclUnderlyingType\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getTypedefDeclUnderlyingType = var"c\"clang_getTypedefDeclUnderlyingType\""
            export var"c\"clang_getTypedefDeclUnderlyingType\""
            export clang_getTypedefDeclUnderlyingType
            var"c\"clang_getTypedefDeclUnderlyingType\""
        end
        begin
            const var"c\"clang_getEnumDeclIntegerType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getEnumDeclIntegerType}()
            (func::C.typeof(var"c\"clang_getEnumDeclIntegerType\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getEnumDeclIntegerType = var"c\"clang_getEnumDeclIntegerType\""
            export var"c\"clang_getEnumDeclIntegerType\""
            export clang_getEnumDeclIntegerType
            var"c\"clang_getEnumDeclIntegerType\""
        end
        begin
            const var"c\"clang_getEnumConstantDeclValue\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getEnumConstantDeclValue}()
            (func::C.typeof(var"c\"clang_getEnumConstantDeclValue\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getEnumConstantDeclValue = var"c\"clang_getEnumConstantDeclValue\""
            export var"c\"clang_getEnumConstantDeclValue\""
            export clang_getEnumConstantDeclValue
            var"c\"clang_getEnumConstantDeclValue\""
        end
        begin
            const var"c\"clang_getEnumConstantDeclUnsignedValue\"" = C.Cbinding{C.Cfunction{C.Culonglong, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getEnumConstantDeclUnsignedValue}()
            (func::C.typeof(var"c\"clang_getEnumConstantDeclUnsignedValue\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getEnumConstantDeclUnsignedValue = var"c\"clang_getEnumConstantDeclUnsignedValue\""
            export var"c\"clang_getEnumConstantDeclUnsignedValue\""
            export clang_getEnumConstantDeclUnsignedValue
            var"c\"clang_getEnumConstantDeclUnsignedValue\""
        end
        begin
            const var"c\"clang_getFieldDeclBitWidth\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getFieldDeclBitWidth}()
            (func::C.typeof(var"c\"clang_getFieldDeclBitWidth\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getFieldDeclBitWidth = var"c\"clang_getFieldDeclBitWidth\""
            export var"c\"clang_getFieldDeclBitWidth\""
            export clang_getFieldDeclBitWidth
            var"c\"clang_getFieldDeclBitWidth\""
        end
        begin
            const var"c\"clang_Cursor_getNumArguments\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getNumArguments}()
            (func::C.typeof(var"c\"clang_Cursor_getNumArguments\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getNumArguments = var"c\"clang_Cursor_getNumArguments\""
            export var"c\"clang_Cursor_getNumArguments\""
            export clang_Cursor_getNumArguments
            var"c\"clang_Cursor_getNumArguments\""
        end
        begin
            const var"c\"clang_Cursor_getArgument\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\"", C.Cuint}, :cdecl}, libpath, :clang_Cursor_getArgument}()
            (func::C.typeof(var"c\"clang_Cursor_getArgument\""))(var"c\"C\"", var"c\"i\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"i\"")
                end
            const clang_Cursor_getArgument = var"c\"clang_Cursor_getArgument\""
            export var"c\"clang_Cursor_getArgument\""
            export clang_Cursor_getArgument
            var"c\"clang_Cursor_getArgument\""
        end
        begin
            abstract type var"c\"enum CXTemplateArgumentKind\"" <: Cenum end
            const CXTemplateArgumentKind = var"c\"enum CXTemplateArgumentKind\""
            export var"c\"enum CXTemplateArgumentKind\""
            export CXTemplateArgumentKind
            var"c\"enum CXTemplateArgumentKind\""
        end
        begin
            primitive type var"(c\"enum CXTemplateArgumentKind\")" <: var"c\"enum CXTemplateArgumentKind\"" 32 end
            (::(Type){var"(c\"enum CXTemplateArgumentKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTemplateArgumentKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTemplateArgumentKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXTemplateArgumentKind_Null\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_Type\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_Declaration\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_NullPtr\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_Integral\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_Template\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_TemplateExpansion\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_Expression\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_Pack\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXTemplateArgumentKind_Invalid\""), 0x0000000000000009}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTemplateArgumentKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTemplateArgumentKind\")"}) = begin
                    var"(c\"enum CXTemplateArgumentKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTemplateArgumentKind\""}) = begin
                    var"(c\"enum CXTemplateArgumentKind\")"
                end
            const var"c\"CXTemplateArgumentKind_Null\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000000)
            const var"c\"CXTemplateArgumentKind_Type\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000001)
            const var"c\"CXTemplateArgumentKind_Declaration\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000002)
            const var"c\"CXTemplateArgumentKind_NullPtr\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000003)
            const var"c\"CXTemplateArgumentKind_Integral\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000004)
            const var"c\"CXTemplateArgumentKind_Template\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000005)
            const var"c\"CXTemplateArgumentKind_TemplateExpansion\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000006)
            const var"c\"CXTemplateArgumentKind_Expression\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000007)
            const var"c\"CXTemplateArgumentKind_Pack\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000008)
            const var"c\"CXTemplateArgumentKind_Invalid\"" = var"(c\"enum CXTemplateArgumentKind\")"(0x0000000000000009)
            const CXTemplateArgumentKind = var"c\"enum CXTemplateArgumentKind\""
            const CXTemplateArgumentKind_Null = var"c\"CXTemplateArgumentKind_Null\""
            const CXTemplateArgumentKind_Type = var"c\"CXTemplateArgumentKind_Type\""
            const CXTemplateArgumentKind_Declaration = var"c\"CXTemplateArgumentKind_Declaration\""
            const CXTemplateArgumentKind_NullPtr = var"c\"CXTemplateArgumentKind_NullPtr\""
            const CXTemplateArgumentKind_Integral = var"c\"CXTemplateArgumentKind_Integral\""
            const CXTemplateArgumentKind_Template = var"c\"CXTemplateArgumentKind_Template\""
            const CXTemplateArgumentKind_TemplateExpansion = var"c\"CXTemplateArgumentKind_TemplateExpansion\""
            const CXTemplateArgumentKind_Expression = var"c\"CXTemplateArgumentKind_Expression\""
            const CXTemplateArgumentKind_Pack = var"c\"CXTemplateArgumentKind_Pack\""
            const CXTemplateArgumentKind_Invalid = var"c\"CXTemplateArgumentKind_Invalid\""
            export var"c\"enum CXTemplateArgumentKind\"", var"(c\"enum CXTemplateArgumentKind\")", var"c\"CXTemplateArgumentKind_Null\"", var"c\"CXTemplateArgumentKind_Type\"", var"c\"CXTemplateArgumentKind_Declaration\"", var"c\"CXTemplateArgumentKind_NullPtr\"", var"c\"CXTemplateArgumentKind_Integral\"", var"c\"CXTemplateArgumentKind_Template\"", var"c\"CXTemplateArgumentKind_TemplateExpansion\"", var"c\"CXTemplateArgumentKind_Expression\"", var"c\"CXTemplateArgumentKind_Pack\"", var"c\"CXTemplateArgumentKind_Invalid\""
            export CXTemplateArgumentKind, CXTemplateArgumentKind_Null, CXTemplateArgumentKind_Type, CXTemplateArgumentKind_Declaration, CXTemplateArgumentKind_NullPtr, CXTemplateArgumentKind_Integral, CXTemplateArgumentKind_Template, CXTemplateArgumentKind_TemplateExpansion, CXTemplateArgumentKind_Expression, CXTemplateArgumentKind_Pack, CXTemplateArgumentKind_Invalid
            var"c\"enum CXTemplateArgumentKind\""
        end
        begin
            const var"c\"clang_Cursor_getNumTemplateArguments\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getNumTemplateArguments}()
            (func::C.typeof(var"c\"clang_Cursor_getNumTemplateArguments\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getNumTemplateArguments = var"c\"clang_Cursor_getNumTemplateArguments\""
            export var"c\"clang_Cursor_getNumTemplateArguments\""
            export clang_Cursor_getNumTemplateArguments
            var"c\"clang_Cursor_getNumTemplateArguments\""
        end
        begin
            const var"c\"clang_Cursor_getTemplateArgumentKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXTemplateArgumentKind\"", C.Tuple{var"c\"CXCursor\"", C.Cuint}, :cdecl}, libpath, :clang_Cursor_getTemplateArgumentKind}()
            (func::C.typeof(var"c\"clang_Cursor_getTemplateArgumentKind\""))(var"c\"C\"", var"c\"I\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"I\"")
                end
            const clang_Cursor_getTemplateArgumentKind = var"c\"clang_Cursor_getTemplateArgumentKind\""
            export var"c\"clang_Cursor_getTemplateArgumentKind\""
            export clang_Cursor_getTemplateArgumentKind
            var"c\"clang_Cursor_getTemplateArgumentKind\""
        end
        begin
            const var"c\"clang_Cursor_getTemplateArgumentType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXCursor\"", C.Cuint}, :cdecl}, libpath, :clang_Cursor_getTemplateArgumentType}()
            (func::C.typeof(var"c\"clang_Cursor_getTemplateArgumentType\""))(var"c\"C\"", var"c\"I\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"I\"")
                end
            const clang_Cursor_getTemplateArgumentType = var"c\"clang_Cursor_getTemplateArgumentType\""
            export var"c\"clang_Cursor_getTemplateArgumentType\""
            export clang_Cursor_getTemplateArgumentType
            var"c\"clang_Cursor_getTemplateArgumentType\""
        end
        begin
            const var"c\"clang_Cursor_getTemplateArgumentValue\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXCursor\"", C.Cuint}, :cdecl}, libpath, :clang_Cursor_getTemplateArgumentValue}()
            (func::C.typeof(var"c\"clang_Cursor_getTemplateArgumentValue\""))(var"c\"C\"", var"c\"I\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"I\"")
                end
            const clang_Cursor_getTemplateArgumentValue = var"c\"clang_Cursor_getTemplateArgumentValue\""
            export var"c\"clang_Cursor_getTemplateArgumentValue\""
            export clang_Cursor_getTemplateArgumentValue
            var"c\"clang_Cursor_getTemplateArgumentValue\""
        end
        begin
            const var"c\"clang_Cursor_getTemplateArgumentUnsignedValue\"" = C.Cbinding{C.Cfunction{C.Culonglong, C.Tuple{var"c\"CXCursor\"", C.Cuint}, :cdecl}, libpath, :clang_Cursor_getTemplateArgumentUnsignedValue}()
            (func::C.typeof(var"c\"clang_Cursor_getTemplateArgumentUnsignedValue\""))(var"c\"C\"", var"c\"I\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"I\"")
                end
            const clang_Cursor_getTemplateArgumentUnsignedValue = var"c\"clang_Cursor_getTemplateArgumentUnsignedValue\""
            export var"c\"clang_Cursor_getTemplateArgumentUnsignedValue\""
            export clang_Cursor_getTemplateArgumentUnsignedValue
            var"c\"clang_Cursor_getTemplateArgumentUnsignedValue\""
        end
        begin
            const var"c\"clang_equalTypes\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\"", var"c\"CXType\""}, :cdecl}, libpath, :clang_equalTypes}()
            (func::C.typeof(var"c\"clang_equalTypes\""))(var"c\"A\"", var"c\"B\"") = begin
                    C.funccall(func, var"c\"A\"", var"c\"B\"")
                end
            const clang_equalTypes = var"c\"clang_equalTypes\""
            export var"c\"clang_equalTypes\""
            export clang_equalTypes
            var"c\"clang_equalTypes\""
        end
        begin
            const var"c\"clang_getCanonicalType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getCanonicalType}()
            (func::C.typeof(var"c\"clang_getCanonicalType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getCanonicalType = var"c\"clang_getCanonicalType\""
            export var"c\"clang_getCanonicalType\""
            export clang_getCanonicalType
            var"c\"clang_getCanonicalType\""
        end
        begin
            const var"c\"clang_isConstQualifiedType\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_isConstQualifiedType}()
            (func::C.typeof(var"c\"clang_isConstQualifiedType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_isConstQualifiedType = var"c\"clang_isConstQualifiedType\""
            export var"c\"clang_isConstQualifiedType\""
            export clang_isConstQualifiedType
            var"c\"clang_isConstQualifiedType\""
        end
        begin
            const var"c\"clang_Cursor_isMacroFunctionLike\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isMacroFunctionLike}()
            (func::C.typeof(var"c\"clang_Cursor_isMacroFunctionLike\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isMacroFunctionLike = var"c\"clang_Cursor_isMacroFunctionLike\""
            export var"c\"clang_Cursor_isMacroFunctionLike\""
            export clang_Cursor_isMacroFunctionLike
            var"c\"clang_Cursor_isMacroFunctionLike\""
        end
        begin
            const var"c\"clang_Cursor_isMacroBuiltin\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isMacroBuiltin}()
            (func::C.typeof(var"c\"clang_Cursor_isMacroBuiltin\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isMacroBuiltin = var"c\"clang_Cursor_isMacroBuiltin\""
            export var"c\"clang_Cursor_isMacroBuiltin\""
            export clang_Cursor_isMacroBuiltin
            var"c\"clang_Cursor_isMacroBuiltin\""
        end
        begin
            const var"c\"clang_Cursor_isFunctionInlined\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isFunctionInlined}()
            (func::C.typeof(var"c\"clang_Cursor_isFunctionInlined\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isFunctionInlined = var"c\"clang_Cursor_isFunctionInlined\""
            export var"c\"clang_Cursor_isFunctionInlined\""
            export clang_Cursor_isFunctionInlined
            var"c\"clang_Cursor_isFunctionInlined\""
        end
        begin
            const var"c\"clang_isVolatileQualifiedType\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_isVolatileQualifiedType}()
            (func::C.typeof(var"c\"clang_isVolatileQualifiedType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_isVolatileQualifiedType = var"c\"clang_isVolatileQualifiedType\""
            export var"c\"clang_isVolatileQualifiedType\""
            export clang_isVolatileQualifiedType
            var"c\"clang_isVolatileQualifiedType\""
        end
        begin
            const var"c\"clang_isRestrictQualifiedType\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_isRestrictQualifiedType}()
            (func::C.typeof(var"c\"clang_isRestrictQualifiedType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_isRestrictQualifiedType = var"c\"clang_isRestrictQualifiedType\""
            export var"c\"clang_isRestrictQualifiedType\""
            export clang_isRestrictQualifiedType
            var"c\"clang_isRestrictQualifiedType\""
        end
        begin
            const var"c\"clang_getAddressSpace\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getAddressSpace}()
            (func::C.typeof(var"c\"clang_getAddressSpace\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getAddressSpace = var"c\"clang_getAddressSpace\""
            export var"c\"clang_getAddressSpace\""
            export clang_getAddressSpace
            var"c\"clang_getAddressSpace\""
        end
        begin
            const var"c\"clang_getTypedefName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getTypedefName}()
            (func::C.typeof(var"c\"clang_getTypedefName\""))(var"c\"CT\"") = begin
                    C.funccall(func, var"c\"CT\"")
                end
            const clang_getTypedefName = var"c\"clang_getTypedefName\""
            export var"c\"clang_getTypedefName\""
            export clang_getTypedefName
            var"c\"clang_getTypedefName\""
        end
        begin
            const var"c\"clang_getPointeeType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getPointeeType}()
            (func::C.typeof(var"c\"clang_getPointeeType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getPointeeType = var"c\"clang_getPointeeType\""
            export var"c\"clang_getPointeeType\""
            export clang_getPointeeType
            var"c\"clang_getPointeeType\""
        end
        begin
            const var"c\"clang_getTypeDeclaration\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getTypeDeclaration}()
            (func::C.typeof(var"c\"clang_getTypeDeclaration\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getTypeDeclaration = var"c\"clang_getTypeDeclaration\""
            export var"c\"clang_getTypeDeclaration\""
            export clang_getTypeDeclaration
            var"c\"clang_getTypeDeclaration\""
        end
        begin
            const var"c\"clang_getDeclObjCTypeEncoding\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getDeclObjCTypeEncoding}()
            (func::C.typeof(var"c\"clang_getDeclObjCTypeEncoding\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getDeclObjCTypeEncoding = var"c\"clang_getDeclObjCTypeEncoding\""
            export var"c\"clang_getDeclObjCTypeEncoding\""
            export clang_getDeclObjCTypeEncoding
            var"c\"clang_getDeclObjCTypeEncoding\""
        end
        begin
            const var"c\"clang_Type_getObjCEncoding\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getObjCEncoding}()
            (func::C.typeof(var"c\"clang_Type_getObjCEncoding\""))(var"c\"type\"") = begin
                    C.funccall(func, var"c\"type\"")
                end
            const clang_Type_getObjCEncoding = var"c\"clang_Type_getObjCEncoding\""
            export var"c\"clang_Type_getObjCEncoding\""
            export clang_Type_getObjCEncoding
            var"c\"clang_Type_getObjCEncoding\""
        end
        begin
            const var"c\"clang_getTypeKindSpelling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"enum CXTypeKind\""}, :cdecl}, libpath, :clang_getTypeKindSpelling}()
            (func::C.typeof(var"c\"clang_getTypeKindSpelling\""))(var"c\"K\"") = begin
                    C.funccall(func, var"c\"K\"")
                end
            const clang_getTypeKindSpelling = var"c\"clang_getTypeKindSpelling\""
            export var"c\"clang_getTypeKindSpelling\""
            export clang_getTypeKindSpelling
            var"c\"clang_getTypeKindSpelling\""
        end
        begin
            const var"c\"clang_getFunctionTypeCallingConv\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCallingConv\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getFunctionTypeCallingConv}()
            (func::C.typeof(var"c\"clang_getFunctionTypeCallingConv\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getFunctionTypeCallingConv = var"c\"clang_getFunctionTypeCallingConv\""
            export var"c\"clang_getFunctionTypeCallingConv\""
            export clang_getFunctionTypeCallingConv
            var"c\"clang_getFunctionTypeCallingConv\""
        end
        begin
            const var"c\"clang_getResultType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getResultType}()
            (func::C.typeof(var"c\"clang_getResultType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getResultType = var"c\"clang_getResultType\""
            export var"c\"clang_getResultType\""
            export clang_getResultType
            var"c\"clang_getResultType\""
        end
        begin
            const var"c\"clang_getExceptionSpecificationType\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getExceptionSpecificationType}()
            (func::C.typeof(var"c\"clang_getExceptionSpecificationType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getExceptionSpecificationType = var"c\"clang_getExceptionSpecificationType\""
            export var"c\"clang_getExceptionSpecificationType\""
            export clang_getExceptionSpecificationType
            var"c\"clang_getExceptionSpecificationType\""
        end
        begin
            const var"c\"clang_getNumArgTypes\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getNumArgTypes}()
            (func::C.typeof(var"c\"clang_getNumArgTypes\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getNumArgTypes = var"c\"clang_getNumArgTypes\""
            export var"c\"clang_getNumArgTypes\""
            export clang_getNumArgTypes
            var"c\"clang_getNumArgTypes\""
        end
        begin
            const var"c\"clang_getArgType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\"", C.Cuint}, :cdecl}, libpath, :clang_getArgType}()
            (func::C.typeof(var"c\"clang_getArgType\""))(var"c\"T\"", var"c\"i\"") = begin
                    C.funccall(func, var"c\"T\"", var"c\"i\"")
                end
            const clang_getArgType = var"c\"clang_getArgType\""
            export var"c\"clang_getArgType\""
            export clang_getArgType
            var"c\"clang_getArgType\""
        end
        begin
            const var"c\"clang_Type_getObjCObjectBaseType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getObjCObjectBaseType}()
            (func::C.typeof(var"c\"clang_Type_getObjCObjectBaseType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getObjCObjectBaseType = var"c\"clang_Type_getObjCObjectBaseType\""
            export var"c\"clang_Type_getObjCObjectBaseType\""
            export clang_Type_getObjCObjectBaseType
            var"c\"clang_Type_getObjCObjectBaseType\""
        end
        begin
            const var"c\"clang_Type_getNumObjCProtocolRefs\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getNumObjCProtocolRefs}()
            (func::C.typeof(var"c\"clang_Type_getNumObjCProtocolRefs\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getNumObjCProtocolRefs = var"c\"clang_Type_getNumObjCProtocolRefs\""
            export var"c\"clang_Type_getNumObjCProtocolRefs\""
            export clang_Type_getNumObjCProtocolRefs
            var"c\"clang_Type_getNumObjCProtocolRefs\""
        end
        begin
            const var"c\"clang_Type_getObjCProtocolDecl\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXType\"", C.Cuint}, :cdecl}, libpath, :clang_Type_getObjCProtocolDecl}()
            (func::C.typeof(var"c\"clang_Type_getObjCProtocolDecl\""))(var"c\"T\"", var"c\"i\"") = begin
                    C.funccall(func, var"c\"T\"", var"c\"i\"")
                end
            const clang_Type_getObjCProtocolDecl = var"c\"clang_Type_getObjCProtocolDecl\""
            export var"c\"clang_Type_getObjCProtocolDecl\""
            export clang_Type_getObjCProtocolDecl
            var"c\"clang_Type_getObjCProtocolDecl\""
        end
        begin
            const var"c\"clang_Type_getNumObjCTypeArgs\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getNumObjCTypeArgs}()
            (func::C.typeof(var"c\"clang_Type_getNumObjCTypeArgs\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getNumObjCTypeArgs = var"c\"clang_Type_getNumObjCTypeArgs\""
            export var"c\"clang_Type_getNumObjCTypeArgs\""
            export clang_Type_getNumObjCTypeArgs
            var"c\"clang_Type_getNumObjCTypeArgs\""
        end
        begin
            const var"c\"clang_Type_getObjCTypeArg\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\"", C.Cuint}, :cdecl}, libpath, :clang_Type_getObjCTypeArg}()
            (func::C.typeof(var"c\"clang_Type_getObjCTypeArg\""))(var"c\"T\"", var"c\"i\"") = begin
                    C.funccall(func, var"c\"T\"", var"c\"i\"")
                end
            const clang_Type_getObjCTypeArg = var"c\"clang_Type_getObjCTypeArg\""
            export var"c\"clang_Type_getObjCTypeArg\""
            export clang_Type_getObjCTypeArg
            var"c\"clang_Type_getObjCTypeArg\""
        end
        begin
            const var"c\"clang_isFunctionTypeVariadic\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_isFunctionTypeVariadic}()
            (func::C.typeof(var"c\"clang_isFunctionTypeVariadic\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_isFunctionTypeVariadic = var"c\"clang_isFunctionTypeVariadic\""
            export var"c\"clang_isFunctionTypeVariadic\""
            export clang_isFunctionTypeVariadic
            var"c\"clang_isFunctionTypeVariadic\""
        end
        begin
            const var"c\"clang_getCursorResultType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorResultType}()
            (func::C.typeof(var"c\"clang_getCursorResultType\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getCursorResultType = var"c\"clang_getCursorResultType\""
            export var"c\"clang_getCursorResultType\""
            export clang_getCursorResultType
            var"c\"clang_getCursorResultType\""
        end
        begin
            const var"c\"clang_getCursorExceptionSpecificationType\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorExceptionSpecificationType}()
            (func::C.typeof(var"c\"clang_getCursorExceptionSpecificationType\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getCursorExceptionSpecificationType = var"c\"clang_getCursorExceptionSpecificationType\""
            export var"c\"clang_getCursorExceptionSpecificationType\""
            export clang_getCursorExceptionSpecificationType
            var"c\"clang_getCursorExceptionSpecificationType\""
        end
        begin
            const var"c\"clang_isPODType\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_isPODType}()
            (func::C.typeof(var"c\"clang_isPODType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_isPODType = var"c\"clang_isPODType\""
            export var"c\"clang_isPODType\""
            export clang_isPODType
            var"c\"clang_isPODType\""
        end
        begin
            const var"c\"clang_getElementType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getElementType}()
            (func::C.typeof(var"c\"clang_getElementType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getElementType = var"c\"clang_getElementType\""
            export var"c\"clang_getElementType\""
            export clang_getElementType
            var"c\"clang_getElementType\""
        end
        begin
            const var"c\"clang_getNumElements\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getNumElements}()
            (func::C.typeof(var"c\"clang_getNumElements\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getNumElements = var"c\"clang_getNumElements\""
            export var"c\"clang_getNumElements\""
            export clang_getNumElements
            var"c\"clang_getNumElements\""
        end
        begin
            const var"c\"clang_getArrayElementType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getArrayElementType}()
            (func::C.typeof(var"c\"clang_getArrayElementType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getArrayElementType = var"c\"clang_getArrayElementType\""
            export var"c\"clang_getArrayElementType\""
            export clang_getArrayElementType
            var"c\"clang_getArrayElementType\""
        end
        begin
            const var"c\"clang_getArraySize\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_getArraySize}()
            (func::C.typeof(var"c\"clang_getArraySize\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_getArraySize = var"c\"clang_getArraySize\""
            export var"c\"clang_getArraySize\""
            export clang_getArraySize
            var"c\"clang_getArraySize\""
        end
        begin
            const var"c\"clang_Type_getNamedType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getNamedType}()
            (func::C.typeof(var"c\"clang_Type_getNamedType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getNamedType = var"c\"clang_Type_getNamedType\""
            export var"c\"clang_Type_getNamedType\""
            export clang_Type_getNamedType
            var"c\"clang_Type_getNamedType\""
        end
        begin
            const var"c\"clang_Type_isTransparentTagTypedef\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_isTransparentTagTypedef}()
            (func::C.typeof(var"c\"clang_Type_isTransparentTagTypedef\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_isTransparentTagTypedef = var"c\"clang_Type_isTransparentTagTypedef\""
            export var"c\"clang_Type_isTransparentTagTypedef\""
            export clang_Type_isTransparentTagTypedef
            var"c\"clang_Type_isTransparentTagTypedef\""
        end
        begin
            abstract type var"c\"enum CXTypeNullabilityKind\"" <: Cenum end
            const CXTypeNullabilityKind = var"c\"enum CXTypeNullabilityKind\""
            export var"c\"enum CXTypeNullabilityKind\""
            export CXTypeNullabilityKind
            var"c\"enum CXTypeNullabilityKind\""
        end
        begin
            primitive type var"(c\"enum CXTypeNullabilityKind\")" <: var"c\"enum CXTypeNullabilityKind\"" 32 end
            (::(Type){var"(c\"enum CXTypeNullabilityKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTypeNullabilityKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTypeNullabilityKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXTypeNullability_NonNull\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXTypeNullability_Nullable\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXTypeNullability_Unspecified\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXTypeNullability_Invalid\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTypeNullabilityKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTypeNullabilityKind\")"}) = begin
                    var"(c\"enum CXTypeNullabilityKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTypeNullabilityKind\""}) = begin
                    var"(c\"enum CXTypeNullabilityKind\")"
                end
            const var"c\"CXTypeNullability_NonNull\"" = var"(c\"enum CXTypeNullabilityKind\")"(0x0000000000000000)
            const var"c\"CXTypeNullability_Nullable\"" = var"(c\"enum CXTypeNullabilityKind\")"(0x0000000000000001)
            const var"c\"CXTypeNullability_Unspecified\"" = var"(c\"enum CXTypeNullabilityKind\")"(0x0000000000000002)
            const var"c\"CXTypeNullability_Invalid\"" = var"(c\"enum CXTypeNullabilityKind\")"(0x0000000000000003)
            const CXTypeNullabilityKind = var"c\"enum CXTypeNullabilityKind\""
            const CXTypeNullability_NonNull = var"c\"CXTypeNullability_NonNull\""
            const CXTypeNullability_Nullable = var"c\"CXTypeNullability_Nullable\""
            const CXTypeNullability_Unspecified = var"c\"CXTypeNullability_Unspecified\""
            const CXTypeNullability_Invalid = var"c\"CXTypeNullability_Invalid\""
            export var"c\"enum CXTypeNullabilityKind\"", var"(c\"enum CXTypeNullabilityKind\")", var"c\"CXTypeNullability_NonNull\"", var"c\"CXTypeNullability_Nullable\"", var"c\"CXTypeNullability_Unspecified\"", var"c\"CXTypeNullability_Invalid\""
            export CXTypeNullabilityKind, CXTypeNullability_NonNull, CXTypeNullability_Nullable, CXTypeNullability_Unspecified, CXTypeNullability_Invalid
            var"c\"enum CXTypeNullabilityKind\""
        end
        begin
            const var"c\"clang_Type_getNullability\"" = C.Cbinding{C.Cfunction{var"c\"enum CXTypeNullabilityKind\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getNullability}()
            (func::C.typeof(var"c\"clang_Type_getNullability\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getNullability = var"c\"clang_Type_getNullability\""
            export var"c\"clang_Type_getNullability\""
            export clang_Type_getNullability
            var"c\"clang_Type_getNullability\""
        end
        begin
            abstract type var"c\"enum CXTypeLayoutError\"" <: Cenum end
            const CXTypeLayoutError = var"c\"enum CXTypeLayoutError\""
            export var"c\"enum CXTypeLayoutError\""
            export CXTypeLayoutError
            var"c\"enum CXTypeLayoutError\""
        end
        begin
            primitive type var"(c\"enum CXTypeLayoutError\")" <: var"c\"enum CXTypeLayoutError\"" 32 end
            (::(Type){var"(c\"enum CXTypeLayoutError\")"})(val::C.Integer = C.zero(C.Cint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTypeLayoutError\")", C.convert(C.Cint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTypeLayoutError\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXTypeLayoutError_Invalid\""), -1}, C.Tuple{Symbol("c\"CXTypeLayoutError_Incomplete\""), -2}, C.Tuple{Symbol("c\"CXTypeLayoutError_Dependent\""), -3}, C.Tuple{Symbol("c\"CXTypeLayoutError_NotConstantSize\""), -4}, C.Tuple{Symbol("c\"CXTypeLayoutError_InvalidFieldName\""), -5}, C.Tuple{Symbol("c\"CXTypeLayoutError_Undeduced\""), -6}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTypeLayoutError\")"}) = begin
                    C.Cint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTypeLayoutError\")"}) = begin
                    var"(c\"enum CXTypeLayoutError\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTypeLayoutError\""}) = begin
                    var"(c\"enum CXTypeLayoutError\")"
                end
            const var"c\"CXTypeLayoutError_Invalid\"" = var"(c\"enum CXTypeLayoutError\")"(-1)
            const var"c\"CXTypeLayoutError_Incomplete\"" = var"(c\"enum CXTypeLayoutError\")"(-2)
            const var"c\"CXTypeLayoutError_Dependent\"" = var"(c\"enum CXTypeLayoutError\")"(-3)
            const var"c\"CXTypeLayoutError_NotConstantSize\"" = var"(c\"enum CXTypeLayoutError\")"(-4)
            const var"c\"CXTypeLayoutError_InvalidFieldName\"" = var"(c\"enum CXTypeLayoutError\")"(-5)
            const var"c\"CXTypeLayoutError_Undeduced\"" = var"(c\"enum CXTypeLayoutError\")"(-6)
            const CXTypeLayoutError = var"c\"enum CXTypeLayoutError\""
            const CXTypeLayoutError_Invalid = var"c\"CXTypeLayoutError_Invalid\""
            const CXTypeLayoutError_Incomplete = var"c\"CXTypeLayoutError_Incomplete\""
            const CXTypeLayoutError_Dependent = var"c\"CXTypeLayoutError_Dependent\""
            const CXTypeLayoutError_NotConstantSize = var"c\"CXTypeLayoutError_NotConstantSize\""
            const CXTypeLayoutError_InvalidFieldName = var"c\"CXTypeLayoutError_InvalidFieldName\""
            const CXTypeLayoutError_Undeduced = var"c\"CXTypeLayoutError_Undeduced\""
            export var"c\"enum CXTypeLayoutError\"", var"(c\"enum CXTypeLayoutError\")", var"c\"CXTypeLayoutError_Invalid\"", var"c\"CXTypeLayoutError_Incomplete\"", var"c\"CXTypeLayoutError_Dependent\"", var"c\"CXTypeLayoutError_NotConstantSize\"", var"c\"CXTypeLayoutError_InvalidFieldName\"", var"c\"CXTypeLayoutError_Undeduced\""
            export CXTypeLayoutError, CXTypeLayoutError_Invalid, CXTypeLayoutError_Incomplete, CXTypeLayoutError_Dependent, CXTypeLayoutError_NotConstantSize, CXTypeLayoutError_InvalidFieldName, CXTypeLayoutError_Undeduced
            var"c\"enum CXTypeLayoutError\""
        end
        begin
            const var"c\"clang_Type_getAlignOf\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getAlignOf}()
            (func::C.typeof(var"c\"clang_Type_getAlignOf\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getAlignOf = var"c\"clang_Type_getAlignOf\""
            export var"c\"clang_Type_getAlignOf\""
            export clang_Type_getAlignOf
            var"c\"clang_Type_getAlignOf\""
        end
        begin
            const var"c\"clang_Type_getClassType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getClassType}()
            (func::C.typeof(var"c\"clang_Type_getClassType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getClassType = var"c\"clang_Type_getClassType\""
            export var"c\"clang_Type_getClassType\""
            export clang_Type_getClassType
            var"c\"clang_Type_getClassType\""
        end
        begin
            const var"c\"clang_Type_getSizeOf\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getSizeOf}()
            (func::C.typeof(var"c\"clang_Type_getSizeOf\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getSizeOf = var"c\"clang_Type_getSizeOf\""
            export var"c\"clang_Type_getSizeOf\""
            export clang_Type_getSizeOf
            var"c\"clang_Type_getSizeOf\""
        end
        begin
            const var"c\"clang_Type_getOffsetOf\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXType\"", C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_Type_getOffsetOf}()
            (func::C.typeof(var"c\"clang_Type_getOffsetOf\""))(var"c\"T\"", var"c\"S\"") = begin
                    C.funccall(func, var"c\"T\"", var"c\"S\"")
                end
            const clang_Type_getOffsetOf = var"c\"clang_Type_getOffsetOf\""
            export var"c\"clang_Type_getOffsetOf\""
            export clang_Type_getOffsetOf
            var"c\"clang_Type_getOffsetOf\""
        end
        begin
            const var"c\"clang_Type_getModifiedType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getModifiedType}()
            (func::C.typeof(var"c\"clang_Type_getModifiedType\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getModifiedType = var"c\"clang_Type_getModifiedType\""
            export var"c\"clang_Type_getModifiedType\""
            export clang_Type_getModifiedType
            var"c\"clang_Type_getModifiedType\""
        end
        begin
            const var"c\"clang_Type_getValueType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getValueType}()
            (func::C.typeof(var"c\"clang_Type_getValueType\""))(var"c\"CT\"") = begin
                    C.funccall(func, var"c\"CT\"")
                end
            const clang_Type_getValueType = var"c\"clang_Type_getValueType\""
            export var"c\"clang_Type_getValueType\""
            export clang_Type_getValueType
            var"c\"clang_Type_getValueType\""
        end
        begin
            const var"c\"clang_Cursor_getOffsetOfField\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getOffsetOfField}()
            (func::C.typeof(var"c\"clang_Cursor_getOffsetOfField\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getOffsetOfField = var"c\"clang_Cursor_getOffsetOfField\""
            export var"c\"clang_Cursor_getOffsetOfField\""
            export clang_Cursor_getOffsetOfField
            var"c\"clang_Cursor_getOffsetOfField\""
        end
        begin
            const var"c\"clang_Cursor_isAnonymous\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isAnonymous}()
            (func::C.typeof(var"c\"clang_Cursor_isAnonymous\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isAnonymous = var"c\"clang_Cursor_isAnonymous\""
            export var"c\"clang_Cursor_isAnonymous\""
            export clang_Cursor_isAnonymous
            var"c\"clang_Cursor_isAnonymous\""
        end
        begin
            const var"c\"clang_Cursor_isAnonymousRecordDecl\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isAnonymousRecordDecl}()
            (func::C.typeof(var"c\"clang_Cursor_isAnonymousRecordDecl\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isAnonymousRecordDecl = var"c\"clang_Cursor_isAnonymousRecordDecl\""
            export var"c\"clang_Cursor_isAnonymousRecordDecl\""
            export clang_Cursor_isAnonymousRecordDecl
            var"c\"clang_Cursor_isAnonymousRecordDecl\""
        end
        begin
            const var"c\"clang_Cursor_isInlineNamespace\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isInlineNamespace}()
            (func::C.typeof(var"c\"clang_Cursor_isInlineNamespace\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isInlineNamespace = var"c\"clang_Cursor_isInlineNamespace\""
            export var"c\"clang_Cursor_isInlineNamespace\""
            export clang_Cursor_isInlineNamespace
            var"c\"clang_Cursor_isInlineNamespace\""
        end
        begin
            abstract type var"c\"enum CXRefQualifierKind\"" <: Cenum end
            const CXRefQualifierKind = var"c\"enum CXRefQualifierKind\""
            export var"c\"enum CXRefQualifierKind\""
            export CXRefQualifierKind
            var"c\"enum CXRefQualifierKind\""
        end
        begin
            primitive type var"(c\"enum CXRefQualifierKind\")" <: var"c\"enum CXRefQualifierKind\"" 32 end
            (::(Type){var"(c\"enum CXRefQualifierKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXRefQualifierKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXRefQualifierKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXRefQualifier_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXRefQualifier_LValue\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXRefQualifier_RValue\""), 0x0000000000000002}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXRefQualifierKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXRefQualifierKind\")"}) = begin
                    var"(c\"enum CXRefQualifierKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXRefQualifierKind\""}) = begin
                    var"(c\"enum CXRefQualifierKind\")"
                end
            const var"c\"CXRefQualifier_None\"" = var"(c\"enum CXRefQualifierKind\")"(0x0000000000000000)
            const var"c\"CXRefQualifier_LValue\"" = var"(c\"enum CXRefQualifierKind\")"(0x0000000000000001)
            const var"c\"CXRefQualifier_RValue\"" = var"(c\"enum CXRefQualifierKind\")"(0x0000000000000002)
            const CXRefQualifierKind = var"c\"enum CXRefQualifierKind\""
            const CXRefQualifier_None = var"c\"CXRefQualifier_None\""
            const CXRefQualifier_LValue = var"c\"CXRefQualifier_LValue\""
            const CXRefQualifier_RValue = var"c\"CXRefQualifier_RValue\""
            export var"c\"enum CXRefQualifierKind\"", var"(c\"enum CXRefQualifierKind\")", var"c\"CXRefQualifier_None\"", var"c\"CXRefQualifier_LValue\"", var"c\"CXRefQualifier_RValue\""
            export CXRefQualifierKind, CXRefQualifier_None, CXRefQualifier_LValue, CXRefQualifier_RValue
            var"c\"enum CXRefQualifierKind\""
        end
        begin
            const var"c\"clang_Type_getNumTemplateArguments\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getNumTemplateArguments}()
            (func::C.typeof(var"c\"clang_Type_getNumTemplateArguments\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getNumTemplateArguments = var"c\"clang_Type_getNumTemplateArguments\""
            export var"c\"clang_Type_getNumTemplateArguments\""
            export clang_Type_getNumTemplateArguments
            var"c\"clang_Type_getNumTemplateArguments\""
        end
        begin
            const var"c\"clang_Type_getTemplateArgumentAsType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXType\"", C.Cuint}, :cdecl}, libpath, :clang_Type_getTemplateArgumentAsType}()
            (func::C.typeof(var"c\"clang_Type_getTemplateArgumentAsType\""))(var"c\"T\"", var"c\"i\"") = begin
                    C.funccall(func, var"c\"T\"", var"c\"i\"")
                end
            const clang_Type_getTemplateArgumentAsType = var"c\"clang_Type_getTemplateArgumentAsType\""
            export var"c\"clang_Type_getTemplateArgumentAsType\""
            export clang_Type_getTemplateArgumentAsType
            var"c\"clang_Type_getTemplateArgumentAsType\""
        end
        begin
            const var"c\"clang_Type_getCXXRefQualifier\"" = C.Cbinding{C.Cfunction{var"c\"enum CXRefQualifierKind\"", C.Tuple{var"c\"CXType\""}, :cdecl}, libpath, :clang_Type_getCXXRefQualifier}()
            (func::C.typeof(var"c\"clang_Type_getCXXRefQualifier\""))(var"c\"T\"") = begin
                    C.funccall(func, var"c\"T\"")
                end
            const clang_Type_getCXXRefQualifier = var"c\"clang_Type_getCXXRefQualifier\""
            export var"c\"clang_Type_getCXXRefQualifier\""
            export clang_Type_getCXXRefQualifier
            var"c\"clang_Type_getCXXRefQualifier\""
        end
        begin
            const var"c\"clang_Cursor_isBitField\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isBitField}()
            (func::C.typeof(var"c\"clang_Cursor_isBitField\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isBitField = var"c\"clang_Cursor_isBitField\""
            export var"c\"clang_Cursor_isBitField\""
            export clang_Cursor_isBitField
            var"c\"clang_Cursor_isBitField\""
        end
        begin
            const var"c\"clang_isVirtualBase\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_isVirtualBase}()
            (func::C.typeof(var"c\"clang_isVirtualBase\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isVirtualBase = var"c\"clang_isVirtualBase\""
            export var"c\"clang_isVirtualBase\""
            export clang_isVirtualBase
            var"c\"clang_isVirtualBase\""
        end
        begin
            abstract type var"c\"enum CX_CXXAccessSpecifier\"" <: Cenum end
            const CX_CXXAccessSpecifier = var"c\"enum CX_CXXAccessSpecifier\""
            export var"c\"enum CX_CXXAccessSpecifier\""
            export CX_CXXAccessSpecifier
            var"c\"enum CX_CXXAccessSpecifier\""
        end
        begin
            primitive type var"(c\"enum CX_CXXAccessSpecifier\")" <: var"c\"enum CX_CXXAccessSpecifier\"" 32 end
            (::(Type){var"(c\"enum CX_CXXAccessSpecifier\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CX_CXXAccessSpecifier\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CX_CXXAccessSpecifier\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CX_CXXInvalidAccessSpecifier\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CX_CXXPublic\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CX_CXXProtected\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CX_CXXPrivate\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CX_CXXAccessSpecifier\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CX_CXXAccessSpecifier\")"}) = begin
                    var"(c\"enum CX_CXXAccessSpecifier\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CX_CXXAccessSpecifier\""}) = begin
                    var"(c\"enum CX_CXXAccessSpecifier\")"
                end
            const var"c\"CX_CXXInvalidAccessSpecifier\"" = var"(c\"enum CX_CXXAccessSpecifier\")"(0x0000000000000000)
            const var"c\"CX_CXXPublic\"" = var"(c\"enum CX_CXXAccessSpecifier\")"(0x0000000000000001)
            const var"c\"CX_CXXProtected\"" = var"(c\"enum CX_CXXAccessSpecifier\")"(0x0000000000000002)
            const var"c\"CX_CXXPrivate\"" = var"(c\"enum CX_CXXAccessSpecifier\")"(0x0000000000000003)
            const CX_CXXAccessSpecifier = var"c\"enum CX_CXXAccessSpecifier\""
            const CX_CXXInvalidAccessSpecifier = var"c\"CX_CXXInvalidAccessSpecifier\""
            const CX_CXXPublic = var"c\"CX_CXXPublic\""
            const CX_CXXProtected = var"c\"CX_CXXProtected\""
            const CX_CXXPrivate = var"c\"CX_CXXPrivate\""
            export var"c\"enum CX_CXXAccessSpecifier\"", var"(c\"enum CX_CXXAccessSpecifier\")", var"c\"CX_CXXInvalidAccessSpecifier\"", var"c\"CX_CXXPublic\"", var"c\"CX_CXXProtected\"", var"c\"CX_CXXPrivate\""
            export CX_CXXAccessSpecifier, CX_CXXInvalidAccessSpecifier, CX_CXXPublic, CX_CXXProtected, CX_CXXPrivate
            var"c\"enum CX_CXXAccessSpecifier\""
        end
        begin
            const var"c\"clang_getCXXAccessSpecifier\"" = C.Cbinding{C.Cfunction{var"c\"enum CX_CXXAccessSpecifier\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCXXAccessSpecifier}()
            (func::C.typeof(var"c\"clang_getCXXAccessSpecifier\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCXXAccessSpecifier = var"c\"clang_getCXXAccessSpecifier\""
            export var"c\"clang_getCXXAccessSpecifier\""
            export clang_getCXXAccessSpecifier
            var"c\"clang_getCXXAccessSpecifier\""
        end
        begin
            abstract type var"c\"enum CX_StorageClass\"" <: Cenum end
            const CX_StorageClass = var"c\"enum CX_StorageClass\""
            export var"c\"enum CX_StorageClass\""
            export CX_StorageClass
            var"c\"enum CX_StorageClass\""
        end
        begin
            primitive type var"(c\"enum CX_StorageClass\")" <: var"c\"enum CX_StorageClass\"" 32 end
            (::(Type){var"(c\"enum CX_StorageClass\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CX_StorageClass\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CX_StorageClass\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CX_SC_Invalid\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CX_SC_None\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CX_SC_Extern\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CX_SC_Static\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CX_SC_PrivateExtern\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CX_SC_OpenCLWorkGroupLocal\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CX_SC_Auto\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CX_SC_Register\""), 0x0000000000000007}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CX_StorageClass\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CX_StorageClass\")"}) = begin
                    var"(c\"enum CX_StorageClass\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CX_StorageClass\""}) = begin
                    var"(c\"enum CX_StorageClass\")"
                end
            const var"c\"CX_SC_Invalid\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000000)
            const var"c\"CX_SC_None\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000001)
            const var"c\"CX_SC_Extern\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000002)
            const var"c\"CX_SC_Static\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000003)
            const var"c\"CX_SC_PrivateExtern\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000004)
            const var"c\"CX_SC_OpenCLWorkGroupLocal\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000005)
            const var"c\"CX_SC_Auto\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000006)
            const var"c\"CX_SC_Register\"" = var"(c\"enum CX_StorageClass\")"(0x0000000000000007)
            const CX_StorageClass = var"c\"enum CX_StorageClass\""
            const CX_SC_Invalid = var"c\"CX_SC_Invalid\""
            const CX_SC_None = var"c\"CX_SC_None\""
            const CX_SC_Extern = var"c\"CX_SC_Extern\""
            const CX_SC_Static = var"c\"CX_SC_Static\""
            const CX_SC_PrivateExtern = var"c\"CX_SC_PrivateExtern\""
            const CX_SC_OpenCLWorkGroupLocal = var"c\"CX_SC_OpenCLWorkGroupLocal\""
            const CX_SC_Auto = var"c\"CX_SC_Auto\""
            const CX_SC_Register = var"c\"CX_SC_Register\""
            export var"c\"enum CX_StorageClass\"", var"(c\"enum CX_StorageClass\")", var"c\"CX_SC_Invalid\"", var"c\"CX_SC_None\"", var"c\"CX_SC_Extern\"", var"c\"CX_SC_Static\"", var"c\"CX_SC_PrivateExtern\"", var"c\"CX_SC_OpenCLWorkGroupLocal\"", var"c\"CX_SC_Auto\"", var"c\"CX_SC_Register\""
            export CX_StorageClass, CX_SC_Invalid, CX_SC_None, CX_SC_Extern, CX_SC_Static, CX_SC_PrivateExtern, CX_SC_OpenCLWorkGroupLocal, CX_SC_Auto, CX_SC_Register
            var"c\"enum CX_StorageClass\""
        end
        begin
            const var"c\"clang_Cursor_getStorageClass\"" = C.Cbinding{C.Cfunction{var"c\"enum CX_StorageClass\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getStorageClass}()
            (func::C.typeof(var"c\"clang_Cursor_getStorageClass\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_Cursor_getStorageClass = var"c\"clang_Cursor_getStorageClass\""
            export var"c\"clang_Cursor_getStorageClass\""
            export clang_Cursor_getStorageClass
            var"c\"clang_Cursor_getStorageClass\""
        end
        begin
            const var"c\"clang_getNumOverloadedDecls\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getNumOverloadedDecls}()
            (func::C.typeof(var"c\"clang_getNumOverloadedDecls\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getNumOverloadedDecls = var"c\"clang_getNumOverloadedDecls\""
            export var"c\"clang_getNumOverloadedDecls\""
            export clang_getNumOverloadedDecls
            var"c\"clang_getNumOverloadedDecls\""
        end
        begin
            const var"c\"clang_getOverloadedDecl\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\"", C.Cuint}, :cdecl}, libpath, :clang_getOverloadedDecl}()
            (func::C.typeof(var"c\"clang_getOverloadedDecl\""))(var"c\"cursor\"", var"c\"index\"") = begin
                    C.funccall(func, var"c\"cursor\"", var"c\"index\"")
                end
            const clang_getOverloadedDecl = var"c\"clang_getOverloadedDecl\""
            export var"c\"clang_getOverloadedDecl\""
            export clang_getOverloadedDecl
            var"c\"clang_getOverloadedDecl\""
        end
        begin
            const var"c\"clang_getIBOutletCollectionType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getIBOutletCollectionType}()
            (func::C.typeof(var"c\"clang_getIBOutletCollectionType\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getIBOutletCollectionType = var"c\"clang_getIBOutletCollectionType\""
            export var"c\"clang_getIBOutletCollectionType\""
            export clang_getIBOutletCollectionType
            var"c\"clang_getIBOutletCollectionType\""
        end
        begin
            abstract type var"c\"enum CXChildVisitResult\"" <: Cenum end
            const CXChildVisitResult = var"c\"enum CXChildVisitResult\""
            export var"c\"enum CXChildVisitResult\""
            export CXChildVisitResult
            var"c\"enum CXChildVisitResult\""
        end
        begin
            primitive type var"(c\"enum CXChildVisitResult\")" <: var"c\"enum CXChildVisitResult\"" 32 end
            (::(Type){var"(c\"enum CXChildVisitResult\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXChildVisitResult\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXChildVisitResult\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXChildVisit_Break\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXChildVisit_Continue\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXChildVisit_Recurse\""), 0x0000000000000002}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXChildVisitResult\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXChildVisitResult\")"}) = begin
                    var"(c\"enum CXChildVisitResult\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXChildVisitResult\""}) = begin
                    var"(c\"enum CXChildVisitResult\")"
                end
            const var"c\"CXChildVisit_Break\"" = var"(c\"enum CXChildVisitResult\")"(0x0000000000000000)
            const var"c\"CXChildVisit_Continue\"" = var"(c\"enum CXChildVisitResult\")"(0x0000000000000001)
            const var"c\"CXChildVisit_Recurse\"" = var"(c\"enum CXChildVisitResult\")"(0x0000000000000002)
            const CXChildVisitResult = var"c\"enum CXChildVisitResult\""
            const CXChildVisit_Break = var"c\"CXChildVisit_Break\""
            const CXChildVisit_Continue = var"c\"CXChildVisit_Continue\""
            const CXChildVisit_Recurse = var"c\"CXChildVisit_Recurse\""
            export var"c\"enum CXChildVisitResult\"", var"(c\"enum CXChildVisitResult\")", var"c\"CXChildVisit_Break\"", var"c\"CXChildVisit_Continue\"", var"c\"CXChildVisit_Recurse\""
            export CXChildVisitResult, CXChildVisit_Break, CXChildVisit_Continue, CXChildVisit_Recurse
            var"c\"enum CXChildVisitResult\""
        end
        begin
            const var"c\"CXCursorVisitor\"" = C.Cptr{C.Cfunction{var"c\"enum CXChildVisitResult\"", C.Tuple{var"c\"CXCursor\"", var"c\"CXCursor\"", var"c\"CXClientData\""}, :cdecl}}
            const CXCursorVisitor = var"c\"CXCursorVisitor\""
            export var"c\"CXCursorVisitor\""
            export CXCursorVisitor
            var"c\"CXCursorVisitor\""
        end
        begin
            const var"c\"clang_visitChildren\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\"", var"c\"CXCursorVisitor\"", var"c\"CXClientData\""}, :cdecl}, libpath, :clang_visitChildren}()
            (func::C.typeof(var"c\"clang_visitChildren\""))(var"c\"parent\"", var"c\"visitor\"", var"c\"client_data\"") = begin
                    C.funccall(func, var"c\"parent\"", var"c\"visitor\"", var"c\"client_data\"")
                end
            const clang_visitChildren = var"c\"clang_visitChildren\""
            export var"c\"clang_visitChildren\""
            export clang_visitChildren
            var"c\"clang_visitChildren\""
        end
        begin
            const var"c\"clang_getCursorUSR\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorUSR}()
            (func::C.typeof(var"c\"clang_getCursorUSR\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorUSR = var"c\"clang_getCursorUSR\""
            export var"c\"clang_getCursorUSR\""
            export clang_getCursorUSR
            var"c\"clang_getCursorUSR\""
        end
        begin
            const var"c\"clang_constructUSR_ObjCClass\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_constructUSR_ObjCClass}()
            (func::C.typeof(var"c\"clang_constructUSR_ObjCClass\""))(var"c\"class_name\"") = begin
                    C.funccall(func, var"c\"class_name\"")
                end
            const clang_constructUSR_ObjCClass = var"c\"clang_constructUSR_ObjCClass\""
            export var"c\"clang_constructUSR_ObjCClass\""
            export clang_constructUSR_ObjCClass
            var"c\"clang_constructUSR_ObjCClass\""
        end
        begin
            const var"c\"clang_constructUSR_ObjCCategory\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_constructUSR_ObjCCategory}()
            (func::C.typeof(var"c\"clang_constructUSR_ObjCCategory\""))(var"c\"class_name\"", var"c\"category_name\"") = begin
                    C.funccall(func, var"c\"class_name\"", var"c\"category_name\"")
                end
            const clang_constructUSR_ObjCCategory = var"c\"clang_constructUSR_ObjCCategory\""
            export var"c\"clang_constructUSR_ObjCCategory\""
            export clang_constructUSR_ObjCCategory
            var"c\"clang_constructUSR_ObjCCategory\""
        end
        begin
            const var"c\"clang_constructUSR_ObjCProtocol\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_constructUSR_ObjCProtocol}()
            (func::C.typeof(var"c\"clang_constructUSR_ObjCProtocol\""))(var"c\"protocol_name\"") = begin
                    C.funccall(func, var"c\"protocol_name\"")
                end
            const clang_constructUSR_ObjCProtocol = var"c\"clang_constructUSR_ObjCProtocol\""
            export var"c\"clang_constructUSR_ObjCProtocol\""
            export clang_constructUSR_ObjCProtocol
            var"c\"clang_constructUSR_ObjCProtocol\""
        end
        begin
            const var"c\"clang_constructUSR_ObjCIvar\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, var"c\"CXString\""}, :cdecl}, libpath, :clang_constructUSR_ObjCIvar}()
            (func::C.typeof(var"c\"clang_constructUSR_ObjCIvar\""))(var"c\"name\"", var"c\"classUSR\"") = begin
                    C.funccall(func, var"c\"name\"", var"c\"classUSR\"")
                end
            const clang_constructUSR_ObjCIvar = var"c\"clang_constructUSR_ObjCIvar\""
            export var"c\"clang_constructUSR_ObjCIvar\""
            export clang_constructUSR_ObjCIvar
            var"c\"clang_constructUSR_ObjCIvar\""
        end
        begin
            const var"c\"clang_constructUSR_ObjCMethod\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.Cuint, var"c\"CXString\""}, :cdecl}, libpath, :clang_constructUSR_ObjCMethod}()
            (func::C.typeof(var"c\"clang_constructUSR_ObjCMethod\""))(var"c\"name\"", var"c\"isInstanceMethod\"", var"c\"classUSR\"") = begin
                    C.funccall(func, var"c\"name\"", var"c\"isInstanceMethod\"", var"c\"classUSR\"")
                end
            const clang_constructUSR_ObjCMethod = var"c\"clang_constructUSR_ObjCMethod\""
            export var"c\"clang_constructUSR_ObjCMethod\""
            export clang_constructUSR_ObjCMethod
            var"c\"clang_constructUSR_ObjCMethod\""
        end
        begin
            const var"c\"clang_constructUSR_ObjCProperty\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, var"c\"CXString\""}, :cdecl}, libpath, :clang_constructUSR_ObjCProperty}()
            (func::C.typeof(var"c\"clang_constructUSR_ObjCProperty\""))(var"c\"property\"", var"c\"classUSR\"") = begin
                    C.funccall(func, var"c\"property\"", var"c\"classUSR\"")
                end
            const clang_constructUSR_ObjCProperty = var"c\"clang_constructUSR_ObjCProperty\""
            export var"c\"clang_constructUSR_ObjCProperty\""
            export clang_constructUSR_ObjCProperty
            var"c\"clang_constructUSR_ObjCProperty\""
        end
        begin
            const var"c\"clang_getCursorSpelling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorSpelling}()
            (func::C.typeof(var"c\"clang_getCursorSpelling\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorSpelling = var"c\"clang_getCursorSpelling\""
            export var"c\"clang_getCursorSpelling\""
            export clang_getCursorSpelling
            var"c\"clang_getCursorSpelling\""
        end
        begin
            const var"c\"clang_Cursor_getSpellingNameRange\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{var"c\"CXCursor\"", C.Cuint, C.Cuint}, :cdecl}, libpath, :clang_Cursor_getSpellingNameRange}()
            (func::C.typeof(var"c\"clang_Cursor_getSpellingNameRange\""))(arg1, var"c\"pieceIndex\"", var"c\"options\"") = begin
                    C.funccall(func, arg1, var"c\"pieceIndex\"", var"c\"options\"")
                end
            const clang_Cursor_getSpellingNameRange = var"c\"clang_Cursor_getSpellingNameRange\""
            export var"c\"clang_Cursor_getSpellingNameRange\""
            export clang_Cursor_getSpellingNameRange
            var"c\"clang_Cursor_getSpellingNameRange\""
        end
        begin
            const var"c\"CXPrintingPolicy\"" = C.Cptr{C.Cvoid}
            const CXPrintingPolicy = var"c\"CXPrintingPolicy\""
            export var"c\"CXPrintingPolicy\""
            export CXPrintingPolicy
            var"c\"CXPrintingPolicy\""
        end
        begin
            abstract type var"c\"enum CXPrintingPolicyProperty\"" <: Cenum end
            const CXPrintingPolicyProperty = var"c\"enum CXPrintingPolicyProperty\""
            export var"c\"enum CXPrintingPolicyProperty\""
            export CXPrintingPolicyProperty
            var"c\"enum CXPrintingPolicyProperty\""
        end
        begin
            primitive type var"(c\"enum CXPrintingPolicyProperty\")" <: var"c\"enum CXPrintingPolicyProperty\"" 32 end
            (::(Type){var"(c\"enum CXPrintingPolicyProperty\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXPrintingPolicyProperty\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXPrintingPolicyProperty\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXPrintingPolicy_Indentation\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressSpecifiers\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressTagKeyword\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXPrintingPolicy_IncludeTagDefinition\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressScope\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressUnwrittenScope\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressInitializers\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXPrintingPolicy_ConstantArraySizeAsWritten\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXPrintingPolicy_AnonymousTagLocations\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressStrongLifetime\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressLifetimeQualifiers\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXPrintingPolicy_Bool\""), 0x000000000000000c}, C.Tuple{Symbol("c\"CXPrintingPolicy_Restrict\""), 0x000000000000000d}, C.Tuple{Symbol("c\"CXPrintingPolicy_Alignof\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXPrintingPolicy_UnderscoreAlignof\""), 0x000000000000000f}, C.Tuple{Symbol("c\"CXPrintingPolicy_UseVoidForZeroParams\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXPrintingPolicy_TerseOutput\""), 0x0000000000000011}, C.Tuple{Symbol("c\"CXPrintingPolicy_PolishForDeclaration\""), 0x0000000000000012}, C.Tuple{Symbol("c\"CXPrintingPolicy_Half\""), 0x0000000000000013}, C.Tuple{Symbol("c\"CXPrintingPolicy_MSWChar\""), 0x0000000000000014}, C.Tuple{Symbol("c\"CXPrintingPolicy_IncludeNewlines\""), 0x0000000000000015}, C.Tuple{Symbol("c\"CXPrintingPolicy_MSVCFormatting\""), 0x0000000000000016}, C.Tuple{Symbol("c\"CXPrintingPolicy_ConstantsAsWritten\""), 0x0000000000000017}, C.Tuple{Symbol("c\"CXPrintingPolicy_SuppressImplicitBase\""), 0x0000000000000018}, C.Tuple{Symbol("c\"CXPrintingPolicy_FullyQualifiedName\""), 0x0000000000000019}, C.Tuple{Symbol("c\"CXPrintingPolicy_LastProperty\""), 0x0000000000000019}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXPrintingPolicyProperty\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXPrintingPolicyProperty\")"}) = begin
                    var"(c\"enum CXPrintingPolicyProperty\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXPrintingPolicyProperty\""}) = begin
                    var"(c\"enum CXPrintingPolicyProperty\")"
                end
            const var"c\"CXPrintingPolicy_Indentation\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000000)
            const var"c\"CXPrintingPolicy_SuppressSpecifiers\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000001)
            const var"c\"CXPrintingPolicy_SuppressTagKeyword\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000002)
            const var"c\"CXPrintingPolicy_IncludeTagDefinition\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000003)
            const var"c\"CXPrintingPolicy_SuppressScope\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000004)
            const var"c\"CXPrintingPolicy_SuppressUnwrittenScope\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000005)
            const var"c\"CXPrintingPolicy_SuppressInitializers\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000006)
            const var"c\"CXPrintingPolicy_ConstantArraySizeAsWritten\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000007)
            const var"c\"CXPrintingPolicy_AnonymousTagLocations\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000008)
            const var"c\"CXPrintingPolicy_SuppressStrongLifetime\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000009)
            const var"c\"CXPrintingPolicy_SuppressLifetimeQualifiers\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x000000000000000a)
            const var"c\"CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x000000000000000b)
            const var"c\"CXPrintingPolicy_Bool\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x000000000000000c)
            const var"c\"CXPrintingPolicy_Restrict\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x000000000000000d)
            const var"c\"CXPrintingPolicy_Alignof\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x000000000000000e)
            const var"c\"CXPrintingPolicy_UnderscoreAlignof\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x000000000000000f)
            const var"c\"CXPrintingPolicy_UseVoidForZeroParams\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000010)
            const var"c\"CXPrintingPolicy_TerseOutput\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000011)
            const var"c\"CXPrintingPolicy_PolishForDeclaration\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000012)
            const var"c\"CXPrintingPolicy_Half\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000013)
            const var"c\"CXPrintingPolicy_MSWChar\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000014)
            const var"c\"CXPrintingPolicy_IncludeNewlines\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000015)
            const var"c\"CXPrintingPolicy_MSVCFormatting\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000016)
            const var"c\"CXPrintingPolicy_ConstantsAsWritten\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000017)
            const var"c\"CXPrintingPolicy_SuppressImplicitBase\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000018)
            const var"c\"CXPrintingPolicy_FullyQualifiedName\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000019)
            const var"c\"CXPrintingPolicy_LastProperty\"" = var"(c\"enum CXPrintingPolicyProperty\")"(0x0000000000000019)
            const CXPrintingPolicyProperty = var"c\"enum CXPrintingPolicyProperty\""
            const CXPrintingPolicy_Indentation = var"c\"CXPrintingPolicy_Indentation\""
            const CXPrintingPolicy_SuppressSpecifiers = var"c\"CXPrintingPolicy_SuppressSpecifiers\""
            const CXPrintingPolicy_SuppressTagKeyword = var"c\"CXPrintingPolicy_SuppressTagKeyword\""
            const CXPrintingPolicy_IncludeTagDefinition = var"c\"CXPrintingPolicy_IncludeTagDefinition\""
            const CXPrintingPolicy_SuppressScope = var"c\"CXPrintingPolicy_SuppressScope\""
            const CXPrintingPolicy_SuppressUnwrittenScope = var"c\"CXPrintingPolicy_SuppressUnwrittenScope\""
            const CXPrintingPolicy_SuppressInitializers = var"c\"CXPrintingPolicy_SuppressInitializers\""
            const CXPrintingPolicy_ConstantArraySizeAsWritten = var"c\"CXPrintingPolicy_ConstantArraySizeAsWritten\""
            const CXPrintingPolicy_AnonymousTagLocations = var"c\"CXPrintingPolicy_AnonymousTagLocations\""
            const CXPrintingPolicy_SuppressStrongLifetime = var"c\"CXPrintingPolicy_SuppressStrongLifetime\""
            const CXPrintingPolicy_SuppressLifetimeQualifiers = var"c\"CXPrintingPolicy_SuppressLifetimeQualifiers\""
            const CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors = var"c\"CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors\""
            const CXPrintingPolicy_Bool = var"c\"CXPrintingPolicy_Bool\""
            const CXPrintingPolicy_Restrict = var"c\"CXPrintingPolicy_Restrict\""
            const CXPrintingPolicy_Alignof = var"c\"CXPrintingPolicy_Alignof\""
            const CXPrintingPolicy_UnderscoreAlignof = var"c\"CXPrintingPolicy_UnderscoreAlignof\""
            const CXPrintingPolicy_UseVoidForZeroParams = var"c\"CXPrintingPolicy_UseVoidForZeroParams\""
            const CXPrintingPolicy_TerseOutput = var"c\"CXPrintingPolicy_TerseOutput\""
            const CXPrintingPolicy_PolishForDeclaration = var"c\"CXPrintingPolicy_PolishForDeclaration\""
            const CXPrintingPolicy_Half = var"c\"CXPrintingPolicy_Half\""
            const CXPrintingPolicy_MSWChar = var"c\"CXPrintingPolicy_MSWChar\""
            const CXPrintingPolicy_IncludeNewlines = var"c\"CXPrintingPolicy_IncludeNewlines\""
            const CXPrintingPolicy_MSVCFormatting = var"c\"CXPrintingPolicy_MSVCFormatting\""
            const CXPrintingPolicy_ConstantsAsWritten = var"c\"CXPrintingPolicy_ConstantsAsWritten\""
            const CXPrintingPolicy_SuppressImplicitBase = var"c\"CXPrintingPolicy_SuppressImplicitBase\""
            const CXPrintingPolicy_FullyQualifiedName = var"c\"CXPrintingPolicy_FullyQualifiedName\""
            const CXPrintingPolicy_LastProperty = var"c\"CXPrintingPolicy_LastProperty\""
            export var"c\"enum CXPrintingPolicyProperty\"", var"(c\"enum CXPrintingPolicyProperty\")", var"c\"CXPrintingPolicy_Indentation\"", var"c\"CXPrintingPolicy_SuppressSpecifiers\"", var"c\"CXPrintingPolicy_SuppressTagKeyword\"", var"c\"CXPrintingPolicy_IncludeTagDefinition\"", var"c\"CXPrintingPolicy_SuppressScope\"", var"c\"CXPrintingPolicy_SuppressUnwrittenScope\"", var"c\"CXPrintingPolicy_SuppressInitializers\"", var"c\"CXPrintingPolicy_ConstantArraySizeAsWritten\"", var"c\"CXPrintingPolicy_AnonymousTagLocations\"", var"c\"CXPrintingPolicy_SuppressStrongLifetime\"", var"c\"CXPrintingPolicy_SuppressLifetimeQualifiers\"", var"c\"CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors\"", var"c\"CXPrintingPolicy_Bool\"", var"c\"CXPrintingPolicy_Restrict\"", var"c\"CXPrintingPolicy_Alignof\"", var"c\"CXPrintingPolicy_UnderscoreAlignof\"", var"c\"CXPrintingPolicy_UseVoidForZeroParams\"", var"c\"CXPrintingPolicy_TerseOutput\"", var"c\"CXPrintingPolicy_PolishForDeclaration\"", var"c\"CXPrintingPolicy_Half\"", var"c\"CXPrintingPolicy_MSWChar\"", var"c\"CXPrintingPolicy_IncludeNewlines\"", var"c\"CXPrintingPolicy_MSVCFormatting\"", var"c\"CXPrintingPolicy_ConstantsAsWritten\"", var"c\"CXPrintingPolicy_SuppressImplicitBase\"", var"c\"CXPrintingPolicy_FullyQualifiedName\"", var"c\"CXPrintingPolicy_LastProperty\""
            export CXPrintingPolicyProperty, CXPrintingPolicy_Indentation, CXPrintingPolicy_SuppressSpecifiers, CXPrintingPolicy_SuppressTagKeyword, CXPrintingPolicy_IncludeTagDefinition, CXPrintingPolicy_SuppressScope, CXPrintingPolicy_SuppressUnwrittenScope, CXPrintingPolicy_SuppressInitializers, CXPrintingPolicy_ConstantArraySizeAsWritten, CXPrintingPolicy_AnonymousTagLocations, CXPrintingPolicy_SuppressStrongLifetime, CXPrintingPolicy_SuppressLifetimeQualifiers, CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors, CXPrintingPolicy_Bool, CXPrintingPolicy_Restrict, CXPrintingPolicy_Alignof, CXPrintingPolicy_UnderscoreAlignof, CXPrintingPolicy_UseVoidForZeroParams, CXPrintingPolicy_TerseOutput, CXPrintingPolicy_PolishForDeclaration, CXPrintingPolicy_Half, CXPrintingPolicy_MSWChar, CXPrintingPolicy_IncludeNewlines, CXPrintingPolicy_MSVCFormatting, CXPrintingPolicy_ConstantsAsWritten, CXPrintingPolicy_SuppressImplicitBase, CXPrintingPolicy_FullyQualifiedName, CXPrintingPolicy_LastProperty
            var"c\"enum CXPrintingPolicyProperty\""
        end
        begin
            const var"c\"clang_PrintingPolicy_getProperty\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXPrintingPolicy\"", var"c\"enum CXPrintingPolicyProperty\""}, :cdecl}, libpath, :clang_PrintingPolicy_getProperty}()
            (func::C.typeof(var"c\"clang_PrintingPolicy_getProperty\""))(var"c\"Policy\"", var"c\"Property\"") = begin
                    C.funccall(func, var"c\"Policy\"", var"c\"Property\"")
                end
            const clang_PrintingPolicy_getProperty = var"c\"clang_PrintingPolicy_getProperty\""
            export var"c\"clang_PrintingPolicy_getProperty\""
            export clang_PrintingPolicy_getProperty
            var"c\"clang_PrintingPolicy_getProperty\""
        end
        begin
            const var"c\"clang_PrintingPolicy_setProperty\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXPrintingPolicy\"", var"c\"enum CXPrintingPolicyProperty\"", C.Cuint}, :cdecl}, libpath, :clang_PrintingPolicy_setProperty}()
            (func::C.typeof(var"c\"clang_PrintingPolicy_setProperty\""))(var"c\"Policy\"", var"c\"Property\"", var"c\"Value\"") = begin
                    C.funccall(func, var"c\"Policy\"", var"c\"Property\"", var"c\"Value\"")
                end
            const clang_PrintingPolicy_setProperty = var"c\"clang_PrintingPolicy_setProperty\""
            export var"c\"clang_PrintingPolicy_setProperty\""
            export clang_PrintingPolicy_setProperty
            var"c\"clang_PrintingPolicy_setProperty\""
        end
        begin
            const var"c\"clang_getCursorPrintingPolicy\"" = C.Cbinding{C.Cfunction{var"c\"CXPrintingPolicy\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorPrintingPolicy}()
            (func::C.typeof(var"c\"clang_getCursorPrintingPolicy\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorPrintingPolicy = var"c\"clang_getCursorPrintingPolicy\""
            export var"c\"clang_getCursorPrintingPolicy\""
            export clang_getCursorPrintingPolicy
            var"c\"clang_getCursorPrintingPolicy\""
        end
        begin
            const var"c\"clang_PrintingPolicy_dispose\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXPrintingPolicy\""}, :cdecl}, libpath, :clang_PrintingPolicy_dispose}()
            (func::C.typeof(var"c\"clang_PrintingPolicy_dispose\""))(var"c\"Policy\"") = begin
                    C.funccall(func, var"c\"Policy\"")
                end
            const clang_PrintingPolicy_dispose = var"c\"clang_PrintingPolicy_dispose\""
            export var"c\"clang_PrintingPolicy_dispose\""
            export clang_PrintingPolicy_dispose
            var"c\"clang_PrintingPolicy_dispose\""
        end
        begin
            const var"c\"clang_getCursorPrettyPrinted\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\"", var"c\"CXPrintingPolicy\""}, :cdecl}, libpath, :clang_getCursorPrettyPrinted}()
            (func::C.typeof(var"c\"clang_getCursorPrettyPrinted\""))(var"c\"Cursor\"", var"c\"Policy\"") = begin
                    C.funccall(func, var"c\"Cursor\"", var"c\"Policy\"")
                end
            const clang_getCursorPrettyPrinted = var"c\"clang_getCursorPrettyPrinted\""
            export var"c\"clang_getCursorPrettyPrinted\""
            export clang_getCursorPrettyPrinted
            var"c\"clang_getCursorPrettyPrinted\""
        end
        begin
            const var"c\"clang_getCursorDisplayName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorDisplayName}()
            (func::C.typeof(var"c\"clang_getCursorDisplayName\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorDisplayName = var"c\"clang_getCursorDisplayName\""
            export var"c\"clang_getCursorDisplayName\""
            export clang_getCursorDisplayName
            var"c\"clang_getCursorDisplayName\""
        end
        begin
            const var"c\"clang_getCursorReferenced\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorReferenced}()
            (func::C.typeof(var"c\"clang_getCursorReferenced\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorReferenced = var"c\"clang_getCursorReferenced\""
            export var"c\"clang_getCursorReferenced\""
            export clang_getCursorReferenced
            var"c\"clang_getCursorReferenced\""
        end
        begin
            const var"c\"clang_getCursorDefinition\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorDefinition}()
            (func::C.typeof(var"c\"clang_getCursorDefinition\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCursorDefinition = var"c\"clang_getCursorDefinition\""
            export var"c\"clang_getCursorDefinition\""
            export clang_getCursorDefinition
            var"c\"clang_getCursorDefinition\""
        end
        begin
            const var"c\"clang_isCursorDefinition\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_isCursorDefinition}()
            (func::C.typeof(var"c\"clang_isCursorDefinition\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_isCursorDefinition = var"c\"clang_isCursorDefinition\""
            export var"c\"clang_isCursorDefinition\""
            export clang_isCursorDefinition
            var"c\"clang_isCursorDefinition\""
        end
        begin
            const var"c\"clang_getCanonicalCursor\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCanonicalCursor}()
            (func::C.typeof(var"c\"clang_getCanonicalCursor\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getCanonicalCursor = var"c\"clang_getCanonicalCursor\""
            export var"c\"clang_getCanonicalCursor\""
            export clang_getCanonicalCursor
            var"c\"clang_getCanonicalCursor\""
        end
        begin
            const var"c\"clang_Cursor_getObjCSelectorIndex\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getObjCSelectorIndex}()
            (func::C.typeof(var"c\"clang_Cursor_getObjCSelectorIndex\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_Cursor_getObjCSelectorIndex = var"c\"clang_Cursor_getObjCSelectorIndex\""
            export var"c\"clang_Cursor_getObjCSelectorIndex\""
            export clang_Cursor_getObjCSelectorIndex
            var"c\"clang_Cursor_getObjCSelectorIndex\""
        end
        begin
            const var"c\"clang_Cursor_isDynamicCall\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isDynamicCall}()
            (func::C.typeof(var"c\"clang_Cursor_isDynamicCall\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isDynamicCall = var"c\"clang_Cursor_isDynamicCall\""
            export var"c\"clang_Cursor_isDynamicCall\""
            export clang_Cursor_isDynamicCall
            var"c\"clang_Cursor_isDynamicCall\""
        end
        begin
            const var"c\"clang_Cursor_getReceiverType\"" = C.Cbinding{C.Cfunction{var"c\"CXType\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getReceiverType}()
            (func::C.typeof(var"c\"clang_Cursor_getReceiverType\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getReceiverType = var"c\"clang_Cursor_getReceiverType\""
            export var"c\"clang_Cursor_getReceiverType\""
            export clang_Cursor_getReceiverType
            var"c\"clang_Cursor_getReceiverType\""
        end
        begin
            abstract type var"c\"CXObjCPropertyAttrKind\"" <: Cenum end
            const CXObjCPropertyAttrKind = var"c\"CXObjCPropertyAttrKind\""
            export var"c\"CXObjCPropertyAttrKind\""
            export CXObjCPropertyAttrKind
            var"c\"CXObjCPropertyAttrKind\""
        end
        begin
            primitive type var"(c\"CXObjCPropertyAttrKind\")" <: var"c\"CXObjCPropertyAttrKind\"" 32 end
            (::(Type){var"(c\"CXObjCPropertyAttrKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXObjCPropertyAttrKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXObjCPropertyAttrKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXObjCPropertyAttr_noattr\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_readonly\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_getter\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_assign\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_readwrite\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_retain\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_copy\""), 0x0000000000000020}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_nonatomic\""), 0x0000000000000040}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_setter\""), 0x0000000000000080}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_atomic\""), 0x0000000000000100}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_weak\""), 0x0000000000000200}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_strong\""), 0x0000000000000400}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_unsafe_unretained\""), 0x0000000000000800}, C.Tuple{Symbol("c\"CXObjCPropertyAttr_class\""), 0x0000000000001000}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXObjCPropertyAttrKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXObjCPropertyAttrKind\")"}) = begin
                    var"(c\"CXObjCPropertyAttrKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXObjCPropertyAttrKind\""}) = begin
                    var"(c\"CXObjCPropertyAttrKind\")"
                end
            const var"c\"CXObjCPropertyAttr_noattr\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000000)
            const var"c\"CXObjCPropertyAttr_readonly\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000001)
            const var"c\"CXObjCPropertyAttr_getter\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000002)
            const var"c\"CXObjCPropertyAttr_assign\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000004)
            const var"c\"CXObjCPropertyAttr_readwrite\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000008)
            const var"c\"CXObjCPropertyAttr_retain\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000010)
            const var"c\"CXObjCPropertyAttr_copy\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000020)
            const var"c\"CXObjCPropertyAttr_nonatomic\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000040)
            const var"c\"CXObjCPropertyAttr_setter\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000080)
            const var"c\"CXObjCPropertyAttr_atomic\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000100)
            const var"c\"CXObjCPropertyAttr_weak\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000200)
            const var"c\"CXObjCPropertyAttr_strong\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000400)
            const var"c\"CXObjCPropertyAttr_unsafe_unretained\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000000800)
            const var"c\"CXObjCPropertyAttr_class\"" = var"(c\"CXObjCPropertyAttrKind\")"(0x0000000000001000)
            const CXObjCPropertyAttrKind = var"c\"CXObjCPropertyAttrKind\""
            const CXObjCPropertyAttr_noattr = var"c\"CXObjCPropertyAttr_noattr\""
            const CXObjCPropertyAttr_readonly = var"c\"CXObjCPropertyAttr_readonly\""
            const CXObjCPropertyAttr_getter = var"c\"CXObjCPropertyAttr_getter\""
            const CXObjCPropertyAttr_assign = var"c\"CXObjCPropertyAttr_assign\""
            const CXObjCPropertyAttr_readwrite = var"c\"CXObjCPropertyAttr_readwrite\""
            const CXObjCPropertyAttr_retain = var"c\"CXObjCPropertyAttr_retain\""
            const CXObjCPropertyAttr_copy = var"c\"CXObjCPropertyAttr_copy\""
            const CXObjCPropertyAttr_nonatomic = var"c\"CXObjCPropertyAttr_nonatomic\""
            const CXObjCPropertyAttr_setter = var"c\"CXObjCPropertyAttr_setter\""
            const CXObjCPropertyAttr_atomic = var"c\"CXObjCPropertyAttr_atomic\""
            const CXObjCPropertyAttr_weak = var"c\"CXObjCPropertyAttr_weak\""
            const CXObjCPropertyAttr_strong = var"c\"CXObjCPropertyAttr_strong\""
            const CXObjCPropertyAttr_unsafe_unretained = var"c\"CXObjCPropertyAttr_unsafe_unretained\""
            const CXObjCPropertyAttr_class = var"c\"CXObjCPropertyAttr_class\""
            export var"c\"CXObjCPropertyAttrKind\"", var"(c\"CXObjCPropertyAttrKind\")", var"c\"CXObjCPropertyAttr_noattr\"", var"c\"CXObjCPropertyAttr_readonly\"", var"c\"CXObjCPropertyAttr_getter\"", var"c\"CXObjCPropertyAttr_assign\"", var"c\"CXObjCPropertyAttr_readwrite\"", var"c\"CXObjCPropertyAttr_retain\"", var"c\"CXObjCPropertyAttr_copy\"", var"c\"CXObjCPropertyAttr_nonatomic\"", var"c\"CXObjCPropertyAttr_setter\"", var"c\"CXObjCPropertyAttr_atomic\"", var"c\"CXObjCPropertyAttr_weak\"", var"c\"CXObjCPropertyAttr_strong\"", var"c\"CXObjCPropertyAttr_unsafe_unretained\"", var"c\"CXObjCPropertyAttr_class\""
            export CXObjCPropertyAttrKind, CXObjCPropertyAttr_noattr, CXObjCPropertyAttr_readonly, CXObjCPropertyAttr_getter, CXObjCPropertyAttr_assign, CXObjCPropertyAttr_readwrite, CXObjCPropertyAttr_retain, CXObjCPropertyAttr_copy, CXObjCPropertyAttr_nonatomic, CXObjCPropertyAttr_setter, CXObjCPropertyAttr_atomic, CXObjCPropertyAttr_weak, CXObjCPropertyAttr_strong, CXObjCPropertyAttr_unsafe_unretained, CXObjCPropertyAttr_class
            var"c\"CXObjCPropertyAttrKind\""
        end
        begin
        end
        begin
            const var"c\"clang_Cursor_getObjCPropertyAttributes\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\"", C.Cuint}, :cdecl}, libpath, :clang_Cursor_getObjCPropertyAttributes}()
            (func::C.typeof(var"c\"clang_Cursor_getObjCPropertyAttributes\""))(var"c\"C\"", var"c\"reserved\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"reserved\"")
                end
            const clang_Cursor_getObjCPropertyAttributes = var"c\"clang_Cursor_getObjCPropertyAttributes\""
            export var"c\"clang_Cursor_getObjCPropertyAttributes\""
            export clang_Cursor_getObjCPropertyAttributes
            var"c\"clang_Cursor_getObjCPropertyAttributes\""
        end
        begin
            const var"c\"clang_Cursor_getObjCPropertyGetterName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getObjCPropertyGetterName}()
            (func::C.typeof(var"c\"clang_Cursor_getObjCPropertyGetterName\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getObjCPropertyGetterName = var"c\"clang_Cursor_getObjCPropertyGetterName\""
            export var"c\"clang_Cursor_getObjCPropertyGetterName\""
            export clang_Cursor_getObjCPropertyGetterName
            var"c\"clang_Cursor_getObjCPropertyGetterName\""
        end
        begin
            const var"c\"clang_Cursor_getObjCPropertySetterName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getObjCPropertySetterName}()
            (func::C.typeof(var"c\"clang_Cursor_getObjCPropertySetterName\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getObjCPropertySetterName = var"c\"clang_Cursor_getObjCPropertySetterName\""
            export var"c\"clang_Cursor_getObjCPropertySetterName\""
            export clang_Cursor_getObjCPropertySetterName
            var"c\"clang_Cursor_getObjCPropertySetterName\""
        end
        begin
            abstract type var"c\"CXObjCDeclQualifierKind\"" <: Cenum end
            const CXObjCDeclQualifierKind = var"c\"CXObjCDeclQualifierKind\""
            export var"c\"CXObjCDeclQualifierKind\""
            export CXObjCDeclQualifierKind
            var"c\"CXObjCDeclQualifierKind\""
        end
        begin
            primitive type var"(c\"CXObjCDeclQualifierKind\")" <: var"c\"CXObjCDeclQualifierKind\"" 32 end
            (::(Type){var"(c\"CXObjCDeclQualifierKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXObjCDeclQualifierKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXObjCDeclQualifierKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXObjCDeclQualifier_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXObjCDeclQualifier_In\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXObjCDeclQualifier_Inout\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXObjCDeclQualifier_Out\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXObjCDeclQualifier_Bycopy\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXObjCDeclQualifier_Byref\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXObjCDeclQualifier_Oneway\""), 0x0000000000000020}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXObjCDeclQualifierKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXObjCDeclQualifierKind\")"}) = begin
                    var"(c\"CXObjCDeclQualifierKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXObjCDeclQualifierKind\""}) = begin
                    var"(c\"CXObjCDeclQualifierKind\")"
                end
            const var"c\"CXObjCDeclQualifier_None\"" = var"(c\"CXObjCDeclQualifierKind\")"(0x0000000000000000)
            const var"c\"CXObjCDeclQualifier_In\"" = var"(c\"CXObjCDeclQualifierKind\")"(0x0000000000000001)
            const var"c\"CXObjCDeclQualifier_Inout\"" = var"(c\"CXObjCDeclQualifierKind\")"(0x0000000000000002)
            const var"c\"CXObjCDeclQualifier_Out\"" = var"(c\"CXObjCDeclQualifierKind\")"(0x0000000000000004)
            const var"c\"CXObjCDeclQualifier_Bycopy\"" = var"(c\"CXObjCDeclQualifierKind\")"(0x0000000000000008)
            const var"c\"CXObjCDeclQualifier_Byref\"" = var"(c\"CXObjCDeclQualifierKind\")"(0x0000000000000010)
            const var"c\"CXObjCDeclQualifier_Oneway\"" = var"(c\"CXObjCDeclQualifierKind\")"(0x0000000000000020)
            const CXObjCDeclQualifierKind = var"c\"CXObjCDeclQualifierKind\""
            const CXObjCDeclQualifier_None = var"c\"CXObjCDeclQualifier_None\""
            const CXObjCDeclQualifier_In = var"c\"CXObjCDeclQualifier_In\""
            const CXObjCDeclQualifier_Inout = var"c\"CXObjCDeclQualifier_Inout\""
            const CXObjCDeclQualifier_Out = var"c\"CXObjCDeclQualifier_Out\""
            const CXObjCDeclQualifier_Bycopy = var"c\"CXObjCDeclQualifier_Bycopy\""
            const CXObjCDeclQualifier_Byref = var"c\"CXObjCDeclQualifier_Byref\""
            const CXObjCDeclQualifier_Oneway = var"c\"CXObjCDeclQualifier_Oneway\""
            export var"c\"CXObjCDeclQualifierKind\"", var"(c\"CXObjCDeclQualifierKind\")", var"c\"CXObjCDeclQualifier_None\"", var"c\"CXObjCDeclQualifier_In\"", var"c\"CXObjCDeclQualifier_Inout\"", var"c\"CXObjCDeclQualifier_Out\"", var"c\"CXObjCDeclQualifier_Bycopy\"", var"c\"CXObjCDeclQualifier_Byref\"", var"c\"CXObjCDeclQualifier_Oneway\""
            export CXObjCDeclQualifierKind, CXObjCDeclQualifier_None, CXObjCDeclQualifier_In, CXObjCDeclQualifier_Inout, CXObjCDeclQualifier_Out, CXObjCDeclQualifier_Bycopy, CXObjCDeclQualifier_Byref, CXObjCDeclQualifier_Oneway
            var"c\"CXObjCDeclQualifierKind\""
        end
        begin
        end
        begin
            const var"c\"clang_Cursor_getObjCDeclQualifiers\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getObjCDeclQualifiers}()
            (func::C.typeof(var"c\"clang_Cursor_getObjCDeclQualifiers\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getObjCDeclQualifiers = var"c\"clang_Cursor_getObjCDeclQualifiers\""
            export var"c\"clang_Cursor_getObjCDeclQualifiers\""
            export clang_Cursor_getObjCDeclQualifiers
            var"c\"clang_Cursor_getObjCDeclQualifiers\""
        end
        begin
            const var"c\"clang_Cursor_isObjCOptional\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isObjCOptional}()
            (func::C.typeof(var"c\"clang_Cursor_isObjCOptional\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isObjCOptional = var"c\"clang_Cursor_isObjCOptional\""
            export var"c\"clang_Cursor_isObjCOptional\""
            export clang_Cursor_isObjCOptional
            var"c\"clang_Cursor_isObjCOptional\""
        end
        begin
            const var"c\"clang_Cursor_isVariadic\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_isVariadic}()
            (func::C.typeof(var"c\"clang_Cursor_isVariadic\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_isVariadic = var"c\"clang_Cursor_isVariadic\""
            export var"c\"clang_Cursor_isVariadic\""
            export clang_Cursor_isVariadic
            var"c\"clang_Cursor_isVariadic\""
        end
        begin
            const var"c\"clang_Cursor_isExternalSymbol\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\"", C.Cptr{var"c\"CXString\""}, C.Cptr{var"c\"CXString\""}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_Cursor_isExternalSymbol}()
            (func::C.typeof(var"c\"clang_Cursor_isExternalSymbol\""))(var"c\"C\"", var"c\"language\"", var"c\"definedIn\"", var"c\"isGenerated\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"language\"", var"c\"definedIn\"", var"c\"isGenerated\"")
                end
            const clang_Cursor_isExternalSymbol = var"c\"clang_Cursor_isExternalSymbol\""
            export var"c\"clang_Cursor_isExternalSymbol\""
            export clang_Cursor_isExternalSymbol
            var"c\"clang_Cursor_isExternalSymbol\""
        end
        begin
            const var"c\"clang_Cursor_getCommentRange\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getCommentRange}()
            (func::C.typeof(var"c\"clang_Cursor_getCommentRange\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getCommentRange = var"c\"clang_Cursor_getCommentRange\""
            export var"c\"clang_Cursor_getCommentRange\""
            export clang_Cursor_getCommentRange
            var"c\"clang_Cursor_getCommentRange\""
        end
        begin
            const var"c\"clang_Cursor_getRawCommentText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getRawCommentText}()
            (func::C.typeof(var"c\"clang_Cursor_getRawCommentText\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getRawCommentText = var"c\"clang_Cursor_getRawCommentText\""
            export var"c\"clang_Cursor_getRawCommentText\""
            export clang_Cursor_getRawCommentText
            var"c\"clang_Cursor_getRawCommentText\""
        end
        begin
            const var"c\"clang_Cursor_getBriefCommentText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getBriefCommentText}()
            (func::C.typeof(var"c\"clang_Cursor_getBriefCommentText\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getBriefCommentText = var"c\"clang_Cursor_getBriefCommentText\""
            export var"c\"clang_Cursor_getBriefCommentText\""
            export clang_Cursor_getBriefCommentText
            var"c\"clang_Cursor_getBriefCommentText\""
        end
        begin
            const var"c\"clang_Cursor_getMangling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getMangling}()
            (func::C.typeof(var"c\"clang_Cursor_getMangling\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_Cursor_getMangling = var"c\"clang_Cursor_getMangling\""
            export var"c\"clang_Cursor_getMangling\""
            export clang_Cursor_getMangling
            var"c\"clang_Cursor_getMangling\""
        end
        begin
            const var"c\"clang_Cursor_getCXXManglings\"" = C.Cbinding{C.Cfunction{C.Cptr{var"c\"CXStringSet\""}, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getCXXManglings}()
            (func::C.typeof(var"c\"clang_Cursor_getCXXManglings\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_Cursor_getCXXManglings = var"c\"clang_Cursor_getCXXManglings\""
            export var"c\"clang_Cursor_getCXXManglings\""
            export clang_Cursor_getCXXManglings
            var"c\"clang_Cursor_getCXXManglings\""
        end
        begin
            const var"c\"clang_Cursor_getObjCManglings\"" = C.Cbinding{C.Cfunction{C.Cptr{var"c\"CXStringSet\""}, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getObjCManglings}()
            (func::C.typeof(var"c\"clang_Cursor_getObjCManglings\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_Cursor_getObjCManglings = var"c\"clang_Cursor_getObjCManglings\""
            export var"c\"clang_Cursor_getObjCManglings\""
            export clang_Cursor_getObjCManglings
            var"c\"clang_Cursor_getObjCManglings\""
        end
        begin
            const var"c\"CXModule\"" = C.Cptr{C.Cvoid}
            const CXModule = var"c\"CXModule\""
            export var"c\"CXModule\""
            export CXModule
            var"c\"CXModule\""
        end
        begin
            const var"c\"clang_Cursor_getModule\"" = C.Cbinding{C.Cfunction{var"c\"CXModule\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getModule}()
            (func::C.typeof(var"c\"clang_Cursor_getModule\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getModule = var"c\"clang_Cursor_getModule\""
            export var"c\"clang_Cursor_getModule\""
            export clang_Cursor_getModule
            var"c\"clang_Cursor_getModule\""
        end
        begin
            const var"c\"clang_getModuleForFile\"" = C.Cbinding{C.Cfunction{var"c\"CXModule\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXFile\""}, :cdecl}, libpath, :clang_getModuleForFile}()
            (func::C.typeof(var"c\"clang_getModuleForFile\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_getModuleForFile = var"c\"clang_getModuleForFile\""
            export var"c\"clang_getModuleForFile\""
            export clang_getModuleForFile
            var"c\"clang_getModuleForFile\""
        end
        begin
            const var"c\"clang_Module_getASTFile\"" = C.Cbinding{C.Cfunction{var"c\"CXFile\"", C.Tuple{var"c\"CXModule\""}, :cdecl}, libpath, :clang_Module_getASTFile}()
            (func::C.typeof(var"c\"clang_Module_getASTFile\""))(var"c\"Module\"") = begin
                    C.funccall(func, var"c\"Module\"")
                end
            const clang_Module_getASTFile = var"c\"clang_Module_getASTFile\""
            export var"c\"clang_Module_getASTFile\""
            export clang_Module_getASTFile
            var"c\"clang_Module_getASTFile\""
        end
        begin
            const var"c\"clang_Module_getParent\"" = C.Cbinding{C.Cfunction{var"c\"CXModule\"", C.Tuple{var"c\"CXModule\""}, :cdecl}, libpath, :clang_Module_getParent}()
            (func::C.typeof(var"c\"clang_Module_getParent\""))(var"c\"Module\"") = begin
                    C.funccall(func, var"c\"Module\"")
                end
            const clang_Module_getParent = var"c\"clang_Module_getParent\""
            export var"c\"clang_Module_getParent\""
            export clang_Module_getParent
            var"c\"clang_Module_getParent\""
        end
        begin
            const var"c\"clang_Module_getName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXModule\""}, :cdecl}, libpath, :clang_Module_getName}()
            (func::C.typeof(var"c\"clang_Module_getName\""))(var"c\"Module\"") = begin
                    C.funccall(func, var"c\"Module\"")
                end
            const clang_Module_getName = var"c\"clang_Module_getName\""
            export var"c\"clang_Module_getName\""
            export clang_Module_getName
            var"c\"clang_Module_getName\""
        end
        begin
            const var"c\"clang_Module_getFullName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXModule\""}, :cdecl}, libpath, :clang_Module_getFullName}()
            (func::C.typeof(var"c\"clang_Module_getFullName\""))(var"c\"Module\"") = begin
                    C.funccall(func, var"c\"Module\"")
                end
            const clang_Module_getFullName = var"c\"clang_Module_getFullName\""
            export var"c\"clang_Module_getFullName\""
            export clang_Module_getFullName
            var"c\"clang_Module_getFullName\""
        end
        begin
            const var"c\"clang_Module_isSystem\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXModule\""}, :cdecl}, libpath, :clang_Module_isSystem}()
            (func::C.typeof(var"c\"clang_Module_isSystem\""))(var"c\"Module\"") = begin
                    C.funccall(func, var"c\"Module\"")
                end
            const clang_Module_isSystem = var"c\"clang_Module_isSystem\""
            export var"c\"clang_Module_isSystem\""
            export clang_Module_isSystem
            var"c\"clang_Module_isSystem\""
        end
        begin
            const var"c\"clang_Module_getNumTopLevelHeaders\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXModule\""}, :cdecl}, libpath, :clang_Module_getNumTopLevelHeaders}()
            (func::C.typeof(var"c\"clang_Module_getNumTopLevelHeaders\""))(arg1, var"c\"Module\"") = begin
                    C.funccall(func, arg1, var"c\"Module\"")
                end
            const clang_Module_getNumTopLevelHeaders = var"c\"clang_Module_getNumTopLevelHeaders\""
            export var"c\"clang_Module_getNumTopLevelHeaders\""
            export clang_Module_getNumTopLevelHeaders
            var"c\"clang_Module_getNumTopLevelHeaders\""
        end
        begin
            const var"c\"clang_Module_getTopLevelHeader\"" = C.Cbinding{C.Cfunction{var"c\"CXFile\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXModule\"", C.Cuint}, :cdecl}, libpath, :clang_Module_getTopLevelHeader}()
            (func::C.typeof(var"c\"clang_Module_getTopLevelHeader\""))(arg1, var"c\"Module\"", var"c\"Index\"") = begin
                    C.funccall(func, arg1, var"c\"Module\"", var"c\"Index\"")
                end
            const clang_Module_getTopLevelHeader = var"c\"clang_Module_getTopLevelHeader\""
            export var"c\"clang_Module_getTopLevelHeader\""
            export clang_Module_getTopLevelHeader
            var"c\"clang_Module_getTopLevelHeader\""
        end
        begin
            const var"c\"clang_CXXConstructor_isConvertingConstructor\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXConstructor_isConvertingConstructor}()
            (func::C.typeof(var"c\"clang_CXXConstructor_isConvertingConstructor\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXConstructor_isConvertingConstructor = var"c\"clang_CXXConstructor_isConvertingConstructor\""
            export var"c\"clang_CXXConstructor_isConvertingConstructor\""
            export clang_CXXConstructor_isConvertingConstructor
            var"c\"clang_CXXConstructor_isConvertingConstructor\""
        end
        begin
            const var"c\"clang_CXXConstructor_isCopyConstructor\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXConstructor_isCopyConstructor}()
            (func::C.typeof(var"c\"clang_CXXConstructor_isCopyConstructor\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXConstructor_isCopyConstructor = var"c\"clang_CXXConstructor_isCopyConstructor\""
            export var"c\"clang_CXXConstructor_isCopyConstructor\""
            export clang_CXXConstructor_isCopyConstructor
            var"c\"clang_CXXConstructor_isCopyConstructor\""
        end
        begin
            const var"c\"clang_CXXConstructor_isDefaultConstructor\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXConstructor_isDefaultConstructor}()
            (func::C.typeof(var"c\"clang_CXXConstructor_isDefaultConstructor\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXConstructor_isDefaultConstructor = var"c\"clang_CXXConstructor_isDefaultConstructor\""
            export var"c\"clang_CXXConstructor_isDefaultConstructor\""
            export clang_CXXConstructor_isDefaultConstructor
            var"c\"clang_CXXConstructor_isDefaultConstructor\""
        end
        begin
            const var"c\"clang_CXXConstructor_isMoveConstructor\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXConstructor_isMoveConstructor}()
            (func::C.typeof(var"c\"clang_CXXConstructor_isMoveConstructor\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXConstructor_isMoveConstructor = var"c\"clang_CXXConstructor_isMoveConstructor\""
            export var"c\"clang_CXXConstructor_isMoveConstructor\""
            export clang_CXXConstructor_isMoveConstructor
            var"c\"clang_CXXConstructor_isMoveConstructor\""
        end
        begin
            const var"c\"clang_CXXField_isMutable\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXField_isMutable}()
            (func::C.typeof(var"c\"clang_CXXField_isMutable\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXField_isMutable = var"c\"clang_CXXField_isMutable\""
            export var"c\"clang_CXXField_isMutable\""
            export clang_CXXField_isMutable
            var"c\"clang_CXXField_isMutable\""
        end
        begin
            const var"c\"clang_CXXMethod_isDefaulted\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXMethod_isDefaulted}()
            (func::C.typeof(var"c\"clang_CXXMethod_isDefaulted\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXMethod_isDefaulted = var"c\"clang_CXXMethod_isDefaulted\""
            export var"c\"clang_CXXMethod_isDefaulted\""
            export clang_CXXMethod_isDefaulted
            var"c\"clang_CXXMethod_isDefaulted\""
        end
        begin
            const var"c\"clang_CXXMethod_isPureVirtual\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXMethod_isPureVirtual}()
            (func::C.typeof(var"c\"clang_CXXMethod_isPureVirtual\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXMethod_isPureVirtual = var"c\"clang_CXXMethod_isPureVirtual\""
            export var"c\"clang_CXXMethod_isPureVirtual\""
            export clang_CXXMethod_isPureVirtual
            var"c\"clang_CXXMethod_isPureVirtual\""
        end
        begin
            const var"c\"clang_CXXMethod_isStatic\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXMethod_isStatic}()
            (func::C.typeof(var"c\"clang_CXXMethod_isStatic\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXMethod_isStatic = var"c\"clang_CXXMethod_isStatic\""
            export var"c\"clang_CXXMethod_isStatic\""
            export clang_CXXMethod_isStatic
            var"c\"clang_CXXMethod_isStatic\""
        end
        begin
            const var"c\"clang_CXXMethod_isVirtual\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXMethod_isVirtual}()
            (func::C.typeof(var"c\"clang_CXXMethod_isVirtual\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXMethod_isVirtual = var"c\"clang_CXXMethod_isVirtual\""
            export var"c\"clang_CXXMethod_isVirtual\""
            export clang_CXXMethod_isVirtual
            var"c\"clang_CXXMethod_isVirtual\""
        end
        begin
            const var"c\"clang_CXXRecord_isAbstract\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXRecord_isAbstract}()
            (func::C.typeof(var"c\"clang_CXXRecord_isAbstract\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXRecord_isAbstract = var"c\"clang_CXXRecord_isAbstract\""
            export var"c\"clang_CXXRecord_isAbstract\""
            export clang_CXXRecord_isAbstract
            var"c\"clang_CXXRecord_isAbstract\""
        end
        begin
            const var"c\"clang_EnumDecl_isScoped\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_EnumDecl_isScoped}()
            (func::C.typeof(var"c\"clang_EnumDecl_isScoped\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_EnumDecl_isScoped = var"c\"clang_EnumDecl_isScoped\""
            export var"c\"clang_EnumDecl_isScoped\""
            export clang_EnumDecl_isScoped
            var"c\"clang_EnumDecl_isScoped\""
        end
        begin
            const var"c\"clang_CXXMethod_isConst\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_CXXMethod_isConst}()
            (func::C.typeof(var"c\"clang_CXXMethod_isConst\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_CXXMethod_isConst = var"c\"clang_CXXMethod_isConst\""
            export var"c\"clang_CXXMethod_isConst\""
            export clang_CXXMethod_isConst
            var"c\"clang_CXXMethod_isConst\""
        end
        begin
            const var"c\"clang_getTemplateCursorKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCursorKind\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getTemplateCursorKind}()
            (func::C.typeof(var"c\"clang_getTemplateCursorKind\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getTemplateCursorKind = var"c\"clang_getTemplateCursorKind\""
            export var"c\"clang_getTemplateCursorKind\""
            export clang_getTemplateCursorKind
            var"c\"clang_getTemplateCursorKind\""
        end
        begin
            const var"c\"clang_getSpecializedCursorTemplate\"" = C.Cbinding{C.Cfunction{var"c\"CXCursor\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getSpecializedCursorTemplate}()
            (func::C.typeof(var"c\"clang_getSpecializedCursorTemplate\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_getSpecializedCursorTemplate = var"c\"clang_getSpecializedCursorTemplate\""
            export var"c\"clang_getSpecializedCursorTemplate\""
            export clang_getSpecializedCursorTemplate
            var"c\"clang_getSpecializedCursorTemplate\""
        end
        begin
            const var"c\"clang_getCursorReferenceNameRange\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{var"c\"CXCursor\"", C.Cuint, C.Cuint}, :cdecl}, libpath, :clang_getCursorReferenceNameRange}()
            (func::C.typeof(var"c\"clang_getCursorReferenceNameRange\""))(var"c\"C\"", var"c\"NameFlags\"", var"c\"PieceIndex\"") = begin
                    C.funccall(func, var"c\"C\"", var"c\"NameFlags\"", var"c\"PieceIndex\"")
                end
            const clang_getCursorReferenceNameRange = var"c\"clang_getCursorReferenceNameRange\""
            export var"c\"clang_getCursorReferenceNameRange\""
            export clang_getCursorReferenceNameRange
            var"c\"clang_getCursorReferenceNameRange\""
        end
        begin
            abstract type var"c\"enum CXNameRefFlags\"" <: Cenum end
            const CXNameRefFlags = var"c\"enum CXNameRefFlags\""
            export var"c\"enum CXNameRefFlags\""
            export CXNameRefFlags
            var"c\"enum CXNameRefFlags\""
        end
        begin
            primitive type var"(c\"enum CXNameRefFlags\")" <: var"c\"enum CXNameRefFlags\"" 32 end
            (::(Type){var"(c\"enum CXNameRefFlags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXNameRefFlags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXNameRefFlags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXNameRange_WantQualifier\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXNameRange_WantTemplateArgs\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXNameRange_WantSinglePiece\""), 0x0000000000000004}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXNameRefFlags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXNameRefFlags\")"}) = begin
                    var"(c\"enum CXNameRefFlags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXNameRefFlags\""}) = begin
                    var"(c\"enum CXNameRefFlags\")"
                end
            const var"c\"CXNameRange_WantQualifier\"" = var"(c\"enum CXNameRefFlags\")"(0x0000000000000001)
            const var"c\"CXNameRange_WantTemplateArgs\"" = var"(c\"enum CXNameRefFlags\")"(0x0000000000000002)
            const var"c\"CXNameRange_WantSinglePiece\"" = var"(c\"enum CXNameRefFlags\")"(0x0000000000000004)
            const CXNameRefFlags = var"c\"enum CXNameRefFlags\""
            const CXNameRange_WantQualifier = var"c\"CXNameRange_WantQualifier\""
            const CXNameRange_WantTemplateArgs = var"c\"CXNameRange_WantTemplateArgs\""
            const CXNameRange_WantSinglePiece = var"c\"CXNameRange_WantSinglePiece\""
            export var"c\"enum CXNameRefFlags\"", var"(c\"enum CXNameRefFlags\")", var"c\"CXNameRange_WantQualifier\"", var"c\"CXNameRange_WantTemplateArgs\"", var"c\"CXNameRange_WantSinglePiece\""
            export CXNameRefFlags, CXNameRange_WantQualifier, CXNameRange_WantTemplateArgs, CXNameRange_WantSinglePiece
            var"c\"enum CXNameRefFlags\""
        end
        begin
            abstract type var"c\"enum CXTokenKind\"" <: Cenum end
            const CXTokenKind = var"c\"enum CXTokenKind\""
            export var"c\"enum CXTokenKind\""
            export CXTokenKind
            var"c\"enum CXTokenKind\""
        end
        begin
            primitive type var"(c\"enum CXTokenKind\")" <: var"c\"enum CXTokenKind\"" 32 end
            (::(Type){var"(c\"enum CXTokenKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXTokenKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXTokenKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXToken_Punctuation\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXToken_Keyword\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXToken_Identifier\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXToken_Literal\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXToken_Comment\""), 0x0000000000000004}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXTokenKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXTokenKind\")"}) = begin
                    var"(c\"enum CXTokenKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXTokenKind\""}) = begin
                    var"(c\"enum CXTokenKind\")"
                end
            const var"c\"CXToken_Punctuation\"" = var"(c\"enum CXTokenKind\")"(0x0000000000000000)
            const var"c\"CXToken_Keyword\"" = var"(c\"enum CXTokenKind\")"(0x0000000000000001)
            const var"c\"CXToken_Identifier\"" = var"(c\"enum CXTokenKind\")"(0x0000000000000002)
            const var"c\"CXToken_Literal\"" = var"(c\"enum CXTokenKind\")"(0x0000000000000003)
            const var"c\"CXToken_Comment\"" = var"(c\"enum CXTokenKind\")"(0x0000000000000004)
            const CXTokenKind = var"c\"enum CXTokenKind\""
            const CXToken_Punctuation = var"c\"CXToken_Punctuation\""
            const CXToken_Keyword = var"c\"CXToken_Keyword\""
            const CXToken_Identifier = var"c\"CXToken_Identifier\""
            const CXToken_Literal = var"c\"CXToken_Literal\""
            const CXToken_Comment = var"c\"CXToken_Comment\""
            export var"c\"enum CXTokenKind\"", var"(c\"enum CXTokenKind\")", var"c\"CXToken_Punctuation\"", var"c\"CXToken_Keyword\"", var"c\"CXToken_Identifier\"", var"c\"CXToken_Literal\"", var"c\"CXToken_Comment\""
            export CXTokenKind, CXToken_Punctuation, CXToken_Keyword, CXToken_Identifier, CXToken_Literal, CXToken_Comment
            var"c\"enum CXTokenKind\""
        end
        begin
            const var"c\"CXTokenKind\"" = var"c\"enum CXTokenKind\""
            const CXTokenKind = var"c\"CXTokenKind\""
            export var"c\"CXTokenKind\""
            export CXTokenKind
            var"c\"CXTokenKind\""
        end
        begin
            abstract type var"c\"CXToken\"" <: Cstruct end
            const CXToken = var"c\"CXToken\""
            export var"c\"CXToken\""
            export CXToken
            var"c\"CXToken\""
        end
        begin
            struct var"(c\"CXToken\")" <: var"c\"CXToken\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXToken\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXToken\")"}) = begin
                    C.Tuple{C.Tuple{:int_data, C.Tuple{C.Carray{C.Cuint, 4}, C.bitstype(C.Carray{C.Cuint, 4}), C.integraltype(C.Carray{C.Cuint, 4}), 0, 0, -1}}, C.Tuple{:ptr_data, C.Tuple{C.Cptr{C.Cvoid}, C.bitstype(C.Cptr{C.Cvoid}), C.integraltype(C.Cptr{C.Cvoid}), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXToken\")"}) = begin
                    var"(c\"CXToken\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXToken\""}) = begin
                    var"(c\"CXToken\")"
                end
            const CXToken = var"c\"CXToken\""
            export var"c\"CXToken\"", var"(c\"CXToken\")"
            export CXToken
            var"c\"CXToken\""
        end
        begin
        end
        begin
            const var"c\"clang_getToken\"" = C.Cbinding{C.Cfunction{C.Cptr{var"c\"CXToken\""}, C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXSourceLocation\""}, :cdecl}, libpath, :clang_getToken}()
            (func::C.typeof(var"c\"clang_getToken\""))(var"c\"TU\"", var"c\"Location\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"Location\"")
                end
            const clang_getToken = var"c\"clang_getToken\""
            export var"c\"clang_getToken\""
            export clang_getToken
            var"c\"clang_getToken\""
        end
        begin
            const var"c\"clang_getTokenKind\"" = C.Cbinding{C.Cfunction{var"c\"CXTokenKind\"", C.Tuple{var"c\"CXToken\""}, :cdecl}, libpath, :clang_getTokenKind}()
            (func::C.typeof(var"c\"clang_getTokenKind\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_getTokenKind = var"c\"clang_getTokenKind\""
            export var"c\"clang_getTokenKind\""
            export clang_getTokenKind
            var"c\"clang_getTokenKind\""
        end
        begin
            const var"c\"clang_getTokenSpelling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXToken\""}, :cdecl}, libpath, :clang_getTokenSpelling}()
            (func::C.typeof(var"c\"clang_getTokenSpelling\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_getTokenSpelling = var"c\"clang_getTokenSpelling\""
            export var"c\"clang_getTokenSpelling\""
            export clang_getTokenSpelling
            var"c\"clang_getTokenSpelling\""
        end
        begin
            const var"c\"clang_getTokenLocation\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXToken\""}, :cdecl}, libpath, :clang_getTokenLocation}()
            (func::C.typeof(var"c\"clang_getTokenLocation\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_getTokenLocation = var"c\"clang_getTokenLocation\""
            export var"c\"clang_getTokenLocation\""
            export clang_getTokenLocation
            var"c\"clang_getTokenLocation\""
        end
        begin
            const var"c\"clang_getTokenExtent\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceRange\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXToken\""}, :cdecl}, libpath, :clang_getTokenExtent}()
            (func::C.typeof(var"c\"clang_getTokenExtent\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_getTokenExtent = var"c\"clang_getTokenExtent\""
            export var"c\"clang_getTokenExtent\""
            export clang_getTokenExtent
            var"c\"clang_getTokenExtent\""
        end
        begin
            const var"c\"clang_tokenize\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXSourceRange\"", C.Cptr{C.Cptr{var"c\"CXToken\""}}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_tokenize}()
            (func::C.typeof(var"c\"clang_tokenize\""))(var"c\"TU\"", var"c\"Range\"", var"c\"Tokens\"", var"c\"NumTokens\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"Range\"", var"c\"Tokens\"", var"c\"NumTokens\"")
                end
            const clang_tokenize = var"c\"clang_tokenize\""
            export var"c\"clang_tokenize\""
            export clang_tokenize
            var"c\"clang_tokenize\""
        end
        begin
            const var"c\"clang_annotateTokens\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXTranslationUnit\"", C.Cptr{var"c\"CXToken\""}, C.Cuint, C.Cptr{var"c\"CXCursor\""}}, :cdecl}, libpath, :clang_annotateTokens}()
            (func::C.typeof(var"c\"clang_annotateTokens\""))(var"c\"TU\"", var"c\"Tokens\"", var"c\"NumTokens\"", var"c\"Cursors\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"Tokens\"", var"c\"NumTokens\"", var"c\"Cursors\"")
                end
            const clang_annotateTokens = var"c\"clang_annotateTokens\""
            export var"c\"clang_annotateTokens\""
            export clang_annotateTokens
            var"c\"clang_annotateTokens\""
        end
        begin
            const var"c\"clang_disposeTokens\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXTranslationUnit\"", C.Cptr{var"c\"CXToken\""}, C.Cuint}, :cdecl}, libpath, :clang_disposeTokens}()
            (func::C.typeof(var"c\"clang_disposeTokens\""))(var"c\"TU\"", var"c\"Tokens\"", var"c\"NumTokens\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"Tokens\"", var"c\"NumTokens\"")
                end
            const clang_disposeTokens = var"c\"clang_disposeTokens\""
            export var"c\"clang_disposeTokens\""
            export clang_disposeTokens
            var"c\"clang_disposeTokens\""
        end
        begin
            const var"c\"clang_getCursorKindSpelling\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"enum CXCursorKind\""}, :cdecl}, libpath, :clang_getCursorKindSpelling}()
            (func::C.typeof(var"c\"clang_getCursorKindSpelling\""))(var"c\"Kind\"") = begin
                    C.funccall(func, var"c\"Kind\"")
                end
            const clang_getCursorKindSpelling = var"c\"clang_getCursorKindSpelling\""
            export var"c\"clang_getCursorKindSpelling\""
            export clang_getCursorKindSpelling
            var"c\"clang_getCursorKindSpelling\""
        end
        begin
            const var"c\"clang_getDefinitionSpellingAndExtent\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXCursor\"", C.Cptr{C.Cptr{C.Cconst{C.Cchar}}}, C.Cptr{C.Cptr{C.Cconst{C.Cchar}}}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_getDefinitionSpellingAndExtent}()
            (func::C.typeof(var"c\"clang_getDefinitionSpellingAndExtent\""))(arg1, var"c\"startBuf\"", var"c\"endBuf\"", var"c\"startLine\"", var"c\"startColumn\"", var"c\"endLine\"", var"c\"endColumn\"") = begin
                    C.funccall(func, arg1, var"c\"startBuf\"", var"c\"endBuf\"", var"c\"startLine\"", var"c\"startColumn\"", var"c\"endLine\"", var"c\"endColumn\"")
                end
            const clang_getDefinitionSpellingAndExtent = var"c\"clang_getDefinitionSpellingAndExtent\""
            export var"c\"clang_getDefinitionSpellingAndExtent\""
            export clang_getDefinitionSpellingAndExtent
            var"c\"clang_getDefinitionSpellingAndExtent\""
        end
        begin
            const var"c\"clang_enableStackTraces\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{}, :cdecl}, libpath, :clang_enableStackTraces}()
            (func::C.typeof(var"c\"clang_enableStackTraces\""))() = begin
                    C.funccall(func)
                end
            const clang_enableStackTraces = var"c\"clang_enableStackTraces\""
            export var"c\"clang_enableStackTraces\""
            export clang_enableStackTraces
            var"c\"clang_enableStackTraces\""
        end
        begin
            const var"c\"clang_executeOnThread\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{C.Cvoid}}, :cdecl}}, C.Cptr{C.Cvoid}, C.Cuint}, :cdecl}, libpath, :clang_executeOnThread}()
            (func::C.typeof(var"c\"clang_executeOnThread\""))(var"c\"fn\"", var"c\"user_data\"", var"c\"stack_size\"") = begin
                    C.funccall(func, var"c\"fn\"", var"c\"user_data\"", var"c\"stack_size\"")
                end
            const clang_executeOnThread = var"c\"clang_executeOnThread\""
            export var"c\"clang_executeOnThread\""
            export clang_executeOnThread
            var"c\"clang_executeOnThread\""
        end
        begin
            const var"c\"CXCompletionString\"" = C.Cptr{C.Cvoid}
            const CXCompletionString = var"c\"CXCompletionString\""
            export var"c\"CXCompletionString\""
            export CXCompletionString
            var"c\"CXCompletionString\""
        end
        begin
            abstract type var"c\"CXCompletionResult\"" <: Cstruct end
            const CXCompletionResult = var"c\"CXCompletionResult\""
            export var"c\"CXCompletionResult\""
            export CXCompletionResult
            var"c\"CXCompletionResult\""
        end
        begin
            struct var"(c\"CXCompletionResult\")" <: var"c\"CXCompletionResult\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXCompletionResult\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXCompletionResult\")"}) = begin
                    C.Tuple{C.Tuple{:CursorKind, C.Tuple{var"c\"enum CXCursorKind\"", C.bitstype(var"c\"enum CXCursorKind\""), C.integraltype(var"c\"enum CXCursorKind\""), 0, 0, -1}}, C.Tuple{:CompletionString, C.Tuple{var"c\"CXCompletionString\"", C.bitstype(var"c\"CXCompletionString\""), C.integraltype(var"c\"CXCompletionString\""), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXCompletionResult\")"}) = begin
                    var"(c\"CXCompletionResult\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXCompletionResult\""}) = begin
                    var"(c\"CXCompletionResult\")"
                end
            const CXCompletionResult = var"c\"CXCompletionResult\""
            export var"c\"CXCompletionResult\"", var"(c\"CXCompletionResult\")"
            export CXCompletionResult
            var"c\"CXCompletionResult\""
        end
        begin
        end
        begin
            abstract type var"c\"enum CXCompletionChunkKind\"" <: Cenum end
            const CXCompletionChunkKind = var"c\"enum CXCompletionChunkKind\""
            export var"c\"enum CXCompletionChunkKind\""
            export CXCompletionChunkKind
            var"c\"enum CXCompletionChunkKind\""
        end
        begin
            primitive type var"(c\"enum CXCompletionChunkKind\")" <: var"c\"enum CXCompletionChunkKind\"" 32 end
            (::(Type){var"(c\"enum CXCompletionChunkKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCompletionChunkKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCompletionChunkKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCompletionChunk_Optional\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXCompletionChunk_TypedText\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCompletionChunk_Text\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXCompletionChunk_Placeholder\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXCompletionChunk_Informative\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXCompletionChunk_CurrentParameter\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXCompletionChunk_LeftParen\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXCompletionChunk_RightParen\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXCompletionChunk_LeftBracket\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXCompletionChunk_RightBracket\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXCompletionChunk_LeftBrace\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXCompletionChunk_RightBrace\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXCompletionChunk_LeftAngle\""), 0x000000000000000c}, C.Tuple{Symbol("c\"CXCompletionChunk_RightAngle\""), 0x000000000000000d}, C.Tuple{Symbol("c\"CXCompletionChunk_Comma\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXCompletionChunk_ResultType\""), 0x000000000000000f}, C.Tuple{Symbol("c\"CXCompletionChunk_Colon\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXCompletionChunk_SemiColon\""), 0x0000000000000011}, C.Tuple{Symbol("c\"CXCompletionChunk_Equal\""), 0x0000000000000012}, C.Tuple{Symbol("c\"CXCompletionChunk_HorizontalSpace\""), 0x0000000000000013}, C.Tuple{Symbol("c\"CXCompletionChunk_VerticalSpace\""), 0x0000000000000014}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCompletionChunkKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCompletionChunkKind\")"}) = begin
                    var"(c\"enum CXCompletionChunkKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCompletionChunkKind\""}) = begin
                    var"(c\"enum CXCompletionChunkKind\")"
                end
            const var"c\"CXCompletionChunk_Optional\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000000)
            const var"c\"CXCompletionChunk_TypedText\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000001)
            const var"c\"CXCompletionChunk_Text\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000002)
            const var"c\"CXCompletionChunk_Placeholder\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000003)
            const var"c\"CXCompletionChunk_Informative\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000004)
            const var"c\"CXCompletionChunk_CurrentParameter\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000005)
            const var"c\"CXCompletionChunk_LeftParen\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000006)
            const var"c\"CXCompletionChunk_RightParen\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000007)
            const var"c\"CXCompletionChunk_LeftBracket\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000008)
            const var"c\"CXCompletionChunk_RightBracket\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000009)
            const var"c\"CXCompletionChunk_LeftBrace\"" = var"(c\"enum CXCompletionChunkKind\")"(0x000000000000000a)
            const var"c\"CXCompletionChunk_RightBrace\"" = var"(c\"enum CXCompletionChunkKind\")"(0x000000000000000b)
            const var"c\"CXCompletionChunk_LeftAngle\"" = var"(c\"enum CXCompletionChunkKind\")"(0x000000000000000c)
            const var"c\"CXCompletionChunk_RightAngle\"" = var"(c\"enum CXCompletionChunkKind\")"(0x000000000000000d)
            const var"c\"CXCompletionChunk_Comma\"" = var"(c\"enum CXCompletionChunkKind\")"(0x000000000000000e)
            const var"c\"CXCompletionChunk_ResultType\"" = var"(c\"enum CXCompletionChunkKind\")"(0x000000000000000f)
            const var"c\"CXCompletionChunk_Colon\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000010)
            const var"c\"CXCompletionChunk_SemiColon\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000011)
            const var"c\"CXCompletionChunk_Equal\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000012)
            const var"c\"CXCompletionChunk_HorizontalSpace\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000013)
            const var"c\"CXCompletionChunk_VerticalSpace\"" = var"(c\"enum CXCompletionChunkKind\")"(0x0000000000000014)
            const CXCompletionChunkKind = var"c\"enum CXCompletionChunkKind\""
            const CXCompletionChunk_Optional = var"c\"CXCompletionChunk_Optional\""
            const CXCompletionChunk_TypedText = var"c\"CXCompletionChunk_TypedText\""
            const CXCompletionChunk_Text = var"c\"CXCompletionChunk_Text\""
            const CXCompletionChunk_Placeholder = var"c\"CXCompletionChunk_Placeholder\""
            const CXCompletionChunk_Informative = var"c\"CXCompletionChunk_Informative\""
            const CXCompletionChunk_CurrentParameter = var"c\"CXCompletionChunk_CurrentParameter\""
            const CXCompletionChunk_LeftParen = var"c\"CXCompletionChunk_LeftParen\""
            const CXCompletionChunk_RightParen = var"c\"CXCompletionChunk_RightParen\""
            const CXCompletionChunk_LeftBracket = var"c\"CXCompletionChunk_LeftBracket\""
            const CXCompletionChunk_RightBracket = var"c\"CXCompletionChunk_RightBracket\""
            const CXCompletionChunk_LeftBrace = var"c\"CXCompletionChunk_LeftBrace\""
            const CXCompletionChunk_RightBrace = var"c\"CXCompletionChunk_RightBrace\""
            const CXCompletionChunk_LeftAngle = var"c\"CXCompletionChunk_LeftAngle\""
            const CXCompletionChunk_RightAngle = var"c\"CXCompletionChunk_RightAngle\""
            const CXCompletionChunk_Comma = var"c\"CXCompletionChunk_Comma\""
            const CXCompletionChunk_ResultType = var"c\"CXCompletionChunk_ResultType\""
            const CXCompletionChunk_Colon = var"c\"CXCompletionChunk_Colon\""
            const CXCompletionChunk_SemiColon = var"c\"CXCompletionChunk_SemiColon\""
            const CXCompletionChunk_Equal = var"c\"CXCompletionChunk_Equal\""
            const CXCompletionChunk_HorizontalSpace = var"c\"CXCompletionChunk_HorizontalSpace\""
            const CXCompletionChunk_VerticalSpace = var"c\"CXCompletionChunk_VerticalSpace\""
            export var"c\"enum CXCompletionChunkKind\"", var"(c\"enum CXCompletionChunkKind\")", var"c\"CXCompletionChunk_Optional\"", var"c\"CXCompletionChunk_TypedText\"", var"c\"CXCompletionChunk_Text\"", var"c\"CXCompletionChunk_Placeholder\"", var"c\"CXCompletionChunk_Informative\"", var"c\"CXCompletionChunk_CurrentParameter\"", var"c\"CXCompletionChunk_LeftParen\"", var"c\"CXCompletionChunk_RightParen\"", var"c\"CXCompletionChunk_LeftBracket\"", var"c\"CXCompletionChunk_RightBracket\"", var"c\"CXCompletionChunk_LeftBrace\"", var"c\"CXCompletionChunk_RightBrace\"", var"c\"CXCompletionChunk_LeftAngle\"", var"c\"CXCompletionChunk_RightAngle\"", var"c\"CXCompletionChunk_Comma\"", var"c\"CXCompletionChunk_ResultType\"", var"c\"CXCompletionChunk_Colon\"", var"c\"CXCompletionChunk_SemiColon\"", var"c\"CXCompletionChunk_Equal\"", var"c\"CXCompletionChunk_HorizontalSpace\"", var"c\"CXCompletionChunk_VerticalSpace\""
            export CXCompletionChunkKind, CXCompletionChunk_Optional, CXCompletionChunk_TypedText, CXCompletionChunk_Text, CXCompletionChunk_Placeholder, CXCompletionChunk_Informative, CXCompletionChunk_CurrentParameter, CXCompletionChunk_LeftParen, CXCompletionChunk_RightParen, CXCompletionChunk_LeftBracket, CXCompletionChunk_RightBracket, CXCompletionChunk_LeftBrace, CXCompletionChunk_RightBrace, CXCompletionChunk_LeftAngle, CXCompletionChunk_RightAngle, CXCompletionChunk_Comma, CXCompletionChunk_ResultType, CXCompletionChunk_Colon, CXCompletionChunk_SemiColon, CXCompletionChunk_Equal, CXCompletionChunk_HorizontalSpace, CXCompletionChunk_VerticalSpace
            var"c\"enum CXCompletionChunkKind\""
        end
        begin
            const var"c\"clang_getCompletionChunkKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCompletionChunkKind\"", C.Tuple{var"c\"CXCompletionString\"", C.Cuint}, :cdecl}, libpath, :clang_getCompletionChunkKind}()
            (func::C.typeof(var"c\"clang_getCompletionChunkKind\""))(var"c\"completion_string\"", var"c\"chunk_number\"") = begin
                    C.funccall(func, var"c\"completion_string\"", var"c\"chunk_number\"")
                end
            const clang_getCompletionChunkKind = var"c\"clang_getCompletionChunkKind\""
            export var"c\"clang_getCompletionChunkKind\""
            export clang_getCompletionChunkKind
            var"c\"clang_getCompletionChunkKind\""
        end
        begin
            const var"c\"clang_getCompletionChunkText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCompletionString\"", C.Cuint}, :cdecl}, libpath, :clang_getCompletionChunkText}()
            (func::C.typeof(var"c\"clang_getCompletionChunkText\""))(var"c\"completion_string\"", var"c\"chunk_number\"") = begin
                    C.funccall(func, var"c\"completion_string\"", var"c\"chunk_number\"")
                end
            const clang_getCompletionChunkText = var"c\"clang_getCompletionChunkText\""
            export var"c\"clang_getCompletionChunkText\""
            export clang_getCompletionChunkText
            var"c\"clang_getCompletionChunkText\""
        end
        begin
            const var"c\"clang_getCompletionChunkCompletionString\"" = C.Cbinding{C.Cfunction{var"c\"CXCompletionString\"", C.Tuple{var"c\"CXCompletionString\"", C.Cuint}, :cdecl}, libpath, :clang_getCompletionChunkCompletionString}()
            (func::C.typeof(var"c\"clang_getCompletionChunkCompletionString\""))(var"c\"completion_string\"", var"c\"chunk_number\"") = begin
                    C.funccall(func, var"c\"completion_string\"", var"c\"chunk_number\"")
                end
            const clang_getCompletionChunkCompletionString = var"c\"clang_getCompletionChunkCompletionString\""
            export var"c\"clang_getCompletionChunkCompletionString\""
            export clang_getCompletionChunkCompletionString
            var"c\"clang_getCompletionChunkCompletionString\""
        end
        begin
            const var"c\"clang_getNumCompletionChunks\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCompletionString\""}, :cdecl}, libpath, :clang_getNumCompletionChunks}()
            (func::C.typeof(var"c\"clang_getNumCompletionChunks\""))(var"c\"completion_string\"") = begin
                    C.funccall(func, var"c\"completion_string\"")
                end
            const clang_getNumCompletionChunks = var"c\"clang_getNumCompletionChunks\""
            export var"c\"clang_getNumCompletionChunks\""
            export clang_getNumCompletionChunks
            var"c\"clang_getNumCompletionChunks\""
        end
        begin
            const var"c\"clang_getCompletionPriority\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCompletionString\""}, :cdecl}, libpath, :clang_getCompletionPriority}()
            (func::C.typeof(var"c\"clang_getCompletionPriority\""))(var"c\"completion_string\"") = begin
                    C.funccall(func, var"c\"completion_string\"")
                end
            const clang_getCompletionPriority = var"c\"clang_getCompletionPriority\""
            export var"c\"clang_getCompletionPriority\""
            export clang_getCompletionPriority
            var"c\"clang_getCompletionPriority\""
        end
        begin
            const var"c\"clang_getCompletionAvailability\"" = C.Cbinding{C.Cfunction{var"c\"enum CXAvailabilityKind\"", C.Tuple{var"c\"CXCompletionString\""}, :cdecl}, libpath, :clang_getCompletionAvailability}()
            (func::C.typeof(var"c\"clang_getCompletionAvailability\""))(var"c\"completion_string\"") = begin
                    C.funccall(func, var"c\"completion_string\"")
                end
            const clang_getCompletionAvailability = var"c\"clang_getCompletionAvailability\""
            export var"c\"clang_getCompletionAvailability\""
            export clang_getCompletionAvailability
            var"c\"clang_getCompletionAvailability\""
        end
        begin
            const var"c\"clang_getCompletionNumAnnotations\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXCompletionString\""}, :cdecl}, libpath, :clang_getCompletionNumAnnotations}()
            (func::C.typeof(var"c\"clang_getCompletionNumAnnotations\""))(var"c\"completion_string\"") = begin
                    C.funccall(func, var"c\"completion_string\"")
                end
            const clang_getCompletionNumAnnotations = var"c\"clang_getCompletionNumAnnotations\""
            export var"c\"clang_getCompletionNumAnnotations\""
            export clang_getCompletionNumAnnotations
            var"c\"clang_getCompletionNumAnnotations\""
        end
        begin
            const var"c\"clang_getCompletionAnnotation\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCompletionString\"", C.Cuint}, :cdecl}, libpath, :clang_getCompletionAnnotation}()
            (func::C.typeof(var"c\"clang_getCompletionAnnotation\""))(var"c\"completion_string\"", var"c\"annotation_number\"") = begin
                    C.funccall(func, var"c\"completion_string\"", var"c\"annotation_number\"")
                end
            const clang_getCompletionAnnotation = var"c\"clang_getCompletionAnnotation\""
            export var"c\"clang_getCompletionAnnotation\""
            export clang_getCompletionAnnotation
            var"c\"clang_getCompletionAnnotation\""
        end
        begin
            const var"c\"clang_getCompletionParent\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCompletionString\"", C.Cptr{var"c\"enum CXCursorKind\""}}, :cdecl}, libpath, :clang_getCompletionParent}()
            (func::C.typeof(var"c\"clang_getCompletionParent\""))(var"c\"completion_string\"", var"c\"kind\"") = begin
                    C.funccall(func, var"c\"completion_string\"", var"c\"kind\"")
                end
            const clang_getCompletionParent = var"c\"clang_getCompletionParent\""
            export var"c\"clang_getCompletionParent\""
            export clang_getCompletionParent
            var"c\"clang_getCompletionParent\""
        end
        begin
            const var"c\"clang_getCompletionBriefComment\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXCompletionString\""}, :cdecl}, libpath, :clang_getCompletionBriefComment}()
            (func::C.typeof(var"c\"clang_getCompletionBriefComment\""))(var"c\"completion_string\"") = begin
                    C.funccall(func, var"c\"completion_string\"")
                end
            const clang_getCompletionBriefComment = var"c\"clang_getCompletionBriefComment\""
            export var"c\"clang_getCompletionBriefComment\""
            export clang_getCompletionBriefComment
            var"c\"clang_getCompletionBriefComment\""
        end
        begin
            const var"c\"clang_getCursorCompletionString\"" = C.Cbinding{C.Cfunction{var"c\"CXCompletionString\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_getCursorCompletionString}()
            (func::C.typeof(var"c\"clang_getCursorCompletionString\""))(var"c\"cursor\"") = begin
                    C.funccall(func, var"c\"cursor\"")
                end
            const clang_getCursorCompletionString = var"c\"clang_getCursorCompletionString\""
            export var"c\"clang_getCursorCompletionString\""
            export clang_getCursorCompletionString
            var"c\"clang_getCursorCompletionString\""
        end
        begin
            abstract type var"c\"CXCodeCompleteResults\"" <: Cstruct end
            const CXCodeCompleteResults = var"c\"CXCodeCompleteResults\""
            export var"c\"CXCodeCompleteResults\""
            export CXCodeCompleteResults
            var"c\"CXCodeCompleteResults\""
        end
        begin
            struct var"(c\"CXCodeCompleteResults\")" <: var"c\"CXCodeCompleteResults\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXCodeCompleteResults\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXCodeCompleteResults\")"}) = begin
                    C.Tuple{C.Tuple{:Results, C.Tuple{C.Cptr{var"c\"CXCompletionResult\""}, C.bitstype(C.Cptr{var"c\"CXCompletionResult\""}), C.integraltype(C.Cptr{var"c\"CXCompletionResult\""}), 0, 0, -1}}, C.Tuple{:NumResults, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXCodeCompleteResults\")"}) = begin
                    var"(c\"CXCodeCompleteResults\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXCodeCompleteResults\""}) = begin
                    var"(c\"CXCodeCompleteResults\")"
                end
            const CXCodeCompleteResults = var"c\"CXCodeCompleteResults\""
            export var"c\"CXCodeCompleteResults\"", var"(c\"CXCodeCompleteResults\")"
            export CXCodeCompleteResults
            var"c\"CXCodeCompleteResults\""
        end
        begin
        end
        begin
            const var"c\"clang_getCompletionNumFixIts\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}, C.Cuint}, :cdecl}, libpath, :clang_getCompletionNumFixIts}()
            (func::C.typeof(var"c\"clang_getCompletionNumFixIts\""))(var"c\"results\"", var"c\"completion_index\"") = begin
                    C.funccall(func, var"c\"results\"", var"c\"completion_index\"")
                end
            const clang_getCompletionNumFixIts = var"c\"clang_getCompletionNumFixIts\""
            export var"c\"clang_getCompletionNumFixIts\""
            export clang_getCompletionNumFixIts
            var"c\"clang_getCompletionNumFixIts\""
        end
        begin
            const var"c\"clang_getCompletionFixIt\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}, C.Cuint, C.Cuint, C.Cptr{var"c\"CXSourceRange\""}}, :cdecl}, libpath, :clang_getCompletionFixIt}()
            (func::C.typeof(var"c\"clang_getCompletionFixIt\""))(var"c\"results\"", var"c\"completion_index\"", var"c\"fixit_index\"", var"c\"replacement_range\"") = begin
                    C.funccall(func, var"c\"results\"", var"c\"completion_index\"", var"c\"fixit_index\"", var"c\"replacement_range\"")
                end
            const clang_getCompletionFixIt = var"c\"clang_getCompletionFixIt\""
            export var"c\"clang_getCompletionFixIt\""
            export clang_getCompletionFixIt
            var"c\"clang_getCompletionFixIt\""
        end
        begin
            abstract type var"c\"enum CXCodeComplete_Flags\"" <: Cenum end
            const CXCodeComplete_Flags = var"c\"enum CXCodeComplete_Flags\""
            export var"c\"enum CXCodeComplete_Flags\""
            export CXCodeComplete_Flags
            var"c\"enum CXCodeComplete_Flags\""
        end
        begin
            primitive type var"(c\"enum CXCodeComplete_Flags\")" <: var"c\"enum CXCodeComplete_Flags\"" 32 end
            (::(Type){var"(c\"enum CXCodeComplete_Flags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCodeComplete_Flags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCodeComplete_Flags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCodeComplete_IncludeMacros\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCodeComplete_IncludeCodePatterns\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXCodeComplete_IncludeBriefComments\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXCodeComplete_SkipPreamble\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXCodeComplete_IncludeCompletionsWithFixIts\""), 0x0000000000000010}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCodeComplete_Flags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCodeComplete_Flags\")"}) = begin
                    var"(c\"enum CXCodeComplete_Flags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCodeComplete_Flags\""}) = begin
                    var"(c\"enum CXCodeComplete_Flags\")"
                end
            const var"c\"CXCodeComplete_IncludeMacros\"" = var"(c\"enum CXCodeComplete_Flags\")"(0x0000000000000001)
            const var"c\"CXCodeComplete_IncludeCodePatterns\"" = var"(c\"enum CXCodeComplete_Flags\")"(0x0000000000000002)
            const var"c\"CXCodeComplete_IncludeBriefComments\"" = var"(c\"enum CXCodeComplete_Flags\")"(0x0000000000000004)
            const var"c\"CXCodeComplete_SkipPreamble\"" = var"(c\"enum CXCodeComplete_Flags\")"(0x0000000000000008)
            const var"c\"CXCodeComplete_IncludeCompletionsWithFixIts\"" = var"(c\"enum CXCodeComplete_Flags\")"(0x0000000000000010)
            const CXCodeComplete_Flags = var"c\"enum CXCodeComplete_Flags\""
            const CXCodeComplete_IncludeMacros = var"c\"CXCodeComplete_IncludeMacros\""
            const CXCodeComplete_IncludeCodePatterns = var"c\"CXCodeComplete_IncludeCodePatterns\""
            const CXCodeComplete_IncludeBriefComments = var"c\"CXCodeComplete_IncludeBriefComments\""
            const CXCodeComplete_SkipPreamble = var"c\"CXCodeComplete_SkipPreamble\""
            const CXCodeComplete_IncludeCompletionsWithFixIts = var"c\"CXCodeComplete_IncludeCompletionsWithFixIts\""
            export var"c\"enum CXCodeComplete_Flags\"", var"(c\"enum CXCodeComplete_Flags\")", var"c\"CXCodeComplete_IncludeMacros\"", var"c\"CXCodeComplete_IncludeCodePatterns\"", var"c\"CXCodeComplete_IncludeBriefComments\"", var"c\"CXCodeComplete_SkipPreamble\"", var"c\"CXCodeComplete_IncludeCompletionsWithFixIts\""
            export CXCodeComplete_Flags, CXCodeComplete_IncludeMacros, CXCodeComplete_IncludeCodePatterns, CXCodeComplete_IncludeBriefComments, CXCodeComplete_SkipPreamble, CXCodeComplete_IncludeCompletionsWithFixIts
            var"c\"enum CXCodeComplete_Flags\""
        end
        begin
            abstract type var"c\"enum CXCompletionContext\"" <: Cenum end
            const CXCompletionContext = var"c\"enum CXCompletionContext\""
            export var"c\"enum CXCompletionContext\""
            export CXCompletionContext
            var"c\"enum CXCompletionContext\""
        end
        begin
            primitive type var"(c\"enum CXCompletionContext\")" <: var"c\"enum CXCompletionContext\"" 32 end
            (::(Type){var"(c\"enum CXCompletionContext\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCompletionContext\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCompletionContext\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCompletionContext_Unexposed\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXCompletionContext_AnyType\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCompletionContext_AnyValue\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCObjectValue\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCSelectorValue\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXCompletionContext_CXXClassTypeValue\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXCompletionContext_DotMemberAccess\""), 0x0000000000000020}, C.Tuple{Symbol("c\"CXCompletionContext_ArrowMemberAccess\""), 0x0000000000000040}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCPropertyAccess\""), 0x0000000000000080}, C.Tuple{Symbol("c\"CXCompletionContext_EnumTag\""), 0x0000000000000100}, C.Tuple{Symbol("c\"CXCompletionContext_UnionTag\""), 0x0000000000000200}, C.Tuple{Symbol("c\"CXCompletionContext_StructTag\""), 0x0000000000000400}, C.Tuple{Symbol("c\"CXCompletionContext_ClassTag\""), 0x0000000000000800}, C.Tuple{Symbol("c\"CXCompletionContext_Namespace\""), 0x0000000000001000}, C.Tuple{Symbol("c\"CXCompletionContext_NestedNameSpecifier\""), 0x0000000000002000}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCInterface\""), 0x0000000000004000}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCProtocol\""), 0x0000000000008000}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCCategory\""), 0x0000000000010000}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCInstanceMessage\""), 0x0000000000020000}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCClassMessage\""), 0x0000000000040000}, C.Tuple{Symbol("c\"CXCompletionContext_ObjCSelectorName\""), 0x0000000000080000}, C.Tuple{Symbol("c\"CXCompletionContext_MacroName\""), 0x0000000000100000}, C.Tuple{Symbol("c\"CXCompletionContext_NaturalLanguage\""), 0x0000000000200000}, C.Tuple{Symbol("c\"CXCompletionContext_IncludedFile\""), 0x0000000000400000}, C.Tuple{Symbol("c\"CXCompletionContext_Unknown\""), 0x00000000007fffff}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCompletionContext\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCompletionContext\")"}) = begin
                    var"(c\"enum CXCompletionContext\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCompletionContext\""}) = begin
                    var"(c\"enum CXCompletionContext\")"
                end
            const var"c\"CXCompletionContext_Unexposed\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000000)
            const var"c\"CXCompletionContext_AnyType\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000001)
            const var"c\"CXCompletionContext_AnyValue\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000002)
            const var"c\"CXCompletionContext_ObjCObjectValue\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000004)
            const var"c\"CXCompletionContext_ObjCSelectorValue\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000008)
            const var"c\"CXCompletionContext_CXXClassTypeValue\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000010)
            const var"c\"CXCompletionContext_DotMemberAccess\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000020)
            const var"c\"CXCompletionContext_ArrowMemberAccess\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000040)
            const var"c\"CXCompletionContext_ObjCPropertyAccess\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000080)
            const var"c\"CXCompletionContext_EnumTag\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000100)
            const var"c\"CXCompletionContext_UnionTag\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000200)
            const var"c\"CXCompletionContext_StructTag\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000400)
            const var"c\"CXCompletionContext_ClassTag\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000000800)
            const var"c\"CXCompletionContext_Namespace\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000001000)
            const var"c\"CXCompletionContext_NestedNameSpecifier\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000002000)
            const var"c\"CXCompletionContext_ObjCInterface\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000004000)
            const var"c\"CXCompletionContext_ObjCProtocol\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000008000)
            const var"c\"CXCompletionContext_ObjCCategory\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000010000)
            const var"c\"CXCompletionContext_ObjCInstanceMessage\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000020000)
            const var"c\"CXCompletionContext_ObjCClassMessage\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000040000)
            const var"c\"CXCompletionContext_ObjCSelectorName\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000080000)
            const var"c\"CXCompletionContext_MacroName\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000100000)
            const var"c\"CXCompletionContext_NaturalLanguage\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000200000)
            const var"c\"CXCompletionContext_IncludedFile\"" = var"(c\"enum CXCompletionContext\")"(0x0000000000400000)
            const var"c\"CXCompletionContext_Unknown\"" = var"(c\"enum CXCompletionContext\")"(0x00000000007fffff)
            const CXCompletionContext = var"c\"enum CXCompletionContext\""
            const CXCompletionContext_Unexposed = var"c\"CXCompletionContext_Unexposed\""
            const CXCompletionContext_AnyType = var"c\"CXCompletionContext_AnyType\""
            const CXCompletionContext_AnyValue = var"c\"CXCompletionContext_AnyValue\""
            const CXCompletionContext_ObjCObjectValue = var"c\"CXCompletionContext_ObjCObjectValue\""
            const CXCompletionContext_ObjCSelectorValue = var"c\"CXCompletionContext_ObjCSelectorValue\""
            const CXCompletionContext_CXXClassTypeValue = var"c\"CXCompletionContext_CXXClassTypeValue\""
            const CXCompletionContext_DotMemberAccess = var"c\"CXCompletionContext_DotMemberAccess\""
            const CXCompletionContext_ArrowMemberAccess = var"c\"CXCompletionContext_ArrowMemberAccess\""
            const CXCompletionContext_ObjCPropertyAccess = var"c\"CXCompletionContext_ObjCPropertyAccess\""
            const CXCompletionContext_EnumTag = var"c\"CXCompletionContext_EnumTag\""
            const CXCompletionContext_UnionTag = var"c\"CXCompletionContext_UnionTag\""
            const CXCompletionContext_StructTag = var"c\"CXCompletionContext_StructTag\""
            const CXCompletionContext_ClassTag = var"c\"CXCompletionContext_ClassTag\""
            const CXCompletionContext_Namespace = var"c\"CXCompletionContext_Namespace\""
            const CXCompletionContext_NestedNameSpecifier = var"c\"CXCompletionContext_NestedNameSpecifier\""
            const CXCompletionContext_ObjCInterface = var"c\"CXCompletionContext_ObjCInterface\""
            const CXCompletionContext_ObjCProtocol = var"c\"CXCompletionContext_ObjCProtocol\""
            const CXCompletionContext_ObjCCategory = var"c\"CXCompletionContext_ObjCCategory\""
            const CXCompletionContext_ObjCInstanceMessage = var"c\"CXCompletionContext_ObjCInstanceMessage\""
            const CXCompletionContext_ObjCClassMessage = var"c\"CXCompletionContext_ObjCClassMessage\""
            const CXCompletionContext_ObjCSelectorName = var"c\"CXCompletionContext_ObjCSelectorName\""
            const CXCompletionContext_MacroName = var"c\"CXCompletionContext_MacroName\""
            const CXCompletionContext_NaturalLanguage = var"c\"CXCompletionContext_NaturalLanguage\""
            const CXCompletionContext_IncludedFile = var"c\"CXCompletionContext_IncludedFile\""
            const CXCompletionContext_Unknown = var"c\"CXCompletionContext_Unknown\""
            export var"c\"enum CXCompletionContext\"", var"(c\"enum CXCompletionContext\")", var"c\"CXCompletionContext_Unexposed\"", var"c\"CXCompletionContext_AnyType\"", var"c\"CXCompletionContext_AnyValue\"", var"c\"CXCompletionContext_ObjCObjectValue\"", var"c\"CXCompletionContext_ObjCSelectorValue\"", var"c\"CXCompletionContext_CXXClassTypeValue\"", var"c\"CXCompletionContext_DotMemberAccess\"", var"c\"CXCompletionContext_ArrowMemberAccess\"", var"c\"CXCompletionContext_ObjCPropertyAccess\"", var"c\"CXCompletionContext_EnumTag\"", var"c\"CXCompletionContext_UnionTag\"", var"c\"CXCompletionContext_StructTag\"", var"c\"CXCompletionContext_ClassTag\"", var"c\"CXCompletionContext_Namespace\"", var"c\"CXCompletionContext_NestedNameSpecifier\"", var"c\"CXCompletionContext_ObjCInterface\"", var"c\"CXCompletionContext_ObjCProtocol\"", var"c\"CXCompletionContext_ObjCCategory\"", var"c\"CXCompletionContext_ObjCInstanceMessage\"", var"c\"CXCompletionContext_ObjCClassMessage\"", var"c\"CXCompletionContext_ObjCSelectorName\"", var"c\"CXCompletionContext_MacroName\"", var"c\"CXCompletionContext_NaturalLanguage\"", var"c\"CXCompletionContext_IncludedFile\"", var"c\"CXCompletionContext_Unknown\""
            export CXCompletionContext, CXCompletionContext_Unexposed, CXCompletionContext_AnyType, CXCompletionContext_AnyValue, CXCompletionContext_ObjCObjectValue, CXCompletionContext_ObjCSelectorValue, CXCompletionContext_CXXClassTypeValue, CXCompletionContext_DotMemberAccess, CXCompletionContext_ArrowMemberAccess, CXCompletionContext_ObjCPropertyAccess, CXCompletionContext_EnumTag, CXCompletionContext_UnionTag, CXCompletionContext_StructTag, CXCompletionContext_ClassTag, CXCompletionContext_Namespace, CXCompletionContext_NestedNameSpecifier, CXCompletionContext_ObjCInterface, CXCompletionContext_ObjCProtocol, CXCompletionContext_ObjCCategory, CXCompletionContext_ObjCInstanceMessage, CXCompletionContext_ObjCClassMessage, CXCompletionContext_ObjCSelectorName, CXCompletionContext_MacroName, CXCompletionContext_NaturalLanguage, CXCompletionContext_IncludedFile, CXCompletionContext_Unknown
            var"c\"enum CXCompletionContext\""
        end
        begin
            const var"c\"clang_defaultCodeCompleteOptions\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{}, :cdecl}, libpath, :clang_defaultCodeCompleteOptions}()
            (func::C.typeof(var"c\"clang_defaultCodeCompleteOptions\""))() = begin
                    C.funccall(func)
                end
            const clang_defaultCodeCompleteOptions = var"c\"clang_defaultCodeCompleteOptions\""
            export var"c\"clang_defaultCodeCompleteOptions\""
            export clang_defaultCodeCompleteOptions
            var"c\"clang_defaultCodeCompleteOptions\""
        end
        begin
            const var"c\"clang_codeCompleteAt\"" = C.Cbinding{C.Cfunction{C.Cptr{var"c\"CXCodeCompleteResults\""}, C.Tuple{var"c\"CXTranslationUnit\"", C.Cptr{C.Cconst{C.Cchar}}, C.Cuint, C.Cuint, C.Cptr{var"c\"struct CXUnsavedFile\""}, C.Cuint, C.Cuint}, :cdecl}, libpath, :clang_codeCompleteAt}()
            (func::C.typeof(var"c\"clang_codeCompleteAt\""))(var"c\"TU\"", var"c\"complete_filename\"", var"c\"complete_line\"", var"c\"complete_column\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"complete_filename\"", var"c\"complete_line\"", var"c\"complete_column\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"options\"")
                end
            const clang_codeCompleteAt = var"c\"clang_codeCompleteAt\""
            export var"c\"clang_codeCompleteAt\""
            export clang_codeCompleteAt
            var"c\"clang_codeCompleteAt\""
        end
        begin
            const var"c\"clang_sortCodeCompletionResults\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{var"c\"CXCompletionResult\""}, C.Cuint}, :cdecl}, libpath, :clang_sortCodeCompletionResults}()
            (func::C.typeof(var"c\"clang_sortCodeCompletionResults\""))(var"c\"Results\"", var"c\"NumResults\"") = begin
                    C.funccall(func, var"c\"Results\"", var"c\"NumResults\"")
                end
            const clang_sortCodeCompletionResults = var"c\"clang_sortCodeCompletionResults\""
            export var"c\"clang_sortCodeCompletionResults\""
            export clang_sortCodeCompletionResults
            var"c\"clang_sortCodeCompletionResults\""
        end
        begin
            const var"c\"clang_disposeCodeCompleteResults\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}}, :cdecl}, libpath, :clang_disposeCodeCompleteResults}()
            (func::C.typeof(var"c\"clang_disposeCodeCompleteResults\""))(var"c\"Results\"") = begin
                    C.funccall(func, var"c\"Results\"")
                end
            const clang_disposeCodeCompleteResults = var"c\"clang_disposeCodeCompleteResults\""
            export var"c\"clang_disposeCodeCompleteResults\""
            export clang_disposeCodeCompleteResults
            var"c\"clang_disposeCodeCompleteResults\""
        end
        begin
            const var"c\"clang_codeCompleteGetNumDiagnostics\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}}, :cdecl}, libpath, :clang_codeCompleteGetNumDiagnostics}()
            (func::C.typeof(var"c\"clang_codeCompleteGetNumDiagnostics\""))(var"c\"Results\"") = begin
                    C.funccall(func, var"c\"Results\"")
                end
            const clang_codeCompleteGetNumDiagnostics = var"c\"clang_codeCompleteGetNumDiagnostics\""
            export var"c\"clang_codeCompleteGetNumDiagnostics\""
            export clang_codeCompleteGetNumDiagnostics
            var"c\"clang_codeCompleteGetNumDiagnostics\""
        end
        begin
            const var"c\"clang_codeCompleteGetDiagnostic\"" = C.Cbinding{C.Cfunction{var"c\"CXDiagnostic\"", C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}, C.Cuint}, :cdecl}, libpath, :clang_codeCompleteGetDiagnostic}()
            (func::C.typeof(var"c\"clang_codeCompleteGetDiagnostic\""))(var"c\"Results\"", var"c\"Index\"") = begin
                    C.funccall(func, var"c\"Results\"", var"c\"Index\"")
                end
            const clang_codeCompleteGetDiagnostic = var"c\"clang_codeCompleteGetDiagnostic\""
            export var"c\"clang_codeCompleteGetDiagnostic\""
            export clang_codeCompleteGetDiagnostic
            var"c\"clang_codeCompleteGetDiagnostic\""
        end
        begin
            const var"c\"clang_codeCompleteGetContexts\"" = C.Cbinding{C.Cfunction{C.Culonglong, C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}}, :cdecl}, libpath, :clang_codeCompleteGetContexts}()
            (func::C.typeof(var"c\"clang_codeCompleteGetContexts\""))(var"c\"Results\"") = begin
                    C.funccall(func, var"c\"Results\"")
                end
            const clang_codeCompleteGetContexts = var"c\"clang_codeCompleteGetContexts\""
            export var"c\"clang_codeCompleteGetContexts\""
            export clang_codeCompleteGetContexts
            var"c\"clang_codeCompleteGetContexts\""
        end
        begin
            const var"c\"clang_codeCompleteGetContainerKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCursorKind\"", C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_codeCompleteGetContainerKind}()
            (func::C.typeof(var"c\"clang_codeCompleteGetContainerKind\""))(var"c\"Results\"", var"c\"IsIncomplete\"") = begin
                    C.funccall(func, var"c\"Results\"", var"c\"IsIncomplete\"")
                end
            const clang_codeCompleteGetContainerKind = var"c\"clang_codeCompleteGetContainerKind\""
            export var"c\"clang_codeCompleteGetContainerKind\""
            export clang_codeCompleteGetContainerKind
            var"c\"clang_codeCompleteGetContainerKind\""
        end
        begin
            const var"c\"clang_codeCompleteGetContainerUSR\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}}, :cdecl}, libpath, :clang_codeCompleteGetContainerUSR}()
            (func::C.typeof(var"c\"clang_codeCompleteGetContainerUSR\""))(var"c\"Results\"") = begin
                    C.funccall(func, var"c\"Results\"")
                end
            const clang_codeCompleteGetContainerUSR = var"c\"clang_codeCompleteGetContainerUSR\""
            export var"c\"clang_codeCompleteGetContainerUSR\""
            export clang_codeCompleteGetContainerUSR
            var"c\"clang_codeCompleteGetContainerUSR\""
        end
        begin
            const var"c\"clang_codeCompleteGetObjCSelector\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{C.Cptr{var"c\"CXCodeCompleteResults\""}}, :cdecl}, libpath, :clang_codeCompleteGetObjCSelector}()
            (func::C.typeof(var"c\"clang_codeCompleteGetObjCSelector\""))(var"c\"Results\"") = begin
                    C.funccall(func, var"c\"Results\"")
                end
            const clang_codeCompleteGetObjCSelector = var"c\"clang_codeCompleteGetObjCSelector\""
            export var"c\"clang_codeCompleteGetObjCSelector\""
            export clang_codeCompleteGetObjCSelector
            var"c\"clang_codeCompleteGetObjCSelector\""
        end
        begin
            const var"c\"clang_getClangVersion\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{}, :cdecl}, libpath, :clang_getClangVersion}()
            (func::C.typeof(var"c\"clang_getClangVersion\""))() = begin
                    C.funccall(func)
                end
            const clang_getClangVersion = var"c\"clang_getClangVersion\""
            export var"c\"clang_getClangVersion\""
            export clang_getClangVersion
            var"c\"clang_getClangVersion\""
        end
        begin
            const var"c\"clang_toggleCrashRecovery\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cuint}, :cdecl}, libpath, :clang_toggleCrashRecovery}()
            (func::C.typeof(var"c\"clang_toggleCrashRecovery\""))(var"c\"isEnabled\"") = begin
                    C.funccall(func, var"c\"isEnabled\"")
                end
            const clang_toggleCrashRecovery = var"c\"clang_toggleCrashRecovery\""
            export var"c\"clang_toggleCrashRecovery\""
            export clang_toggleCrashRecovery
            var"c\"clang_toggleCrashRecovery\""
        end
        begin
            const var"c\"CXInclusionVisitor\"" = C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXFile\"", C.Cptr{var"c\"CXSourceLocation\""}, C.Cuint, var"c\"CXClientData\""}, :cdecl}}
            const CXInclusionVisitor = var"c\"CXInclusionVisitor\""
            export var"c\"CXInclusionVisitor\""
            export CXInclusionVisitor
            var"c\"CXInclusionVisitor\""
        end
        begin
            const var"c\"clang_getInclusions\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXInclusionVisitor\"", var"c\"CXClientData\""}, :cdecl}, libpath, :clang_getInclusions}()
            (func::C.typeof(var"c\"clang_getInclusions\""))(var"c\"tu\"", var"c\"visitor\"", var"c\"client_data\"") = begin
                    C.funccall(func, var"c\"tu\"", var"c\"visitor\"", var"c\"client_data\"")
                end
            const clang_getInclusions = var"c\"clang_getInclusions\""
            export var"c\"clang_getInclusions\""
            export clang_getInclusions
            var"c\"clang_getInclusions\""
        end
        begin
            abstract type var"c\"CXEvalResultKind\"" <: Cenum end
            const CXEvalResultKind = var"c\"CXEvalResultKind\""
            export var"c\"CXEvalResultKind\""
            export CXEvalResultKind
            var"c\"CXEvalResultKind\""
        end
        begin
            primitive type var"(c\"CXEvalResultKind\")" <: var"c\"CXEvalResultKind\"" 32 end
            (::(Type){var"(c\"CXEvalResultKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXEvalResultKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXEvalResultKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXEval_Int\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXEval_Float\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXEval_ObjCStrLiteral\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXEval_StrLiteral\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXEval_CFStr\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXEval_Other\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXEval_UnExposed\""), 0x0000000000000000}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXEvalResultKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXEvalResultKind\")"}) = begin
                    var"(c\"CXEvalResultKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXEvalResultKind\""}) = begin
                    var"(c\"CXEvalResultKind\")"
                end
            const var"c\"CXEval_Int\"" = var"(c\"CXEvalResultKind\")"(0x0000000000000001)
            const var"c\"CXEval_Float\"" = var"(c\"CXEvalResultKind\")"(0x0000000000000002)
            const var"c\"CXEval_ObjCStrLiteral\"" = var"(c\"CXEvalResultKind\")"(0x0000000000000003)
            const var"c\"CXEval_StrLiteral\"" = var"(c\"CXEvalResultKind\")"(0x0000000000000004)
            const var"c\"CXEval_CFStr\"" = var"(c\"CXEvalResultKind\")"(0x0000000000000005)
            const var"c\"CXEval_Other\"" = var"(c\"CXEvalResultKind\")"(0x0000000000000006)
            const var"c\"CXEval_UnExposed\"" = var"(c\"CXEvalResultKind\")"(0x0000000000000000)
            const CXEvalResultKind = var"c\"CXEvalResultKind\""
            const CXEval_Int = var"c\"CXEval_Int\""
            const CXEval_Float = var"c\"CXEval_Float\""
            const CXEval_ObjCStrLiteral = var"c\"CXEval_ObjCStrLiteral\""
            const CXEval_StrLiteral = var"c\"CXEval_StrLiteral\""
            const CXEval_CFStr = var"c\"CXEval_CFStr\""
            const CXEval_Other = var"c\"CXEval_Other\""
            const CXEval_UnExposed = var"c\"CXEval_UnExposed\""
            export var"c\"CXEvalResultKind\"", var"(c\"CXEvalResultKind\")", var"c\"CXEval_Int\"", var"c\"CXEval_Float\"", var"c\"CXEval_ObjCStrLiteral\"", var"c\"CXEval_StrLiteral\"", var"c\"CXEval_CFStr\"", var"c\"CXEval_Other\"", var"c\"CXEval_UnExposed\""
            export CXEvalResultKind, CXEval_Int, CXEval_Float, CXEval_ObjCStrLiteral, CXEval_StrLiteral, CXEval_CFStr, CXEval_Other, CXEval_UnExposed
            var"c\"CXEvalResultKind\""
        end
        begin
        end
        begin
            const var"c\"CXEvalResult\"" = C.Cptr{C.Cvoid}
            const CXEvalResult = var"c\"CXEvalResult\""
            export var"c\"CXEvalResult\""
            export CXEvalResult
            var"c\"CXEvalResult\""
        end
        begin
            const var"c\"clang_Cursor_Evaluate\"" = C.Cbinding{C.Cfunction{var"c\"CXEvalResult\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_Evaluate}()
            (func::C.typeof(var"c\"clang_Cursor_Evaluate\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_Evaluate = var"c\"clang_Cursor_Evaluate\""
            export var"c\"clang_Cursor_Evaluate\""
            export clang_Cursor_Evaluate
            var"c\"clang_Cursor_Evaluate\""
        end
        begin
            const var"c\"clang_EvalResult_getKind\"" = C.Cbinding{C.Cfunction{var"c\"CXEvalResultKind\"", C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_getKind}()
            (func::C.typeof(var"c\"clang_EvalResult_getKind\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_getKind = var"c\"clang_EvalResult_getKind\""
            export var"c\"clang_EvalResult_getKind\""
            export clang_EvalResult_getKind
            var"c\"clang_EvalResult_getKind\""
        end
        begin
            const var"c\"clang_EvalResult_getAsInt\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_getAsInt}()
            (func::C.typeof(var"c\"clang_EvalResult_getAsInt\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_getAsInt = var"c\"clang_EvalResult_getAsInt\""
            export var"c\"clang_EvalResult_getAsInt\""
            export clang_EvalResult_getAsInt
            var"c\"clang_EvalResult_getAsInt\""
        end
        begin
            const var"c\"clang_EvalResult_getAsLongLong\"" = C.Cbinding{C.Cfunction{C.Clonglong, C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_getAsLongLong}()
            (func::C.typeof(var"c\"clang_EvalResult_getAsLongLong\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_getAsLongLong = var"c\"clang_EvalResult_getAsLongLong\""
            export var"c\"clang_EvalResult_getAsLongLong\""
            export clang_EvalResult_getAsLongLong
            var"c\"clang_EvalResult_getAsLongLong\""
        end
        begin
            const var"c\"clang_EvalResult_isUnsignedInt\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_isUnsignedInt}()
            (func::C.typeof(var"c\"clang_EvalResult_isUnsignedInt\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_isUnsignedInt = var"c\"clang_EvalResult_isUnsignedInt\""
            export var"c\"clang_EvalResult_isUnsignedInt\""
            export clang_EvalResult_isUnsignedInt
            var"c\"clang_EvalResult_isUnsignedInt\""
        end
        begin
            const var"c\"clang_EvalResult_getAsUnsigned\"" = C.Cbinding{C.Cfunction{C.Culonglong, C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_getAsUnsigned}()
            (func::C.typeof(var"c\"clang_EvalResult_getAsUnsigned\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_getAsUnsigned = var"c\"clang_EvalResult_getAsUnsigned\""
            export var"c\"clang_EvalResult_getAsUnsigned\""
            export clang_EvalResult_getAsUnsigned
            var"c\"clang_EvalResult_getAsUnsigned\""
        end
        begin
            const var"c\"clang_EvalResult_getAsDouble\"" = C.Cbinding{C.Cfunction{C.Cdouble, C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_getAsDouble}()
            (func::C.typeof(var"c\"clang_EvalResult_getAsDouble\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_getAsDouble = var"c\"clang_EvalResult_getAsDouble\""
            export var"c\"clang_EvalResult_getAsDouble\""
            export clang_EvalResult_getAsDouble
            var"c\"clang_EvalResult_getAsDouble\""
        end
        begin
            const var"c\"clang_EvalResult_getAsStr\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{C.Cchar}}, C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_getAsStr}()
            (func::C.typeof(var"c\"clang_EvalResult_getAsStr\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_getAsStr = var"c\"clang_EvalResult_getAsStr\""
            export var"c\"clang_EvalResult_getAsStr\""
            export clang_EvalResult_getAsStr
            var"c\"clang_EvalResult_getAsStr\""
        end
        begin
            const var"c\"clang_EvalResult_dispose\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXEvalResult\""}, :cdecl}, libpath, :clang_EvalResult_dispose}()
            (func::C.typeof(var"c\"clang_EvalResult_dispose\""))(var"c\"E\"") = begin
                    C.funccall(func, var"c\"E\"")
                end
            const clang_EvalResult_dispose = var"c\"clang_EvalResult_dispose\""
            export var"c\"clang_EvalResult_dispose\""
            export clang_EvalResult_dispose
            var"c\"clang_EvalResult_dispose\""
        end
        begin
            const var"c\"CXRemapping\"" = C.Cptr{C.Cvoid}
            const CXRemapping = var"c\"CXRemapping\""
            export var"c\"CXRemapping\""
            export CXRemapping
            var"c\"CXRemapping\""
        end
        begin
            const var"c\"clang_getRemappings\"" = C.Cbinding{C.Cfunction{var"c\"CXRemapping\"", C.Tuple{C.Cptr{C.Cconst{C.Cchar}}}, :cdecl}, libpath, :clang_getRemappings}()
            (func::C.typeof(var"c\"clang_getRemappings\""))(var"c\"path\"") = begin
                    C.funccall(func, var"c\"path\"")
                end
            const clang_getRemappings = var"c\"clang_getRemappings\""
            export var"c\"clang_getRemappings\""
            export clang_getRemappings
            var"c\"clang_getRemappings\""
        end
        begin
            const var"c\"clang_getRemappingsFromFileList\"" = C.Cbinding{C.Cfunction{var"c\"CXRemapping\"", C.Tuple{C.Cptr{C.Cptr{C.Cconst{C.Cchar}}}, C.Cuint}, :cdecl}, libpath, :clang_getRemappingsFromFileList}()
            (func::C.typeof(var"c\"clang_getRemappingsFromFileList\""))(var"c\"filePaths\"", var"c\"numFiles\"") = begin
                    C.funccall(func, var"c\"filePaths\"", var"c\"numFiles\"")
                end
            const clang_getRemappingsFromFileList = var"c\"clang_getRemappingsFromFileList\""
            export var"c\"clang_getRemappingsFromFileList\""
            export clang_getRemappingsFromFileList
            var"c\"clang_getRemappingsFromFileList\""
        end
        begin
            const var"c\"clang_remap_getNumFiles\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXRemapping\""}, :cdecl}, libpath, :clang_remap_getNumFiles}()
            (func::C.typeof(var"c\"clang_remap_getNumFiles\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_remap_getNumFiles = var"c\"clang_remap_getNumFiles\""
            export var"c\"clang_remap_getNumFiles\""
            export clang_remap_getNumFiles
            var"c\"clang_remap_getNumFiles\""
        end
        begin
            const var"c\"clang_remap_getFilenames\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXRemapping\"", C.Cuint, C.Cptr{var"c\"CXString\""}, C.Cptr{var"c\"CXString\""}}, :cdecl}, libpath, :clang_remap_getFilenames}()
            (func::C.typeof(var"c\"clang_remap_getFilenames\""))(arg1, var"c\"index\"", var"c\"original\"", var"c\"transformed\"") = begin
                    C.funccall(func, arg1, var"c\"index\"", var"c\"original\"", var"c\"transformed\"")
                end
            const clang_remap_getFilenames = var"c\"clang_remap_getFilenames\""
            export var"c\"clang_remap_getFilenames\""
            export clang_remap_getFilenames
            var"c\"clang_remap_getFilenames\""
        end
        begin
            const var"c\"clang_remap_dispose\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXRemapping\""}, :cdecl}, libpath, :clang_remap_dispose}()
            (func::C.typeof(var"c\"clang_remap_dispose\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_remap_dispose = var"c\"clang_remap_dispose\""
            export var"c\"clang_remap_dispose\""
            export clang_remap_dispose
            var"c\"clang_remap_dispose\""
        end
        begin
            abstract type var"c\"enum CXVisitorResult\"" <: Cenum end
            const CXVisitorResult = var"c\"enum CXVisitorResult\""
            export var"c\"enum CXVisitorResult\""
            export CXVisitorResult
            var"c\"enum CXVisitorResult\""
        end
        begin
            primitive type var"(c\"enum CXVisitorResult\")" <: var"c\"enum CXVisitorResult\"" 32 end
            (::(Type){var"(c\"enum CXVisitorResult\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXVisitorResult\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXVisitorResult\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXVisit_Break\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXVisit_Continue\""), 0x0000000000000001}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXVisitorResult\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXVisitorResult\")"}) = begin
                    var"(c\"enum CXVisitorResult\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXVisitorResult\""}) = begin
                    var"(c\"enum CXVisitorResult\")"
                end
            const var"c\"CXVisit_Break\"" = var"(c\"enum CXVisitorResult\")"(0x0000000000000000)
            const var"c\"CXVisit_Continue\"" = var"(c\"enum CXVisitorResult\")"(0x0000000000000001)
            const CXVisitorResult = var"c\"enum CXVisitorResult\""
            const CXVisit_Break = var"c\"CXVisit_Break\""
            const CXVisit_Continue = var"c\"CXVisit_Continue\""
            export var"c\"enum CXVisitorResult\"", var"(c\"enum CXVisitorResult\")", var"c\"CXVisit_Break\"", var"c\"CXVisit_Continue\""
            export CXVisitorResult, CXVisit_Break, CXVisit_Continue
            var"c\"enum CXVisitorResult\""
        end
        begin
            abstract type var"c\"struct CXCursorAndRangeVisitor\"" <: Cstruct end
            const CXCursorAndRangeVisitor = var"c\"struct CXCursorAndRangeVisitor\""
            export var"c\"struct CXCursorAndRangeVisitor\""
            export CXCursorAndRangeVisitor
            var"c\"struct CXCursorAndRangeVisitor\""
        end
        begin
            struct var"(c\"struct CXCursorAndRangeVisitor\")" <: var"c\"struct CXCursorAndRangeVisitor\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"struct CXCursorAndRangeVisitor\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"struct CXCursorAndRangeVisitor\")"}) = begin
                    C.Tuple{C.Tuple{:context, C.Tuple{C.Cptr{C.Cvoid}, C.bitstype(C.Cptr{C.Cvoid}), C.integraltype(C.Cptr{C.Cvoid}), 0, 0, -1}}, C.Tuple{:visit, C.Tuple{C.Cptr{C.Cfunction{var"c\"enum CXVisitorResult\"", C.Tuple{C.Cptr{C.Cvoid}, var"c\"CXCursor\"", var"c\"CXSourceRange\""}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{var"c\"enum CXVisitorResult\"", C.Tuple{C.Cptr{C.Cvoid}, var"c\"CXCursor\"", var"c\"CXSourceRange\""}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{var"c\"enum CXVisitorResult\"", C.Tuple{C.Cptr{C.Cvoid}, var"c\"CXCursor\"", var"c\"CXSourceRange\""}, :cdecl}}), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"struct CXCursorAndRangeVisitor\")"}) = begin
                    var"(c\"struct CXCursorAndRangeVisitor\")"
                end
            (C.C).bitstype(::C.Type{var"c\"struct CXCursorAndRangeVisitor\""}) = begin
                    var"(c\"struct CXCursorAndRangeVisitor\")"
                end
            const CXCursorAndRangeVisitor = var"c\"struct CXCursorAndRangeVisitor\""
            export var"c\"struct CXCursorAndRangeVisitor\"", var"(c\"struct CXCursorAndRangeVisitor\")"
            export CXCursorAndRangeVisitor
            var"c\"struct CXCursorAndRangeVisitor\""
        end
        begin
            const var"c\"CXCursorAndRangeVisitor\"" = var"c\"struct CXCursorAndRangeVisitor\""
            const CXCursorAndRangeVisitor = var"c\"CXCursorAndRangeVisitor\""
            export var"c\"CXCursorAndRangeVisitor\""
            export CXCursorAndRangeVisitor
            var"c\"CXCursorAndRangeVisitor\""
        end
        begin
            abstract type var"c\"CXResult\"" <: Cenum end
            const CXResult = var"c\"CXResult\""
            export var"c\"CXResult\""
            export CXResult
            var"c\"CXResult\""
        end
        begin
            primitive type var"(c\"CXResult\")" <: var"c\"CXResult\"" 32 end
            (::(Type){var"(c\"CXResult\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXResult\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXResult\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXResult_Success\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXResult_Invalid\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXResult_VisitBreak\""), 0x0000000000000002}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXResult\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXResult\")"}) = begin
                    var"(c\"CXResult\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXResult\""}) = begin
                    var"(c\"CXResult\")"
                end
            const var"c\"CXResult_Success\"" = var"(c\"CXResult\")"(0x0000000000000000)
            const var"c\"CXResult_Invalid\"" = var"(c\"CXResult\")"(0x0000000000000001)
            const var"c\"CXResult_VisitBreak\"" = var"(c\"CXResult\")"(0x0000000000000002)
            const CXResult = var"c\"CXResult\""
            const CXResult_Success = var"c\"CXResult_Success\""
            const CXResult_Invalid = var"c\"CXResult_Invalid\""
            const CXResult_VisitBreak = var"c\"CXResult_VisitBreak\""
            export var"c\"CXResult\"", var"(c\"CXResult\")", var"c\"CXResult_Success\"", var"c\"CXResult_Invalid\"", var"c\"CXResult_VisitBreak\""
            export CXResult, CXResult_Success, CXResult_Invalid, CXResult_VisitBreak
            var"c\"CXResult\""
        end
        begin
        end
        begin
            const var"c\"clang_findReferencesInFile\"" = C.Cbinding{C.Cfunction{var"c\"CXResult\"", C.Tuple{var"c\"CXCursor\"", var"c\"CXFile\"", var"c\"CXCursorAndRangeVisitor\""}, :cdecl}, libpath, :clang_findReferencesInFile}()
            (func::C.typeof(var"c\"clang_findReferencesInFile\""))(var"c\"cursor\"", var"c\"file\"", var"c\"visitor\"") = begin
                    C.funccall(func, var"c\"cursor\"", var"c\"file\"", var"c\"visitor\"")
                end
            const clang_findReferencesInFile = var"c\"clang_findReferencesInFile\""
            export var"c\"clang_findReferencesInFile\""
            export clang_findReferencesInFile
            var"c\"clang_findReferencesInFile\""
        end
        begin
            const var"c\"clang_findIncludesInFile\"" = C.Cbinding{C.Cfunction{var"c\"CXResult\"", C.Tuple{var"c\"CXTranslationUnit\"", var"c\"CXFile\"", var"c\"CXCursorAndRangeVisitor\""}, :cdecl}, libpath, :clang_findIncludesInFile}()
            (func::C.typeof(var"c\"clang_findIncludesInFile\""))(var"c\"TU\"", var"c\"file\"", var"c\"visitor\"") = begin
                    C.funccall(func, var"c\"TU\"", var"c\"file\"", var"c\"visitor\"")
                end
            const clang_findIncludesInFile = var"c\"clang_findIncludesInFile\""
            export var"c\"clang_findIncludesInFile\""
            export clang_findIncludesInFile
            var"c\"clang_findIncludesInFile\""
        end
        begin
            const var"c\"CXIdxClientFile\"" = C.Cptr{C.Cvoid}
            const CXIdxClientFile = var"c\"CXIdxClientFile\""
            export var"c\"CXIdxClientFile\""
            export CXIdxClientFile
            var"c\"CXIdxClientFile\""
        end
        begin
            const var"c\"CXIdxClientEntity\"" = C.Cptr{C.Cvoid}
            const CXIdxClientEntity = var"c\"CXIdxClientEntity\""
            export var"c\"CXIdxClientEntity\""
            export CXIdxClientEntity
            var"c\"CXIdxClientEntity\""
        end
        begin
            const var"c\"CXIdxClientContainer\"" = C.Cptr{C.Cvoid}
            const CXIdxClientContainer = var"c\"CXIdxClientContainer\""
            export var"c\"CXIdxClientContainer\""
            export CXIdxClientContainer
            var"c\"CXIdxClientContainer\""
        end
        begin
            const var"c\"CXIdxClientASTFile\"" = C.Cptr{C.Cvoid}
            const CXIdxClientASTFile = var"c\"CXIdxClientASTFile\""
            export var"c\"CXIdxClientASTFile\""
            export CXIdxClientASTFile
            var"c\"CXIdxClientASTFile\""
        end
        begin
            abstract type var"c\"CXIdxLoc\"" <: Cstruct end
            const CXIdxLoc = var"c\"CXIdxLoc\""
            export var"c\"CXIdxLoc\""
            export CXIdxLoc
            var"c\"CXIdxLoc\""
        end
        begin
            struct var"(c\"CXIdxLoc\")" <: var"c\"CXIdxLoc\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXIdxLoc\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxLoc\")"}) = begin
                    C.Tuple{C.Tuple{:ptr_data, C.Tuple{C.Carray{C.Cptr{C.Cvoid}, 2}, C.bitstype(C.Carray{C.Cptr{C.Cvoid}, 2}), C.integraltype(C.Carray{C.Cptr{C.Cvoid}, 2}), 0, 0, -1}}, C.Tuple{:int_data, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxLoc\")"}) = begin
                    var"(c\"CXIdxLoc\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxLoc\""}) = begin
                    var"(c\"CXIdxLoc\")"
                end
            const CXIdxLoc = var"c\"CXIdxLoc\""
            export var"c\"CXIdxLoc\"", var"(c\"CXIdxLoc\")"
            export CXIdxLoc
            var"c\"CXIdxLoc\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxIncludedFileInfo\"" <: Cstruct end
            const CXIdxIncludedFileInfo = var"c\"CXIdxIncludedFileInfo\""
            export var"c\"CXIdxIncludedFileInfo\""
            export CXIdxIncludedFileInfo
            var"c\"CXIdxIncludedFileInfo\""
        end
        begin
            struct var"(c\"CXIdxIncludedFileInfo\")" <: var"c\"CXIdxIncludedFileInfo\""
                mem::C.NTuple{56, C.UInt8}
                var"(c\"CXIdxIncludedFileInfo\")"(::C.UndefInitializer, mem::C.NTuple{56, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxIncludedFileInfo\")"}) = begin
                    C.Tuple{C.Tuple{:hashLoc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 0, 0, -1}}, C.Tuple{:filename, C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.bitstype(C.Cptr{C.Cconst{C.Cchar}}), C.integraltype(C.Cptr{C.Cconst{C.Cchar}}), 24, 0, -1}}, C.Tuple{:file, C.Tuple{var"c\"CXFile\"", C.bitstype(var"c\"CXFile\""), C.integraltype(var"c\"CXFile\""), 32, 0, -1}}, C.Tuple{:isImport, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 40, 0, -1}}, C.Tuple{:isAngled, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 44, 0, -1}}, C.Tuple{:isModuleImport, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 48, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxIncludedFileInfo\")"}) = begin
                    var"(c\"CXIdxIncludedFileInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxIncludedFileInfo\""}) = begin
                    var"(c\"CXIdxIncludedFileInfo\")"
                end
            const CXIdxIncludedFileInfo = var"c\"CXIdxIncludedFileInfo\""
            export var"c\"CXIdxIncludedFileInfo\"", var"(c\"CXIdxIncludedFileInfo\")"
            export CXIdxIncludedFileInfo
            var"c\"CXIdxIncludedFileInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxImportedASTFileInfo\"" <: Cstruct end
            const CXIdxImportedASTFileInfo = var"c\"CXIdxImportedASTFileInfo\""
            export var"c\"CXIdxImportedASTFileInfo\""
            export CXIdxImportedASTFileInfo
            var"c\"CXIdxImportedASTFileInfo\""
        end
        begin
            struct var"(c\"CXIdxImportedASTFileInfo\")" <: var"c\"CXIdxImportedASTFileInfo\""
                mem::C.NTuple{48, C.UInt8}
                var"(c\"CXIdxImportedASTFileInfo\")"(::C.UndefInitializer, mem::C.NTuple{48, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxImportedASTFileInfo\")"}) = begin
                    C.Tuple{C.Tuple{:file, C.Tuple{var"c\"CXFile\"", C.bitstype(var"c\"CXFile\""), C.integraltype(var"c\"CXFile\""), 0, 0, -1}}, C.Tuple{:module, C.Tuple{var"c\"CXModule\"", C.bitstype(var"c\"CXModule\""), C.integraltype(var"c\"CXModule\""), 8, 0, -1}}, C.Tuple{:loc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 16, 0, -1}}, C.Tuple{:isImplicit, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 40, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxImportedASTFileInfo\")"}) = begin
                    var"(c\"CXIdxImportedASTFileInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxImportedASTFileInfo\""}) = begin
                    var"(c\"CXIdxImportedASTFileInfo\")"
                end
            const CXIdxImportedASTFileInfo = var"c\"CXIdxImportedASTFileInfo\""
            export var"c\"CXIdxImportedASTFileInfo\"", var"(c\"CXIdxImportedASTFileInfo\")"
            export CXIdxImportedASTFileInfo
            var"c\"CXIdxImportedASTFileInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxEntityKind\"" <: Cenum end
            const CXIdxEntityKind = var"c\"CXIdxEntityKind\""
            export var"c\"CXIdxEntityKind\""
            export CXIdxEntityKind
            var"c\"CXIdxEntityKind\""
        end
        begin
            primitive type var"(c\"CXIdxEntityKind\")" <: var"c\"CXIdxEntityKind\"" 32 end
            (::(Type){var"(c\"CXIdxEntityKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIdxEntityKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIdxEntityKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIdxEntity_Unexposed\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXIdxEntity_Typedef\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXIdxEntity_Function\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXIdxEntity_Variable\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXIdxEntity_Field\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXIdxEntity_EnumConstant\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXIdxEntity_ObjCClass\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXIdxEntity_ObjCProtocol\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXIdxEntity_ObjCCategory\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXIdxEntity_ObjCInstanceMethod\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXIdxEntity_ObjCClassMethod\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXIdxEntity_ObjCProperty\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXIdxEntity_ObjCIvar\""), 0x000000000000000c}, C.Tuple{Symbol("c\"CXIdxEntity_Enum\""), 0x000000000000000d}, C.Tuple{Symbol("c\"CXIdxEntity_Struct\""), 0x000000000000000e}, C.Tuple{Symbol("c\"CXIdxEntity_Union\""), 0x000000000000000f}, C.Tuple{Symbol("c\"CXIdxEntity_CXXClass\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXIdxEntity_CXXNamespace\""), 0x0000000000000011}, C.Tuple{Symbol("c\"CXIdxEntity_CXXNamespaceAlias\""), 0x0000000000000012}, C.Tuple{Symbol("c\"CXIdxEntity_CXXStaticVariable\""), 0x0000000000000013}, C.Tuple{Symbol("c\"CXIdxEntity_CXXStaticMethod\""), 0x0000000000000014}, C.Tuple{Symbol("c\"CXIdxEntity_CXXInstanceMethod\""), 0x0000000000000015}, C.Tuple{Symbol("c\"CXIdxEntity_CXXConstructor\""), 0x0000000000000016}, C.Tuple{Symbol("c\"CXIdxEntity_CXXDestructor\""), 0x0000000000000017}, C.Tuple{Symbol("c\"CXIdxEntity_CXXConversionFunction\""), 0x0000000000000018}, C.Tuple{Symbol("c\"CXIdxEntity_CXXTypeAlias\""), 0x0000000000000019}, C.Tuple{Symbol("c\"CXIdxEntity_CXXInterface\""), 0x000000000000001a}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIdxEntityKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxEntityKind\")"}) = begin
                    var"(c\"CXIdxEntityKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxEntityKind\""}) = begin
                    var"(c\"CXIdxEntityKind\")"
                end
            const var"c\"CXIdxEntity_Unexposed\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000000)
            const var"c\"CXIdxEntity_Typedef\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000001)
            const var"c\"CXIdxEntity_Function\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000002)
            const var"c\"CXIdxEntity_Variable\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000003)
            const var"c\"CXIdxEntity_Field\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000004)
            const var"c\"CXIdxEntity_EnumConstant\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000005)
            const var"c\"CXIdxEntity_ObjCClass\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000006)
            const var"c\"CXIdxEntity_ObjCProtocol\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000007)
            const var"c\"CXIdxEntity_ObjCCategory\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000008)
            const var"c\"CXIdxEntity_ObjCInstanceMethod\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000009)
            const var"c\"CXIdxEntity_ObjCClassMethod\"" = var"(c\"CXIdxEntityKind\")"(0x000000000000000a)
            const var"c\"CXIdxEntity_ObjCProperty\"" = var"(c\"CXIdxEntityKind\")"(0x000000000000000b)
            const var"c\"CXIdxEntity_ObjCIvar\"" = var"(c\"CXIdxEntityKind\")"(0x000000000000000c)
            const var"c\"CXIdxEntity_Enum\"" = var"(c\"CXIdxEntityKind\")"(0x000000000000000d)
            const var"c\"CXIdxEntity_Struct\"" = var"(c\"CXIdxEntityKind\")"(0x000000000000000e)
            const var"c\"CXIdxEntity_Union\"" = var"(c\"CXIdxEntityKind\")"(0x000000000000000f)
            const var"c\"CXIdxEntity_CXXClass\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000010)
            const var"c\"CXIdxEntity_CXXNamespace\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000011)
            const var"c\"CXIdxEntity_CXXNamespaceAlias\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000012)
            const var"c\"CXIdxEntity_CXXStaticVariable\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000013)
            const var"c\"CXIdxEntity_CXXStaticMethod\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000014)
            const var"c\"CXIdxEntity_CXXInstanceMethod\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000015)
            const var"c\"CXIdxEntity_CXXConstructor\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000016)
            const var"c\"CXIdxEntity_CXXDestructor\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000017)
            const var"c\"CXIdxEntity_CXXConversionFunction\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000018)
            const var"c\"CXIdxEntity_CXXTypeAlias\"" = var"(c\"CXIdxEntityKind\")"(0x0000000000000019)
            const var"c\"CXIdxEntity_CXXInterface\"" = var"(c\"CXIdxEntityKind\")"(0x000000000000001a)
            const CXIdxEntityKind = var"c\"CXIdxEntityKind\""
            const CXIdxEntity_Unexposed = var"c\"CXIdxEntity_Unexposed\""
            const CXIdxEntity_Typedef = var"c\"CXIdxEntity_Typedef\""
            const CXIdxEntity_Function = var"c\"CXIdxEntity_Function\""
            const CXIdxEntity_Variable = var"c\"CXIdxEntity_Variable\""
            const CXIdxEntity_Field = var"c\"CXIdxEntity_Field\""
            const CXIdxEntity_EnumConstant = var"c\"CXIdxEntity_EnumConstant\""
            const CXIdxEntity_ObjCClass = var"c\"CXIdxEntity_ObjCClass\""
            const CXIdxEntity_ObjCProtocol = var"c\"CXIdxEntity_ObjCProtocol\""
            const CXIdxEntity_ObjCCategory = var"c\"CXIdxEntity_ObjCCategory\""
            const CXIdxEntity_ObjCInstanceMethod = var"c\"CXIdxEntity_ObjCInstanceMethod\""
            const CXIdxEntity_ObjCClassMethod = var"c\"CXIdxEntity_ObjCClassMethod\""
            const CXIdxEntity_ObjCProperty = var"c\"CXIdxEntity_ObjCProperty\""
            const CXIdxEntity_ObjCIvar = var"c\"CXIdxEntity_ObjCIvar\""
            const CXIdxEntity_Enum = var"c\"CXIdxEntity_Enum\""
            const CXIdxEntity_Struct = var"c\"CXIdxEntity_Struct\""
            const CXIdxEntity_Union = var"c\"CXIdxEntity_Union\""
            const CXIdxEntity_CXXClass = var"c\"CXIdxEntity_CXXClass\""
            const CXIdxEntity_CXXNamespace = var"c\"CXIdxEntity_CXXNamespace\""
            const CXIdxEntity_CXXNamespaceAlias = var"c\"CXIdxEntity_CXXNamespaceAlias\""
            const CXIdxEntity_CXXStaticVariable = var"c\"CXIdxEntity_CXXStaticVariable\""
            const CXIdxEntity_CXXStaticMethod = var"c\"CXIdxEntity_CXXStaticMethod\""
            const CXIdxEntity_CXXInstanceMethod = var"c\"CXIdxEntity_CXXInstanceMethod\""
            const CXIdxEntity_CXXConstructor = var"c\"CXIdxEntity_CXXConstructor\""
            const CXIdxEntity_CXXDestructor = var"c\"CXIdxEntity_CXXDestructor\""
            const CXIdxEntity_CXXConversionFunction = var"c\"CXIdxEntity_CXXConversionFunction\""
            const CXIdxEntity_CXXTypeAlias = var"c\"CXIdxEntity_CXXTypeAlias\""
            const CXIdxEntity_CXXInterface = var"c\"CXIdxEntity_CXXInterface\""
            export var"c\"CXIdxEntityKind\"", var"(c\"CXIdxEntityKind\")", var"c\"CXIdxEntity_Unexposed\"", var"c\"CXIdxEntity_Typedef\"", var"c\"CXIdxEntity_Function\"", var"c\"CXIdxEntity_Variable\"", var"c\"CXIdxEntity_Field\"", var"c\"CXIdxEntity_EnumConstant\"", var"c\"CXIdxEntity_ObjCClass\"", var"c\"CXIdxEntity_ObjCProtocol\"", var"c\"CXIdxEntity_ObjCCategory\"", var"c\"CXIdxEntity_ObjCInstanceMethod\"", var"c\"CXIdxEntity_ObjCClassMethod\"", var"c\"CXIdxEntity_ObjCProperty\"", var"c\"CXIdxEntity_ObjCIvar\"", var"c\"CXIdxEntity_Enum\"", var"c\"CXIdxEntity_Struct\"", var"c\"CXIdxEntity_Union\"", var"c\"CXIdxEntity_CXXClass\"", var"c\"CXIdxEntity_CXXNamespace\"", var"c\"CXIdxEntity_CXXNamespaceAlias\"", var"c\"CXIdxEntity_CXXStaticVariable\"", var"c\"CXIdxEntity_CXXStaticMethod\"", var"c\"CXIdxEntity_CXXInstanceMethod\"", var"c\"CXIdxEntity_CXXConstructor\"", var"c\"CXIdxEntity_CXXDestructor\"", var"c\"CXIdxEntity_CXXConversionFunction\"", var"c\"CXIdxEntity_CXXTypeAlias\"", var"c\"CXIdxEntity_CXXInterface\""
            export CXIdxEntityKind, CXIdxEntity_Unexposed, CXIdxEntity_Typedef, CXIdxEntity_Function, CXIdxEntity_Variable, CXIdxEntity_Field, CXIdxEntity_EnumConstant, CXIdxEntity_ObjCClass, CXIdxEntity_ObjCProtocol, CXIdxEntity_ObjCCategory, CXIdxEntity_ObjCInstanceMethod, CXIdxEntity_ObjCClassMethod, CXIdxEntity_ObjCProperty, CXIdxEntity_ObjCIvar, CXIdxEntity_Enum, CXIdxEntity_Struct, CXIdxEntity_Union, CXIdxEntity_CXXClass, CXIdxEntity_CXXNamespace, CXIdxEntity_CXXNamespaceAlias, CXIdxEntity_CXXStaticVariable, CXIdxEntity_CXXStaticMethod, CXIdxEntity_CXXInstanceMethod, CXIdxEntity_CXXConstructor, CXIdxEntity_CXXDestructor, CXIdxEntity_CXXConversionFunction, CXIdxEntity_CXXTypeAlias, CXIdxEntity_CXXInterface
            var"c\"CXIdxEntityKind\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxEntityLanguage\"" <: Cenum end
            const CXIdxEntityLanguage = var"c\"CXIdxEntityLanguage\""
            export var"c\"CXIdxEntityLanguage\""
            export CXIdxEntityLanguage
            var"c\"CXIdxEntityLanguage\""
        end
        begin
            primitive type var"(c\"CXIdxEntityLanguage\")" <: var"c\"CXIdxEntityLanguage\"" 32 end
            (::(Type){var"(c\"CXIdxEntityLanguage\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIdxEntityLanguage\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIdxEntityLanguage\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIdxEntityLang_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXIdxEntityLang_C\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXIdxEntityLang_ObjC\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXIdxEntityLang_CXX\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXIdxEntityLang_Swift\""), 0x0000000000000004}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIdxEntityLanguage\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxEntityLanguage\")"}) = begin
                    var"(c\"CXIdxEntityLanguage\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxEntityLanguage\""}) = begin
                    var"(c\"CXIdxEntityLanguage\")"
                end
            const var"c\"CXIdxEntityLang_None\"" = var"(c\"CXIdxEntityLanguage\")"(0x0000000000000000)
            const var"c\"CXIdxEntityLang_C\"" = var"(c\"CXIdxEntityLanguage\")"(0x0000000000000001)
            const var"c\"CXIdxEntityLang_ObjC\"" = var"(c\"CXIdxEntityLanguage\")"(0x0000000000000002)
            const var"c\"CXIdxEntityLang_CXX\"" = var"(c\"CXIdxEntityLanguage\")"(0x0000000000000003)
            const var"c\"CXIdxEntityLang_Swift\"" = var"(c\"CXIdxEntityLanguage\")"(0x0000000000000004)
            const CXIdxEntityLanguage = var"c\"CXIdxEntityLanguage\""
            const CXIdxEntityLang_None = var"c\"CXIdxEntityLang_None\""
            const CXIdxEntityLang_C = var"c\"CXIdxEntityLang_C\""
            const CXIdxEntityLang_ObjC = var"c\"CXIdxEntityLang_ObjC\""
            const CXIdxEntityLang_CXX = var"c\"CXIdxEntityLang_CXX\""
            const CXIdxEntityLang_Swift = var"c\"CXIdxEntityLang_Swift\""
            export var"c\"CXIdxEntityLanguage\"", var"(c\"CXIdxEntityLanguage\")", var"c\"CXIdxEntityLang_None\"", var"c\"CXIdxEntityLang_C\"", var"c\"CXIdxEntityLang_ObjC\"", var"c\"CXIdxEntityLang_CXX\"", var"c\"CXIdxEntityLang_Swift\""
            export CXIdxEntityLanguage, CXIdxEntityLang_None, CXIdxEntityLang_C, CXIdxEntityLang_ObjC, CXIdxEntityLang_CXX, CXIdxEntityLang_Swift
            var"c\"CXIdxEntityLanguage\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxEntityCXXTemplateKind\"" <: Cenum end
            const CXIdxEntityCXXTemplateKind = var"c\"CXIdxEntityCXXTemplateKind\""
            export var"c\"CXIdxEntityCXXTemplateKind\""
            export CXIdxEntityCXXTemplateKind
            var"c\"CXIdxEntityCXXTemplateKind\""
        end
        begin
            primitive type var"(c\"CXIdxEntityCXXTemplateKind\")" <: var"c\"CXIdxEntityCXXTemplateKind\"" 32 end
            (::(Type){var"(c\"CXIdxEntityCXXTemplateKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIdxEntityCXXTemplateKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIdxEntityCXXTemplateKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIdxEntity_NonTemplate\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXIdxEntity_Template\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXIdxEntity_TemplatePartialSpecialization\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXIdxEntity_TemplateSpecialization\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIdxEntityCXXTemplateKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxEntityCXXTemplateKind\")"}) = begin
                    var"(c\"CXIdxEntityCXXTemplateKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxEntityCXXTemplateKind\""}) = begin
                    var"(c\"CXIdxEntityCXXTemplateKind\")"
                end
            const var"c\"CXIdxEntity_NonTemplate\"" = var"(c\"CXIdxEntityCXXTemplateKind\")"(0x0000000000000000)
            const var"c\"CXIdxEntity_Template\"" = var"(c\"CXIdxEntityCXXTemplateKind\")"(0x0000000000000001)
            const var"c\"CXIdxEntity_TemplatePartialSpecialization\"" = var"(c\"CXIdxEntityCXXTemplateKind\")"(0x0000000000000002)
            const var"c\"CXIdxEntity_TemplateSpecialization\"" = var"(c\"CXIdxEntityCXXTemplateKind\")"(0x0000000000000003)
            const CXIdxEntityCXXTemplateKind = var"c\"CXIdxEntityCXXTemplateKind\""
            const CXIdxEntity_NonTemplate = var"c\"CXIdxEntity_NonTemplate\""
            const CXIdxEntity_Template = var"c\"CXIdxEntity_Template\""
            const CXIdxEntity_TemplatePartialSpecialization = var"c\"CXIdxEntity_TemplatePartialSpecialization\""
            const CXIdxEntity_TemplateSpecialization = var"c\"CXIdxEntity_TemplateSpecialization\""
            export var"c\"CXIdxEntityCXXTemplateKind\"", var"(c\"CXIdxEntityCXXTemplateKind\")", var"c\"CXIdxEntity_NonTemplate\"", var"c\"CXIdxEntity_Template\"", var"c\"CXIdxEntity_TemplatePartialSpecialization\"", var"c\"CXIdxEntity_TemplateSpecialization\""
            export CXIdxEntityCXXTemplateKind, CXIdxEntity_NonTemplate, CXIdxEntity_Template, CXIdxEntity_TemplatePartialSpecialization, CXIdxEntity_TemplateSpecialization
            var"c\"CXIdxEntityCXXTemplateKind\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxAttrKind\"" <: Cenum end
            const CXIdxAttrKind = var"c\"CXIdxAttrKind\""
            export var"c\"CXIdxAttrKind\""
            export CXIdxAttrKind
            var"c\"CXIdxAttrKind\""
        end
        begin
            primitive type var"(c\"CXIdxAttrKind\")" <: var"c\"CXIdxAttrKind\"" 32 end
            (::(Type){var"(c\"CXIdxAttrKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIdxAttrKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIdxAttrKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIdxAttr_Unexposed\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXIdxAttr_IBAction\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXIdxAttr_IBOutlet\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXIdxAttr_IBOutletCollection\""), 0x0000000000000003}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIdxAttrKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxAttrKind\")"}) = begin
                    var"(c\"CXIdxAttrKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxAttrKind\""}) = begin
                    var"(c\"CXIdxAttrKind\")"
                end
            const var"c\"CXIdxAttr_Unexposed\"" = var"(c\"CXIdxAttrKind\")"(0x0000000000000000)
            const var"c\"CXIdxAttr_IBAction\"" = var"(c\"CXIdxAttrKind\")"(0x0000000000000001)
            const var"c\"CXIdxAttr_IBOutlet\"" = var"(c\"CXIdxAttrKind\")"(0x0000000000000002)
            const var"c\"CXIdxAttr_IBOutletCollection\"" = var"(c\"CXIdxAttrKind\")"(0x0000000000000003)
            const CXIdxAttrKind = var"c\"CXIdxAttrKind\""
            const CXIdxAttr_Unexposed = var"c\"CXIdxAttr_Unexposed\""
            const CXIdxAttr_IBAction = var"c\"CXIdxAttr_IBAction\""
            const CXIdxAttr_IBOutlet = var"c\"CXIdxAttr_IBOutlet\""
            const CXIdxAttr_IBOutletCollection = var"c\"CXIdxAttr_IBOutletCollection\""
            export var"c\"CXIdxAttrKind\"", var"(c\"CXIdxAttrKind\")", var"c\"CXIdxAttr_Unexposed\"", var"c\"CXIdxAttr_IBAction\"", var"c\"CXIdxAttr_IBOutlet\"", var"c\"CXIdxAttr_IBOutletCollection\""
            export CXIdxAttrKind, CXIdxAttr_Unexposed, CXIdxAttr_IBAction, CXIdxAttr_IBOutlet, CXIdxAttr_IBOutletCollection
            var"c\"CXIdxAttrKind\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxAttrInfo\"" <: Cstruct end
            const CXIdxAttrInfo = var"c\"CXIdxAttrInfo\""
            export var"c\"CXIdxAttrInfo\""
            export CXIdxAttrInfo
            var"c\"CXIdxAttrInfo\""
        end
        begin
            struct var"(c\"CXIdxAttrInfo\")" <: var"c\"CXIdxAttrInfo\""
                mem::C.NTuple{64, C.UInt8}
                var"(c\"CXIdxAttrInfo\")"(::C.UndefInitializer, mem::C.NTuple{64, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxAttrInfo\")"}) = begin
                    C.Tuple{C.Tuple{:kind, C.Tuple{var"c\"CXIdxAttrKind\"", C.bitstype(var"c\"CXIdxAttrKind\""), C.integraltype(var"c\"CXIdxAttrKind\""), 0, 0, -1}}, C.Tuple{:cursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 8, 0, -1}}, C.Tuple{:loc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 40, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxAttrInfo\")"}) = begin
                    var"(c\"CXIdxAttrInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxAttrInfo\""}) = begin
                    var"(c\"CXIdxAttrInfo\")"
                end
            const CXIdxAttrInfo = var"c\"CXIdxAttrInfo\""
            export var"c\"CXIdxAttrInfo\"", var"(c\"CXIdxAttrInfo\")"
            export CXIdxAttrInfo
            var"c\"CXIdxAttrInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxEntityInfo\"" <: Cstruct end
            const CXIdxEntityInfo = var"c\"CXIdxEntityInfo\""
            export var"c\"CXIdxEntityInfo\""
            export CXIdxEntityInfo
            var"c\"CXIdxEntityInfo\""
        end
        begin
            struct var"(c\"CXIdxEntityInfo\")" <: var"c\"CXIdxEntityInfo\""
                mem::C.NTuple{80, C.UInt8}
                var"(c\"CXIdxEntityInfo\")"(::C.UndefInitializer, mem::C.NTuple{80, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxEntityInfo\")"}) = begin
                    C.Tuple{C.Tuple{:kind, C.Tuple{var"c\"CXIdxEntityKind\"", C.bitstype(var"c\"CXIdxEntityKind\""), C.integraltype(var"c\"CXIdxEntityKind\""), 0, 0, -1}}, C.Tuple{:templateKind, C.Tuple{var"c\"CXIdxEntityCXXTemplateKind\"", C.bitstype(var"c\"CXIdxEntityCXXTemplateKind\""), C.integraltype(var"c\"CXIdxEntityCXXTemplateKind\""), 4, 0, -1}}, C.Tuple{:lang, C.Tuple{var"c\"CXIdxEntityLanguage\"", C.bitstype(var"c\"CXIdxEntityLanguage\""), C.integraltype(var"c\"CXIdxEntityLanguage\""), 8, 0, -1}}, C.Tuple{:name, C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.bitstype(C.Cptr{C.Cconst{C.Cchar}}), C.integraltype(C.Cptr{C.Cconst{C.Cchar}}), 16, 0, -1}}, C.Tuple{:USR, C.Tuple{C.Cptr{C.Cconst{C.Cchar}}, C.bitstype(C.Cptr{C.Cconst{C.Cchar}}), C.integraltype(C.Cptr{C.Cconst{C.Cchar}}), 24, 0, -1}}, C.Tuple{:cursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 32, 0, -1}}, C.Tuple{:attributes, C.Tuple{C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}}}, C.bitstype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}}}), C.integraltype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}}}), 64, 0, -1}}, C.Tuple{:numAttributes, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 72, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxEntityInfo\")"}) = begin
                    var"(c\"CXIdxEntityInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxEntityInfo\""}) = begin
                    var"(c\"CXIdxEntityInfo\")"
                end
            const CXIdxEntityInfo = var"c\"CXIdxEntityInfo\""
            export var"c\"CXIdxEntityInfo\"", var"(c\"CXIdxEntityInfo\")"
            export CXIdxEntityInfo
            var"c\"CXIdxEntityInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxContainerInfo\"" <: Cstruct end
            const CXIdxContainerInfo = var"c\"CXIdxContainerInfo\""
            export var"c\"CXIdxContainerInfo\""
            export CXIdxContainerInfo
            var"c\"CXIdxContainerInfo\""
        end
        begin
            struct var"(c\"CXIdxContainerInfo\")" <: var"c\"CXIdxContainerInfo\""
                mem::C.NTuple{32, C.UInt8}
                var"(c\"CXIdxContainerInfo\")"(::C.UndefInitializer, mem::C.NTuple{32, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxContainerInfo\")"}) = begin
                    C.Tuple{C.Tuple{:cursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 0, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxContainerInfo\")"}) = begin
                    var"(c\"CXIdxContainerInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxContainerInfo\""}) = begin
                    var"(c\"CXIdxContainerInfo\")"
                end
            const CXIdxContainerInfo = var"c\"CXIdxContainerInfo\""
            export var"c\"CXIdxContainerInfo\"", var"(c\"CXIdxContainerInfo\")"
            export CXIdxContainerInfo
            var"c\"CXIdxContainerInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxIBOutletCollectionAttrInfo\"" <: Cstruct end
            const CXIdxIBOutletCollectionAttrInfo = var"c\"CXIdxIBOutletCollectionAttrInfo\""
            export var"c\"CXIdxIBOutletCollectionAttrInfo\""
            export CXIdxIBOutletCollectionAttrInfo
            var"c\"CXIdxIBOutletCollectionAttrInfo\""
        end
        begin
            struct var"(c\"CXIdxIBOutletCollectionAttrInfo\")" <: var"c\"CXIdxIBOutletCollectionAttrInfo\""
                mem::C.NTuple{72, C.UInt8}
                var"(c\"CXIdxIBOutletCollectionAttrInfo\")"(::C.UndefInitializer, mem::C.NTuple{72, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxIBOutletCollectionAttrInfo\")"}) = begin
                    C.Tuple{C.Tuple{:attrInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}), 0, 0, -1}}, C.Tuple{:objcClass, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 8, 0, -1}}, C.Tuple{:classCursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 16, 0, -1}}, C.Tuple{:classLoc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 48, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxIBOutletCollectionAttrInfo\")"}) = begin
                    var"(c\"CXIdxIBOutletCollectionAttrInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxIBOutletCollectionAttrInfo\""}) = begin
                    var"(c\"CXIdxIBOutletCollectionAttrInfo\")"
                end
            const CXIdxIBOutletCollectionAttrInfo = var"c\"CXIdxIBOutletCollectionAttrInfo\""
            export var"c\"CXIdxIBOutletCollectionAttrInfo\"", var"(c\"CXIdxIBOutletCollectionAttrInfo\")"
            export CXIdxIBOutletCollectionAttrInfo
            var"c\"CXIdxIBOutletCollectionAttrInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxDeclInfoFlags\"" <: Cenum end
            const CXIdxDeclInfoFlags = var"c\"CXIdxDeclInfoFlags\""
            export var"c\"CXIdxDeclInfoFlags\""
            export CXIdxDeclInfoFlags
            var"c\"CXIdxDeclInfoFlags\""
        end
        begin
            primitive type var"(c\"CXIdxDeclInfoFlags\")" <: var"c\"CXIdxDeclInfoFlags\"" 32 end
            (::(Type){var"(c\"CXIdxDeclInfoFlags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIdxDeclInfoFlags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIdxDeclInfoFlags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIdxDeclFlag_Skipped\""), 0x0000000000000001}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIdxDeclInfoFlags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxDeclInfoFlags\")"}) = begin
                    var"(c\"CXIdxDeclInfoFlags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxDeclInfoFlags\""}) = begin
                    var"(c\"CXIdxDeclInfoFlags\")"
                end
            const var"c\"CXIdxDeclFlag_Skipped\"" = var"(c\"CXIdxDeclInfoFlags\")"(0x0000000000000001)
            const CXIdxDeclInfoFlags = var"c\"CXIdxDeclInfoFlags\""
            const CXIdxDeclFlag_Skipped = var"c\"CXIdxDeclFlag_Skipped\""
            export var"c\"CXIdxDeclInfoFlags\"", var"(c\"CXIdxDeclInfoFlags\")", var"c\"CXIdxDeclFlag_Skipped\""
            export CXIdxDeclInfoFlags, CXIdxDeclFlag_Skipped
            var"c\"CXIdxDeclInfoFlags\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxDeclInfo\"" <: Cstruct end
            const CXIdxDeclInfo = var"c\"CXIdxDeclInfo\""
            export var"c\"CXIdxDeclInfo\""
            export CXIdxDeclInfo
            var"c\"CXIdxDeclInfo\""
        end
        begin
            struct var"(c\"CXIdxDeclInfo\")" <: var"c\"CXIdxDeclInfo\""
                mem::C.NTuple{128, C.UInt8}
                var"(c\"CXIdxDeclInfo\")"(::C.UndefInitializer, mem::C.NTuple{128, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxDeclInfo\")"}) = begin
                    C.Tuple{C.Tuple{:entityInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 0, 0, -1}}, C.Tuple{:cursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 8, 0, -1}}, C.Tuple{:loc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 40, 0, -1}}, C.Tuple{:semanticContainer, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), 64, 0, -1}}, C.Tuple{:lexicalContainer, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), 72, 0, -1}}, C.Tuple{:isRedeclaration, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 80, 0, -1}}, C.Tuple{:isDefinition, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 84, 0, -1}}, C.Tuple{:isContainer, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 88, 0, -1}}, C.Tuple{:declAsContainer, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), 96, 0, -1}}, C.Tuple{:isImplicit, C.Tuple{C.Cint, C.bitstype(C.Cint), C.integraltype(C.Cint), 104, 0, -1}}, C.Tuple{:attributes, C.Tuple{C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}}}, C.bitstype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}}}), C.integraltype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}}}), 112, 0, -1}}, C.Tuple{:numAttributes, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 120, 0, -1}}, C.Tuple{:flags, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 124, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxDeclInfo\")"}) = begin
                    var"(c\"CXIdxDeclInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxDeclInfo\""}) = begin
                    var"(c\"CXIdxDeclInfo\")"
                end
            const CXIdxDeclInfo = var"c\"CXIdxDeclInfo\""
            export var"c\"CXIdxDeclInfo\"", var"(c\"CXIdxDeclInfo\")"
            export CXIdxDeclInfo
            var"c\"CXIdxDeclInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxObjCContainerKind\"" <: Cenum end
            const CXIdxObjCContainerKind = var"c\"CXIdxObjCContainerKind\""
            export var"c\"CXIdxObjCContainerKind\""
            export CXIdxObjCContainerKind
            var"c\"CXIdxObjCContainerKind\""
        end
        begin
            primitive type var"(c\"CXIdxObjCContainerKind\")" <: var"c\"CXIdxObjCContainerKind\"" 32 end
            (::(Type){var"(c\"CXIdxObjCContainerKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIdxObjCContainerKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIdxObjCContainerKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIdxObjCContainer_ForwardRef\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXIdxObjCContainer_Interface\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXIdxObjCContainer_Implementation\""), 0x0000000000000002}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIdxObjCContainerKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxObjCContainerKind\")"}) = begin
                    var"(c\"CXIdxObjCContainerKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxObjCContainerKind\""}) = begin
                    var"(c\"CXIdxObjCContainerKind\")"
                end
            const var"c\"CXIdxObjCContainer_ForwardRef\"" = var"(c\"CXIdxObjCContainerKind\")"(0x0000000000000000)
            const var"c\"CXIdxObjCContainer_Interface\"" = var"(c\"CXIdxObjCContainerKind\")"(0x0000000000000001)
            const var"c\"CXIdxObjCContainer_Implementation\"" = var"(c\"CXIdxObjCContainerKind\")"(0x0000000000000002)
            const CXIdxObjCContainerKind = var"c\"CXIdxObjCContainerKind\""
            const CXIdxObjCContainer_ForwardRef = var"c\"CXIdxObjCContainer_ForwardRef\""
            const CXIdxObjCContainer_Interface = var"c\"CXIdxObjCContainer_Interface\""
            const CXIdxObjCContainer_Implementation = var"c\"CXIdxObjCContainer_Implementation\""
            export var"c\"CXIdxObjCContainerKind\"", var"(c\"CXIdxObjCContainerKind\")", var"c\"CXIdxObjCContainer_ForwardRef\"", var"c\"CXIdxObjCContainer_Interface\"", var"c\"CXIdxObjCContainer_Implementation\""
            export CXIdxObjCContainerKind, CXIdxObjCContainer_ForwardRef, CXIdxObjCContainer_Interface, CXIdxObjCContainer_Implementation
            var"c\"CXIdxObjCContainerKind\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxObjCContainerDeclInfo\"" <: Cstruct end
            const CXIdxObjCContainerDeclInfo = var"c\"CXIdxObjCContainerDeclInfo\""
            export var"c\"CXIdxObjCContainerDeclInfo\""
            export CXIdxObjCContainerDeclInfo
            var"c\"CXIdxObjCContainerDeclInfo\""
        end
        begin
            struct var"(c\"CXIdxObjCContainerDeclInfo\")" <: var"c\"CXIdxObjCContainerDeclInfo\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXIdxObjCContainerDeclInfo\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxObjCContainerDeclInfo\")"}) = begin
                    C.Tuple{C.Tuple{:declInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}), 0, 0, -1}}, C.Tuple{:kind, C.Tuple{var"c\"CXIdxObjCContainerKind\"", C.bitstype(var"c\"CXIdxObjCContainerKind\""), C.integraltype(var"c\"CXIdxObjCContainerKind\""), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxObjCContainerDeclInfo\")"}) = begin
                    var"(c\"CXIdxObjCContainerDeclInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxObjCContainerDeclInfo\""}) = begin
                    var"(c\"CXIdxObjCContainerDeclInfo\")"
                end
            const CXIdxObjCContainerDeclInfo = var"c\"CXIdxObjCContainerDeclInfo\""
            export var"c\"CXIdxObjCContainerDeclInfo\"", var"(c\"CXIdxObjCContainerDeclInfo\")"
            export CXIdxObjCContainerDeclInfo
            var"c\"CXIdxObjCContainerDeclInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxBaseClassInfo\"" <: Cstruct end
            const CXIdxBaseClassInfo = var"c\"CXIdxBaseClassInfo\""
            export var"c\"CXIdxBaseClassInfo\""
            export CXIdxBaseClassInfo
            var"c\"CXIdxBaseClassInfo\""
        end
        begin
            struct var"(c\"CXIdxBaseClassInfo\")" <: var"c\"CXIdxBaseClassInfo\""
                mem::C.NTuple{64, C.UInt8}
                var"(c\"CXIdxBaseClassInfo\")"(::C.UndefInitializer, mem::C.NTuple{64, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxBaseClassInfo\")"}) = begin
                    C.Tuple{C.Tuple{:base, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 0, 0, -1}}, C.Tuple{:cursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 8, 0, -1}}, C.Tuple{:loc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 40, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxBaseClassInfo\")"}) = begin
                    var"(c\"CXIdxBaseClassInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxBaseClassInfo\""}) = begin
                    var"(c\"CXIdxBaseClassInfo\")"
                end
            const CXIdxBaseClassInfo = var"c\"CXIdxBaseClassInfo\""
            export var"c\"CXIdxBaseClassInfo\"", var"(c\"CXIdxBaseClassInfo\")"
            export CXIdxBaseClassInfo
            var"c\"CXIdxBaseClassInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxObjCProtocolRefInfo\"" <: Cstruct end
            const CXIdxObjCProtocolRefInfo = var"c\"CXIdxObjCProtocolRefInfo\""
            export var"c\"CXIdxObjCProtocolRefInfo\""
            export CXIdxObjCProtocolRefInfo
            var"c\"CXIdxObjCProtocolRefInfo\""
        end
        begin
            struct var"(c\"CXIdxObjCProtocolRefInfo\")" <: var"c\"CXIdxObjCProtocolRefInfo\""
                mem::C.NTuple{64, C.UInt8}
                var"(c\"CXIdxObjCProtocolRefInfo\")"(::C.UndefInitializer, mem::C.NTuple{64, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxObjCProtocolRefInfo\")"}) = begin
                    C.Tuple{C.Tuple{:protocol, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 0, 0, -1}}, C.Tuple{:cursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 8, 0, -1}}, C.Tuple{:loc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 40, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxObjCProtocolRefInfo\")"}) = begin
                    var"(c\"CXIdxObjCProtocolRefInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxObjCProtocolRefInfo\""}) = begin
                    var"(c\"CXIdxObjCProtocolRefInfo\")"
                end
            const CXIdxObjCProtocolRefInfo = var"c\"CXIdxObjCProtocolRefInfo\""
            export var"c\"CXIdxObjCProtocolRefInfo\"", var"(c\"CXIdxObjCProtocolRefInfo\")"
            export CXIdxObjCProtocolRefInfo
            var"c\"CXIdxObjCProtocolRefInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxObjCProtocolRefListInfo\"" <: Cstruct end
            const CXIdxObjCProtocolRefListInfo = var"c\"CXIdxObjCProtocolRefListInfo\""
            export var"c\"CXIdxObjCProtocolRefListInfo\""
            export CXIdxObjCProtocolRefListInfo
            var"c\"CXIdxObjCProtocolRefListInfo\""
        end
        begin
            struct var"(c\"CXIdxObjCProtocolRefListInfo\")" <: var"c\"CXIdxObjCProtocolRefListInfo\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXIdxObjCProtocolRefListInfo\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxObjCProtocolRefListInfo\")"}) = begin
                    C.Tuple{C.Tuple{:protocols, C.Tuple{C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefInfo\""}}}}, C.bitstype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefInfo\""}}}}), C.integraltype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefInfo\""}}}}), 0, 0, -1}}, C.Tuple{:numProtocols, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxObjCProtocolRefListInfo\")"}) = begin
                    var"(c\"CXIdxObjCProtocolRefListInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxObjCProtocolRefListInfo\""}) = begin
                    var"(c\"CXIdxObjCProtocolRefListInfo\")"
                end
            const CXIdxObjCProtocolRefListInfo = var"c\"CXIdxObjCProtocolRefListInfo\""
            export var"c\"CXIdxObjCProtocolRefListInfo\"", var"(c\"CXIdxObjCProtocolRefListInfo\")"
            export CXIdxObjCProtocolRefListInfo
            var"c\"CXIdxObjCProtocolRefListInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxObjCInterfaceDeclInfo\"" <: Cstruct end
            const CXIdxObjCInterfaceDeclInfo = var"c\"CXIdxObjCInterfaceDeclInfo\""
            export var"c\"CXIdxObjCInterfaceDeclInfo\""
            export CXIdxObjCInterfaceDeclInfo
            var"c\"CXIdxObjCInterfaceDeclInfo\""
        end
        begin
            struct var"(c\"CXIdxObjCInterfaceDeclInfo\")" <: var"c\"CXIdxObjCInterfaceDeclInfo\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXIdxObjCInterfaceDeclInfo\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxObjCInterfaceDeclInfo\")"}) = begin
                    C.Tuple{C.Tuple{:containerInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxObjCContainerDeclInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxObjCContainerDeclInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxObjCContainerDeclInfo\""}}), 0, 0, -1}}, C.Tuple{:superInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxBaseClassInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxBaseClassInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxBaseClassInfo\""}}), 8, 0, -1}}, C.Tuple{:protocols, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefListInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefListInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefListInfo\""}}), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxObjCInterfaceDeclInfo\")"}) = begin
                    var"(c\"CXIdxObjCInterfaceDeclInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxObjCInterfaceDeclInfo\""}) = begin
                    var"(c\"CXIdxObjCInterfaceDeclInfo\")"
                end
            const CXIdxObjCInterfaceDeclInfo = var"c\"CXIdxObjCInterfaceDeclInfo\""
            export var"c\"CXIdxObjCInterfaceDeclInfo\"", var"(c\"CXIdxObjCInterfaceDeclInfo\")"
            export CXIdxObjCInterfaceDeclInfo
            var"c\"CXIdxObjCInterfaceDeclInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxObjCCategoryDeclInfo\"" <: Cstruct end
            const CXIdxObjCCategoryDeclInfo = var"c\"CXIdxObjCCategoryDeclInfo\""
            export var"c\"CXIdxObjCCategoryDeclInfo\""
            export CXIdxObjCCategoryDeclInfo
            var"c\"CXIdxObjCCategoryDeclInfo\""
        end
        begin
            struct var"(c\"CXIdxObjCCategoryDeclInfo\")" <: var"c\"CXIdxObjCCategoryDeclInfo\""
                mem::C.NTuple{80, C.UInt8}
                var"(c\"CXIdxObjCCategoryDeclInfo\")"(::C.UndefInitializer, mem::C.NTuple{80, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxObjCCategoryDeclInfo\")"}) = begin
                    C.Tuple{C.Tuple{:containerInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxObjCContainerDeclInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxObjCContainerDeclInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxObjCContainerDeclInfo\""}}), 0, 0, -1}}, C.Tuple{:objcClass, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 8, 0, -1}}, C.Tuple{:classCursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 16, 0, -1}}, C.Tuple{:classLoc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 48, 0, -1}}, C.Tuple{:protocols, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefListInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefListInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefListInfo\""}}), 72, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxObjCCategoryDeclInfo\")"}) = begin
                    var"(c\"CXIdxObjCCategoryDeclInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxObjCCategoryDeclInfo\""}) = begin
                    var"(c\"CXIdxObjCCategoryDeclInfo\")"
                end
            const CXIdxObjCCategoryDeclInfo = var"c\"CXIdxObjCCategoryDeclInfo\""
            export var"c\"CXIdxObjCCategoryDeclInfo\"", var"(c\"CXIdxObjCCategoryDeclInfo\")"
            export CXIdxObjCCategoryDeclInfo
            var"c\"CXIdxObjCCategoryDeclInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxObjCPropertyDeclInfo\"" <: Cstruct end
            const CXIdxObjCPropertyDeclInfo = var"c\"CXIdxObjCPropertyDeclInfo\""
            export var"c\"CXIdxObjCPropertyDeclInfo\""
            export CXIdxObjCPropertyDeclInfo
            var"c\"CXIdxObjCPropertyDeclInfo\""
        end
        begin
            struct var"(c\"CXIdxObjCPropertyDeclInfo\")" <: var"c\"CXIdxObjCPropertyDeclInfo\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXIdxObjCPropertyDeclInfo\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxObjCPropertyDeclInfo\")"}) = begin
                    C.Tuple{C.Tuple{:declInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}), 0, 0, -1}}, C.Tuple{:getter, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 8, 0, -1}}, C.Tuple{:setter, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxObjCPropertyDeclInfo\")"}) = begin
                    var"(c\"CXIdxObjCPropertyDeclInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxObjCPropertyDeclInfo\""}) = begin
                    var"(c\"CXIdxObjCPropertyDeclInfo\")"
                end
            const CXIdxObjCPropertyDeclInfo = var"c\"CXIdxObjCPropertyDeclInfo\""
            export var"c\"CXIdxObjCPropertyDeclInfo\"", var"(c\"CXIdxObjCPropertyDeclInfo\")"
            export CXIdxObjCPropertyDeclInfo
            var"c\"CXIdxObjCPropertyDeclInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxCXXClassDeclInfo\"" <: Cstruct end
            const CXIdxCXXClassDeclInfo = var"c\"CXIdxCXXClassDeclInfo\""
            export var"c\"CXIdxCXXClassDeclInfo\""
            export CXIdxCXXClassDeclInfo
            var"c\"CXIdxCXXClassDeclInfo\""
        end
        begin
            struct var"(c\"CXIdxCXXClassDeclInfo\")" <: var"c\"CXIdxCXXClassDeclInfo\""
                mem::C.NTuple{24, C.UInt8}
                var"(c\"CXIdxCXXClassDeclInfo\")"(::C.UndefInitializer, mem::C.NTuple{24, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxCXXClassDeclInfo\")"}) = begin
                    C.Tuple{C.Tuple{:declInfo, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}), 0, 0, -1}}, C.Tuple{:bases, C.Tuple{C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxBaseClassInfo\""}}}}, C.bitstype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxBaseClassInfo\""}}}}), C.integraltype(C.Cptr{C.Cconst{C.Cptr{C.Cconst{var"c\"CXIdxBaseClassInfo\""}}}}), 8, 0, -1}}, C.Tuple{:numBases, C.Tuple{C.Cuint, C.bitstype(C.Cuint), C.integraltype(C.Cuint), 16, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxCXXClassDeclInfo\")"}) = begin
                    var"(c\"CXIdxCXXClassDeclInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxCXXClassDeclInfo\""}) = begin
                    var"(c\"CXIdxCXXClassDeclInfo\")"
                end
            const CXIdxCXXClassDeclInfo = var"c\"CXIdxCXXClassDeclInfo\""
            export var"c\"CXIdxCXXClassDeclInfo\"", var"(c\"CXIdxCXXClassDeclInfo\")"
            export CXIdxCXXClassDeclInfo
            var"c\"CXIdxCXXClassDeclInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxEntityRefKind\"" <: Cenum end
            const CXIdxEntityRefKind = var"c\"CXIdxEntityRefKind\""
            export var"c\"CXIdxEntityRefKind\""
            export CXIdxEntityRefKind
            var"c\"CXIdxEntityRefKind\""
        end
        begin
            primitive type var"(c\"CXIdxEntityRefKind\")" <: var"c\"CXIdxEntityRefKind\"" 32 end
            (::(Type){var"(c\"CXIdxEntityRefKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIdxEntityRefKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIdxEntityRefKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIdxEntityRef_Direct\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXIdxEntityRef_Implicit\""), 0x0000000000000002}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIdxEntityRefKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxEntityRefKind\")"}) = begin
                    var"(c\"CXIdxEntityRefKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxEntityRefKind\""}) = begin
                    var"(c\"CXIdxEntityRefKind\")"
                end
            const var"c\"CXIdxEntityRef_Direct\"" = var"(c\"CXIdxEntityRefKind\")"(0x0000000000000001)
            const var"c\"CXIdxEntityRef_Implicit\"" = var"(c\"CXIdxEntityRefKind\")"(0x0000000000000002)
            const CXIdxEntityRefKind = var"c\"CXIdxEntityRefKind\""
            const CXIdxEntityRef_Direct = var"c\"CXIdxEntityRef_Direct\""
            const CXIdxEntityRef_Implicit = var"c\"CXIdxEntityRef_Implicit\""
            export var"c\"CXIdxEntityRefKind\"", var"(c\"CXIdxEntityRefKind\")", var"c\"CXIdxEntityRef_Direct\"", var"c\"CXIdxEntityRef_Implicit\""
            export CXIdxEntityRefKind, CXIdxEntityRef_Direct, CXIdxEntityRef_Implicit
            var"c\"CXIdxEntityRefKind\""
        end
        begin
        end
        begin
            abstract type var"c\"CXSymbolRole\"" <: Cenum end
            const CXSymbolRole = var"c\"CXSymbolRole\""
            export var"c\"CXSymbolRole\""
            export CXSymbolRole
            var"c\"CXSymbolRole\""
        end
        begin
            primitive type var"(c\"CXSymbolRole\")" <: var"c\"CXSymbolRole\"" 32 end
            (::(Type){var"(c\"CXSymbolRole\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXSymbolRole\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXSymbolRole\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXSymbolRole_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXSymbolRole_Declaration\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXSymbolRole_Definition\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXSymbolRole_Reference\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXSymbolRole_Read\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXSymbolRole_Write\""), 0x0000000000000010}, C.Tuple{Symbol("c\"CXSymbolRole_Call\""), 0x0000000000000020}, C.Tuple{Symbol("c\"CXSymbolRole_Dynamic\""), 0x0000000000000040}, C.Tuple{Symbol("c\"CXSymbolRole_AddressOf\""), 0x0000000000000080}, C.Tuple{Symbol("c\"CXSymbolRole_Implicit\""), 0x0000000000000100}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXSymbolRole\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXSymbolRole\")"}) = begin
                    var"(c\"CXSymbolRole\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXSymbolRole\""}) = begin
                    var"(c\"CXSymbolRole\")"
                end
            const var"c\"CXSymbolRole_None\"" = var"(c\"CXSymbolRole\")"(0x0000000000000000)
            const var"c\"CXSymbolRole_Declaration\"" = var"(c\"CXSymbolRole\")"(0x0000000000000001)
            const var"c\"CXSymbolRole_Definition\"" = var"(c\"CXSymbolRole\")"(0x0000000000000002)
            const var"c\"CXSymbolRole_Reference\"" = var"(c\"CXSymbolRole\")"(0x0000000000000004)
            const var"c\"CXSymbolRole_Read\"" = var"(c\"CXSymbolRole\")"(0x0000000000000008)
            const var"c\"CXSymbolRole_Write\"" = var"(c\"CXSymbolRole\")"(0x0000000000000010)
            const var"c\"CXSymbolRole_Call\"" = var"(c\"CXSymbolRole\")"(0x0000000000000020)
            const var"c\"CXSymbolRole_Dynamic\"" = var"(c\"CXSymbolRole\")"(0x0000000000000040)
            const var"c\"CXSymbolRole_AddressOf\"" = var"(c\"CXSymbolRole\")"(0x0000000000000080)
            const var"c\"CXSymbolRole_Implicit\"" = var"(c\"CXSymbolRole\")"(0x0000000000000100)
            const CXSymbolRole = var"c\"CXSymbolRole\""
            const CXSymbolRole_None = var"c\"CXSymbolRole_None\""
            const CXSymbolRole_Declaration = var"c\"CXSymbolRole_Declaration\""
            const CXSymbolRole_Definition = var"c\"CXSymbolRole_Definition\""
            const CXSymbolRole_Reference = var"c\"CXSymbolRole_Reference\""
            const CXSymbolRole_Read = var"c\"CXSymbolRole_Read\""
            const CXSymbolRole_Write = var"c\"CXSymbolRole_Write\""
            const CXSymbolRole_Call = var"c\"CXSymbolRole_Call\""
            const CXSymbolRole_Dynamic = var"c\"CXSymbolRole_Dynamic\""
            const CXSymbolRole_AddressOf = var"c\"CXSymbolRole_AddressOf\""
            const CXSymbolRole_Implicit = var"c\"CXSymbolRole_Implicit\""
            export var"c\"CXSymbolRole\"", var"(c\"CXSymbolRole\")", var"c\"CXSymbolRole_None\"", var"c\"CXSymbolRole_Declaration\"", var"c\"CXSymbolRole_Definition\"", var"c\"CXSymbolRole_Reference\"", var"c\"CXSymbolRole_Read\"", var"c\"CXSymbolRole_Write\"", var"c\"CXSymbolRole_Call\"", var"c\"CXSymbolRole_Dynamic\"", var"c\"CXSymbolRole_AddressOf\"", var"c\"CXSymbolRole_Implicit\""
            export CXSymbolRole, CXSymbolRole_None, CXSymbolRole_Declaration, CXSymbolRole_Definition, CXSymbolRole_Reference, CXSymbolRole_Read, CXSymbolRole_Write, CXSymbolRole_Call, CXSymbolRole_Dynamic, CXSymbolRole_AddressOf, CXSymbolRole_Implicit
            var"c\"CXSymbolRole\""
        end
        begin
        end
        begin
            abstract type var"c\"CXIdxEntityRefInfo\"" <: Cstruct end
            const CXIdxEntityRefInfo = var"c\"CXIdxEntityRefInfo\""
            export var"c\"CXIdxEntityRefInfo\""
            export CXIdxEntityRefInfo
            var"c\"CXIdxEntityRefInfo\""
        end
        begin
            struct var"(c\"CXIdxEntityRefInfo\")" <: var"c\"CXIdxEntityRefInfo\""
                mem::C.NTuple{96, C.UInt8}
                var"(c\"CXIdxEntityRefInfo\")"(::C.UndefInitializer, mem::C.NTuple{96, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXIdxEntityRefInfo\")"}) = begin
                    C.Tuple{C.Tuple{:kind, C.Tuple{var"c\"CXIdxEntityRefKind\"", C.bitstype(var"c\"CXIdxEntityRefKind\""), C.integraltype(var"c\"CXIdxEntityRefKind\""), 0, 0, -1}}, C.Tuple{:cursor, C.Tuple{var"c\"CXCursor\"", C.bitstype(var"c\"CXCursor\""), C.integraltype(var"c\"CXCursor\""), 8, 0, -1}}, C.Tuple{:loc, C.Tuple{var"c\"CXIdxLoc\"", C.bitstype(var"c\"CXIdxLoc\""), C.integraltype(var"c\"CXIdxLoc\""), 40, 0, -1}}, C.Tuple{:referencedEntity, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 64, 0, -1}}, C.Tuple{:parentEntity, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}), 72, 0, -1}}, C.Tuple{:container, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}, C.bitstype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), C.integraltype(C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}), 80, 0, -1}}, C.Tuple{:role, C.Tuple{var"c\"CXSymbolRole\"", C.bitstype(var"c\"CXSymbolRole\""), C.integraltype(var"c\"CXSymbolRole\""), 88, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIdxEntityRefInfo\")"}) = begin
                    var"(c\"CXIdxEntityRefInfo\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIdxEntityRefInfo\""}) = begin
                    var"(c\"CXIdxEntityRefInfo\")"
                end
            const CXIdxEntityRefInfo = var"c\"CXIdxEntityRefInfo\""
            export var"c\"CXIdxEntityRefInfo\"", var"(c\"CXIdxEntityRefInfo\")"
            export CXIdxEntityRefInfo
            var"c\"CXIdxEntityRefInfo\""
        end
        begin
        end
        begin
            abstract type var"c\"IndexerCallbacks\"" <: Cstruct end
            const IndexerCallbacks = var"c\"IndexerCallbacks\""
            export var"c\"IndexerCallbacks\""
            export IndexerCallbacks
            var"c\"IndexerCallbacks\""
        end
        begin
            struct var"(c\"IndexerCallbacks\")" <: var"c\"IndexerCallbacks\""
                mem::C.NTuple{64, C.UInt8}
                var"(c\"IndexerCallbacks\")"(::C.UndefInitializer, mem::C.NTuple{64, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"IndexerCallbacks\")"}) = begin
                    C.Tuple{C.Tuple{:abortQuery, C.Tuple{C.Cptr{C.Cfunction{C.Cint, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cvoid}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{C.Cint, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cvoid}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{C.Cint, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cvoid}}, :cdecl}}), 0, 0, -1}}, C.Tuple{:diagnostic, C.Tuple{C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", var"c\"CXDiagnosticSet\"", C.Cptr{C.Cvoid}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", var"c\"CXDiagnosticSet\"", C.Cptr{C.Cvoid}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", var"c\"CXDiagnosticSet\"", C.Cptr{C.Cvoid}}, :cdecl}}), 8, 0, -1}}, C.Tuple{:enteredMainFile, C.Tuple{C.Cptr{C.Cfunction{var"c\"CXIdxClientFile\"", C.Tuple{var"c\"CXClientData\"", var"c\"CXFile\"", C.Cptr{C.Cvoid}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{var"c\"CXIdxClientFile\"", C.Tuple{var"c\"CXClientData\"", var"c\"CXFile\"", C.Cptr{C.Cvoid}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{var"c\"CXIdxClientFile\"", C.Tuple{var"c\"CXClientData\"", var"c\"CXFile\"", C.Cptr{C.Cvoid}}, :cdecl}}), 16, 0, -1}}, C.Tuple{:ppIncludedFile, C.Tuple{C.Cptr{C.Cfunction{var"c\"CXIdxClientFile\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxIncludedFileInfo\""}}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{var"c\"CXIdxClientFile\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxIncludedFileInfo\""}}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{var"c\"CXIdxClientFile\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxIncludedFileInfo\""}}}, :cdecl}}), 24, 0, -1}}, C.Tuple{:importedASTFile, C.Tuple{C.Cptr{C.Cfunction{var"c\"CXIdxClientASTFile\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxImportedASTFileInfo\""}}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{var"c\"CXIdxClientASTFile\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxImportedASTFileInfo\""}}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{var"c\"CXIdxClientASTFile\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxImportedASTFileInfo\""}}}, :cdecl}}), 32, 0, -1}}, C.Tuple{:startedTranslationUnit, C.Tuple{C.Cptr{C.Cfunction{var"c\"CXIdxClientContainer\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cvoid}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{var"c\"CXIdxClientContainer\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cvoid}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{var"c\"CXIdxClientContainer\"", C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cvoid}}, :cdecl}}), 40, 0, -1}}, C.Tuple{:indexDeclaration, C.Tuple{C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}}), 48, 0, -1}}, C.Tuple{:indexEntityReference, C.Tuple{C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxEntityRefInfo\""}}}, :cdecl}}, C.bitstype(C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxEntityRefInfo\""}}}, :cdecl}}), C.integraltype(C.Cptr{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXClientData\"", C.Cptr{C.Cconst{var"c\"CXIdxEntityRefInfo\""}}}, :cdecl}}), 56, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"IndexerCallbacks\")"}) = begin
                    var"(c\"IndexerCallbacks\")"
                end
            (C.C).bitstype(::C.Type{var"c\"IndexerCallbacks\""}) = begin
                    var"(c\"IndexerCallbacks\")"
                end
            const IndexerCallbacks = var"c\"IndexerCallbacks\""
            export var"c\"IndexerCallbacks\"", var"(c\"IndexerCallbacks\")"
            export IndexerCallbacks
            var"c\"IndexerCallbacks\""
        end
        begin
        end
        begin
            const var"c\"clang_index_isEntityObjCContainerKind\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXIdxEntityKind\""}, :cdecl}, libpath, :clang_index_isEntityObjCContainerKind}()
            (func::C.typeof(var"c\"clang_index_isEntityObjCContainerKind\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_isEntityObjCContainerKind = var"c\"clang_index_isEntityObjCContainerKind\""
            export var"c\"clang_index_isEntityObjCContainerKind\""
            export clang_index_isEntityObjCContainerKind
            var"c\"clang_index_isEntityObjCContainerKind\""
        end
        begin
            const var"c\"clang_index_getObjCContainerDeclInfo\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{var"c\"CXIdxObjCContainerDeclInfo\""}}, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}, libpath, :clang_index_getObjCContainerDeclInfo}()
            (func::C.typeof(var"c\"clang_index_getObjCContainerDeclInfo\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getObjCContainerDeclInfo = var"c\"clang_index_getObjCContainerDeclInfo\""
            export var"c\"clang_index_getObjCContainerDeclInfo\""
            export clang_index_getObjCContainerDeclInfo
            var"c\"clang_index_getObjCContainerDeclInfo\""
        end
        begin
            const var"c\"clang_index_getObjCInterfaceDeclInfo\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{var"c\"CXIdxObjCInterfaceDeclInfo\""}}, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}, libpath, :clang_index_getObjCInterfaceDeclInfo}()
            (func::C.typeof(var"c\"clang_index_getObjCInterfaceDeclInfo\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getObjCInterfaceDeclInfo = var"c\"clang_index_getObjCInterfaceDeclInfo\""
            export var"c\"clang_index_getObjCInterfaceDeclInfo\""
            export clang_index_getObjCInterfaceDeclInfo
            var"c\"clang_index_getObjCInterfaceDeclInfo\""
        end
        begin
            const var"c\"clang_index_getObjCCategoryDeclInfo\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{var"c\"CXIdxObjCCategoryDeclInfo\""}}, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}, libpath, :clang_index_getObjCCategoryDeclInfo}()
            (func::C.typeof(var"c\"clang_index_getObjCCategoryDeclInfo\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getObjCCategoryDeclInfo = var"c\"clang_index_getObjCCategoryDeclInfo\""
            export var"c\"clang_index_getObjCCategoryDeclInfo\""
            export clang_index_getObjCCategoryDeclInfo
            var"c\"clang_index_getObjCCategoryDeclInfo\""
        end
        begin
            const var"c\"clang_index_getObjCProtocolRefListInfo\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{var"c\"CXIdxObjCProtocolRefListInfo\""}}, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}, libpath, :clang_index_getObjCProtocolRefListInfo}()
            (func::C.typeof(var"c\"clang_index_getObjCProtocolRefListInfo\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getObjCProtocolRefListInfo = var"c\"clang_index_getObjCProtocolRefListInfo\""
            export var"c\"clang_index_getObjCProtocolRefListInfo\""
            export clang_index_getObjCProtocolRefListInfo
            var"c\"clang_index_getObjCProtocolRefListInfo\""
        end
        begin
            const var"c\"clang_index_getObjCPropertyDeclInfo\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{var"c\"CXIdxObjCPropertyDeclInfo\""}}, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}, libpath, :clang_index_getObjCPropertyDeclInfo}()
            (func::C.typeof(var"c\"clang_index_getObjCPropertyDeclInfo\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getObjCPropertyDeclInfo = var"c\"clang_index_getObjCPropertyDeclInfo\""
            export var"c\"clang_index_getObjCPropertyDeclInfo\""
            export clang_index_getObjCPropertyDeclInfo
            var"c\"clang_index_getObjCPropertyDeclInfo\""
        end
        begin
            const var"c\"clang_index_getIBOutletCollectionAttrInfo\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{var"c\"CXIdxIBOutletCollectionAttrInfo\""}}, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxAttrInfo\""}}}, :cdecl}, libpath, :clang_index_getIBOutletCollectionAttrInfo}()
            (func::C.typeof(var"c\"clang_index_getIBOutletCollectionAttrInfo\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getIBOutletCollectionAttrInfo = var"c\"clang_index_getIBOutletCollectionAttrInfo\""
            export var"c\"clang_index_getIBOutletCollectionAttrInfo\""
            export clang_index_getIBOutletCollectionAttrInfo
            var"c\"clang_index_getIBOutletCollectionAttrInfo\""
        end
        begin
            const var"c\"clang_index_getCXXClassDeclInfo\"" = C.Cbinding{C.Cfunction{C.Cptr{C.Cconst{var"c\"CXIdxCXXClassDeclInfo\""}}, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxDeclInfo\""}}}, :cdecl}, libpath, :clang_index_getCXXClassDeclInfo}()
            (func::C.typeof(var"c\"clang_index_getCXXClassDeclInfo\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getCXXClassDeclInfo = var"c\"clang_index_getCXXClassDeclInfo\""
            export var"c\"clang_index_getCXXClassDeclInfo\""
            export clang_index_getCXXClassDeclInfo
            var"c\"clang_index_getCXXClassDeclInfo\""
        end
        begin
            const var"c\"clang_index_getClientContainer\"" = C.Cbinding{C.Cfunction{var"c\"CXIdxClientContainer\"", C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}}, :cdecl}, libpath, :clang_index_getClientContainer}()
            (func::C.typeof(var"c\"clang_index_getClientContainer\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getClientContainer = var"c\"clang_index_getClientContainer\""
            export var"c\"clang_index_getClientContainer\""
            export clang_index_getClientContainer
            var"c\"clang_index_getClientContainer\""
        end
        begin
            const var"c\"clang_index_setClientContainer\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxContainerInfo\""}}, var"c\"CXIdxClientContainer\""}, :cdecl}, libpath, :clang_index_setClientContainer}()
            (func::C.typeof(var"c\"clang_index_setClientContainer\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_index_setClientContainer = var"c\"clang_index_setClientContainer\""
            export var"c\"clang_index_setClientContainer\""
            export clang_index_setClientContainer
            var"c\"clang_index_setClientContainer\""
        end
        begin
            const var"c\"clang_index_getClientEntity\"" = C.Cbinding{C.Cfunction{var"c\"CXIdxClientEntity\"", C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}}, :cdecl}, libpath, :clang_index_getClientEntity}()
            (func::C.typeof(var"c\"clang_index_getClientEntity\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_index_getClientEntity = var"c\"clang_index_getClientEntity\""
            export var"c\"clang_index_getClientEntity\""
            export clang_index_getClientEntity
            var"c\"clang_index_getClientEntity\""
        end
        begin
            const var"c\"clang_index_setClientEntity\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{C.Cptr{C.Cconst{var"c\"CXIdxEntityInfo\""}}, var"c\"CXIdxClientEntity\""}, :cdecl}, libpath, :clang_index_setClientEntity}()
            (func::C.typeof(var"c\"clang_index_setClientEntity\""))(arg1, arg2) = begin
                    C.funccall(func, arg1, arg2)
                end
            const clang_index_setClientEntity = var"c\"clang_index_setClientEntity\""
            export var"c\"clang_index_setClientEntity\""
            export clang_index_setClientEntity
            var"c\"clang_index_setClientEntity\""
        end
        begin
            const var"c\"CXIndexAction\"" = C.Cptr{C.Cvoid}
            const CXIndexAction = var"c\"CXIndexAction\""
            export var"c\"CXIndexAction\""
            export CXIndexAction
            var"c\"CXIndexAction\""
        end
        begin
            const var"c\"clang_IndexAction_create\"" = C.Cbinding{C.Cfunction{var"c\"CXIndexAction\"", C.Tuple{var"c\"CXIndex\""}, :cdecl}, libpath, :clang_IndexAction_create}()
            (func::C.typeof(var"c\"clang_IndexAction_create\""))(var"c\"CIdx\"") = begin
                    C.funccall(func, var"c\"CIdx\"")
                end
            const clang_IndexAction_create = var"c\"clang_IndexAction_create\""
            export var"c\"clang_IndexAction_create\""
            export clang_IndexAction_create
            var"c\"clang_IndexAction_create\""
        end
        begin
            const var"c\"clang_IndexAction_dispose\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXIndexAction\""}, :cdecl}, libpath, :clang_IndexAction_dispose}()
            (func::C.typeof(var"c\"clang_IndexAction_dispose\""))(arg1) = begin
                    C.funccall(func, arg1)
                end
            const clang_IndexAction_dispose = var"c\"clang_IndexAction_dispose\""
            export var"c\"clang_IndexAction_dispose\""
            export clang_IndexAction_dispose
            var"c\"clang_IndexAction_dispose\""
        end
        begin
            abstract type var"c\"CXIndexOptFlags\"" <: Cenum end
            const CXIndexOptFlags = var"c\"CXIndexOptFlags\""
            export var"c\"CXIndexOptFlags\""
            export CXIndexOptFlags
            var"c\"CXIndexOptFlags\""
        end
        begin
            primitive type var"(c\"CXIndexOptFlags\")" <: var"c\"CXIndexOptFlags\"" 32 end
            (::(Type){var"(c\"CXIndexOptFlags\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"CXIndexOptFlags\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"CXIndexOptFlags\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXIndexOpt_None\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXIndexOpt_SuppressRedundantRefs\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXIndexOpt_IndexFunctionLocalSymbols\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXIndexOpt_IndexImplicitTemplateInstantiations\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXIndexOpt_SuppressWarnings\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXIndexOpt_SkipParsedBodiesInSession\""), 0x0000000000000010}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"CXIndexOptFlags\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"CXIndexOptFlags\")"}) = begin
                    var"(c\"CXIndexOptFlags\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXIndexOptFlags\""}) = begin
                    var"(c\"CXIndexOptFlags\")"
                end
            const var"c\"CXIndexOpt_None\"" = var"(c\"CXIndexOptFlags\")"(0x0000000000000000)
            const var"c\"CXIndexOpt_SuppressRedundantRefs\"" = var"(c\"CXIndexOptFlags\")"(0x0000000000000001)
            const var"c\"CXIndexOpt_IndexFunctionLocalSymbols\"" = var"(c\"CXIndexOptFlags\")"(0x0000000000000002)
            const var"c\"CXIndexOpt_IndexImplicitTemplateInstantiations\"" = var"(c\"CXIndexOptFlags\")"(0x0000000000000004)
            const var"c\"CXIndexOpt_SuppressWarnings\"" = var"(c\"CXIndexOptFlags\")"(0x0000000000000008)
            const var"c\"CXIndexOpt_SkipParsedBodiesInSession\"" = var"(c\"CXIndexOptFlags\")"(0x0000000000000010)
            const CXIndexOptFlags = var"c\"CXIndexOptFlags\""
            const CXIndexOpt_None = var"c\"CXIndexOpt_None\""
            const CXIndexOpt_SuppressRedundantRefs = var"c\"CXIndexOpt_SuppressRedundantRefs\""
            const CXIndexOpt_IndexFunctionLocalSymbols = var"c\"CXIndexOpt_IndexFunctionLocalSymbols\""
            const CXIndexOpt_IndexImplicitTemplateInstantiations = var"c\"CXIndexOpt_IndexImplicitTemplateInstantiations\""
            const CXIndexOpt_SuppressWarnings = var"c\"CXIndexOpt_SuppressWarnings\""
            const CXIndexOpt_SkipParsedBodiesInSession = var"c\"CXIndexOpt_SkipParsedBodiesInSession\""
            export var"c\"CXIndexOptFlags\"", var"(c\"CXIndexOptFlags\")", var"c\"CXIndexOpt_None\"", var"c\"CXIndexOpt_SuppressRedundantRefs\"", var"c\"CXIndexOpt_IndexFunctionLocalSymbols\"", var"c\"CXIndexOpt_IndexImplicitTemplateInstantiations\"", var"c\"CXIndexOpt_SuppressWarnings\"", var"c\"CXIndexOpt_SkipParsedBodiesInSession\""
            export CXIndexOptFlags, CXIndexOpt_None, CXIndexOpt_SuppressRedundantRefs, CXIndexOpt_IndexFunctionLocalSymbols, CXIndexOpt_IndexImplicitTemplateInstantiations, CXIndexOpt_SuppressWarnings, CXIndexOpt_SkipParsedBodiesInSession
            var"c\"CXIndexOptFlags\""
        end
        begin
        end
        begin
            const var"c\"clang_indexSourceFile\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXIndexAction\"", var"c\"CXClientData\"", C.Cptr{var"c\"IndexerCallbacks\""}, C.Cuint, C.Cuint, C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{C.Cconst{C.Cptr{C.Cconst{C.Cchar}}}}, C.Cint, C.Cptr{var"c\"struct CXUnsavedFile\""}, C.Cuint, C.Cptr{var"c\"CXTranslationUnit\""}, C.Cuint}, :cdecl}, libpath, :clang_indexSourceFile}()
            (func::C.typeof(var"c\"clang_indexSourceFile\""))(arg1, var"c\"client_data\"", var"c\"index_callbacks\"", var"c\"index_callbacks_size\"", var"c\"index_options\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"out_TU\"", var"c\"TU_options\"") = begin
                    C.funccall(func, arg1, var"c\"client_data\"", var"c\"index_callbacks\"", var"c\"index_callbacks_size\"", var"c\"index_options\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"out_TU\"", var"c\"TU_options\"")
                end
            const clang_indexSourceFile = var"c\"clang_indexSourceFile\""
            export var"c\"clang_indexSourceFile\""
            export clang_indexSourceFile
            var"c\"clang_indexSourceFile\""
        end
        begin
            const var"c\"clang_indexSourceFileFullArgv\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXIndexAction\"", var"c\"CXClientData\"", C.Cptr{var"c\"IndexerCallbacks\""}, C.Cuint, C.Cuint, C.Cptr{C.Cconst{C.Cchar}}, C.Cptr{C.Cconst{C.Cptr{C.Cconst{C.Cchar}}}}, C.Cint, C.Cptr{var"c\"struct CXUnsavedFile\""}, C.Cuint, C.Cptr{var"c\"CXTranslationUnit\""}, C.Cuint}, :cdecl}, libpath, :clang_indexSourceFileFullArgv}()
            (func::C.typeof(var"c\"clang_indexSourceFileFullArgv\""))(arg1, var"c\"client_data\"", var"c\"index_callbacks\"", var"c\"index_callbacks_size\"", var"c\"index_options\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"out_TU\"", var"c\"TU_options\"") = begin
                    C.funccall(func, arg1, var"c\"client_data\"", var"c\"index_callbacks\"", var"c\"index_callbacks_size\"", var"c\"index_options\"", var"c\"source_filename\"", var"c\"command_line_args\"", var"c\"num_command_line_args\"", var"c\"unsaved_files\"", var"c\"num_unsaved_files\"", var"c\"out_TU\"", var"c\"TU_options\"")
                end
            const clang_indexSourceFileFullArgv = var"c\"clang_indexSourceFileFullArgv\""
            export var"c\"clang_indexSourceFileFullArgv\""
            export clang_indexSourceFileFullArgv
            var"c\"clang_indexSourceFileFullArgv\""
        end
        begin
            const var"c\"clang_indexTranslationUnit\"" = C.Cbinding{C.Cfunction{C.Cint, C.Tuple{var"c\"CXIndexAction\"", var"c\"CXClientData\"", C.Cptr{var"c\"IndexerCallbacks\""}, C.Cuint, C.Cuint, var"c\"CXTranslationUnit\""}, :cdecl}, libpath, :clang_indexTranslationUnit}()
            (func::C.typeof(var"c\"clang_indexTranslationUnit\""))(arg1, var"c\"client_data\"", var"c\"index_callbacks\"", var"c\"index_callbacks_size\"", var"c\"index_options\"", arg6) = begin
                    C.funccall(func, arg1, var"c\"client_data\"", var"c\"index_callbacks\"", var"c\"index_callbacks_size\"", var"c\"index_options\"", arg6)
                end
            const clang_indexTranslationUnit = var"c\"clang_indexTranslationUnit\""
            export var"c\"clang_indexTranslationUnit\""
            export clang_indexTranslationUnit
            var"c\"clang_indexTranslationUnit\""
        end
        begin
            const var"c\"clang_indexLoc_getFileLocation\"" = C.Cbinding{C.Cfunction{C.Cvoid, C.Tuple{var"c\"CXIdxLoc\"", C.Cptr{var"c\"CXIdxClientFile\""}, C.Cptr{var"c\"CXFile\""}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}, C.Cptr{C.Cuint}}, :cdecl}, libpath, :clang_indexLoc_getFileLocation}()
            (func::C.typeof(var"c\"clang_indexLoc_getFileLocation\""))(var"c\"loc\"", var"c\"indexFile\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"") = begin
                    C.funccall(func, var"c\"loc\"", var"c\"indexFile\"", var"c\"file\"", var"c\"line\"", var"c\"column\"", var"c\"offset\"")
                end
            const clang_indexLoc_getFileLocation = var"c\"clang_indexLoc_getFileLocation\""
            export var"c\"clang_indexLoc_getFileLocation\""
            export clang_indexLoc_getFileLocation
            var"c\"clang_indexLoc_getFileLocation\""
        end
        begin
            const var"c\"clang_indexLoc_getCXSourceLocation\"" = C.Cbinding{C.Cfunction{var"c\"CXSourceLocation\"", C.Tuple{var"c\"CXIdxLoc\""}, :cdecl}, libpath, :clang_indexLoc_getCXSourceLocation}()
            (func::C.typeof(var"c\"clang_indexLoc_getCXSourceLocation\""))(var"c\"loc\"") = begin
                    C.funccall(func, var"c\"loc\"")
                end
            const clang_indexLoc_getCXSourceLocation = var"c\"clang_indexLoc_getCXSourceLocation\""
            export var"c\"clang_indexLoc_getCXSourceLocation\""
            export clang_indexLoc_getCXSourceLocation
            var"c\"clang_indexLoc_getCXSourceLocation\""
        end
        begin
            const var"c\"CXFieldVisitor\"" = C.Cptr{C.Cfunction{var"c\"enum CXVisitorResult\"", C.Tuple{var"c\"CXCursor\"", var"c\"CXClientData\""}, :cdecl}}
            const CXFieldVisitor = var"c\"CXFieldVisitor\""
            export var"c\"CXFieldVisitor\""
            export CXFieldVisitor
            var"c\"CXFieldVisitor\""
        end
        begin
            const var"c\"clang_Type_visitFields\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXType\"", var"c\"CXFieldVisitor\"", var"c\"CXClientData\""}, :cdecl}, libpath, :clang_Type_visitFields}()
            (func::C.typeof(var"c\"clang_Type_visitFields\""))(var"c\"T\"", var"c\"visitor\"", var"c\"client_data\"") = begin
                    C.funccall(func, var"c\"T\"", var"c\"visitor\"", var"c\"client_data\"")
                end
            const clang_Type_visitFields = var"c\"clang_Type_visitFields\""
            export var"c\"clang_Type_visitFields\""
            export clang_Type_visitFields
            var"c\"clang_Type_visitFields\""
        end
        begin
            abstract type var"c\"CXComment\"" <: Cstruct end
            const CXComment = var"c\"CXComment\""
            export var"c\"CXComment\""
            export CXComment
            var"c\"CXComment\""
        end
        begin
            struct var"(c\"CXComment\")" <: var"c\"CXComment\""
                mem::C.NTuple{16, C.UInt8}
                var"(c\"CXComment\")"(::C.UndefInitializer, mem::C.NTuple{16, C.UInt8}) = begin
                        new(mem)
                    end
            end
            (C.C).fields(::C.Type{var"(c\"CXComment\")"}) = begin
                    C.Tuple{C.Tuple{:ASTNode, C.Tuple{C.Cptr{C.Cconst{C.Cvoid}}, C.bitstype(C.Cptr{C.Cconst{C.Cvoid}}), C.integraltype(C.Cptr{C.Cconst{C.Cvoid}}), 0, 0, -1}}, C.Tuple{:TranslationUnit, C.Tuple{var"c\"CXTranslationUnit\"", C.bitstype(var"c\"CXTranslationUnit\""), C.integraltype(var"c\"CXTranslationUnit\""), 8, 0, -1}}}
                end
            (C.C).bitstype(::C.Type{var"(c\"CXComment\")"}) = begin
                    var"(c\"CXComment\")"
                end
            (C.C).bitstype(::C.Type{var"c\"CXComment\""}) = begin
                    var"(c\"CXComment\")"
                end
            const CXComment = var"c\"CXComment\""
            export var"c\"CXComment\"", var"(c\"CXComment\")"
            export CXComment
            var"c\"CXComment\""
        end
        begin
        end
        begin
            const var"c\"clang_Cursor_getParsedComment\"" = C.Cbinding{C.Cfunction{var"c\"CXComment\"", C.Tuple{var"c\"CXCursor\""}, :cdecl}, libpath, :clang_Cursor_getParsedComment}()
            (func::C.typeof(var"c\"clang_Cursor_getParsedComment\""))(var"c\"C\"") = begin
                    C.funccall(func, var"c\"C\"")
                end
            const clang_Cursor_getParsedComment = var"c\"clang_Cursor_getParsedComment\""
            export var"c\"clang_Cursor_getParsedComment\""
            export clang_Cursor_getParsedComment
            var"c\"clang_Cursor_getParsedComment\""
        end
        begin
            abstract type var"c\"enum CXCommentKind\"" <: Cenum end
            const CXCommentKind = var"c\"enum CXCommentKind\""
            export var"c\"enum CXCommentKind\""
            export CXCommentKind
            var"c\"enum CXCommentKind\""
        end
        begin
            primitive type var"(c\"enum CXCommentKind\")" <: var"c\"enum CXCommentKind\"" 32 end
            (::(Type){var"(c\"enum CXCommentKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCommentKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCommentKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXComment_Null\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXComment_Text\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXComment_InlineCommand\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXComment_HTMLStartTag\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXComment_HTMLEndTag\""), 0x0000000000000004}, C.Tuple{Symbol("c\"CXComment_Paragraph\""), 0x0000000000000005}, C.Tuple{Symbol("c\"CXComment_BlockCommand\""), 0x0000000000000006}, C.Tuple{Symbol("c\"CXComment_ParamCommand\""), 0x0000000000000007}, C.Tuple{Symbol("c\"CXComment_TParamCommand\""), 0x0000000000000008}, C.Tuple{Symbol("c\"CXComment_VerbatimBlockCommand\""), 0x0000000000000009}, C.Tuple{Symbol("c\"CXComment_VerbatimBlockLine\""), 0x000000000000000a}, C.Tuple{Symbol("c\"CXComment_VerbatimLine\""), 0x000000000000000b}, C.Tuple{Symbol("c\"CXComment_FullComment\""), 0x000000000000000c}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCommentKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCommentKind\")"}) = begin
                    var"(c\"enum CXCommentKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCommentKind\""}) = begin
                    var"(c\"enum CXCommentKind\")"
                end
            const var"c\"CXComment_Null\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000000)
            const var"c\"CXComment_Text\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000001)
            const var"c\"CXComment_InlineCommand\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000002)
            const var"c\"CXComment_HTMLStartTag\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000003)
            const var"c\"CXComment_HTMLEndTag\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000004)
            const var"c\"CXComment_Paragraph\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000005)
            const var"c\"CXComment_BlockCommand\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000006)
            const var"c\"CXComment_ParamCommand\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000007)
            const var"c\"CXComment_TParamCommand\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000008)
            const var"c\"CXComment_VerbatimBlockCommand\"" = var"(c\"enum CXCommentKind\")"(0x0000000000000009)
            const var"c\"CXComment_VerbatimBlockLine\"" = var"(c\"enum CXCommentKind\")"(0x000000000000000a)
            const var"c\"CXComment_VerbatimLine\"" = var"(c\"enum CXCommentKind\")"(0x000000000000000b)
            const var"c\"CXComment_FullComment\"" = var"(c\"enum CXCommentKind\")"(0x000000000000000c)
            const CXCommentKind = var"c\"enum CXCommentKind\""
            const CXComment_Null = var"c\"CXComment_Null\""
            const CXComment_Text = var"c\"CXComment_Text\""
            const CXComment_InlineCommand = var"c\"CXComment_InlineCommand\""
            const CXComment_HTMLStartTag = var"c\"CXComment_HTMLStartTag\""
            const CXComment_HTMLEndTag = var"c\"CXComment_HTMLEndTag\""
            const CXComment_Paragraph = var"c\"CXComment_Paragraph\""
            const CXComment_BlockCommand = var"c\"CXComment_BlockCommand\""
            const CXComment_ParamCommand = var"c\"CXComment_ParamCommand\""
            const CXComment_TParamCommand = var"c\"CXComment_TParamCommand\""
            const CXComment_VerbatimBlockCommand = var"c\"CXComment_VerbatimBlockCommand\""
            const CXComment_VerbatimBlockLine = var"c\"CXComment_VerbatimBlockLine\""
            const CXComment_VerbatimLine = var"c\"CXComment_VerbatimLine\""
            const CXComment_FullComment = var"c\"CXComment_FullComment\""
            export var"c\"enum CXCommentKind\"", var"(c\"enum CXCommentKind\")", var"c\"CXComment_Null\"", var"c\"CXComment_Text\"", var"c\"CXComment_InlineCommand\"", var"c\"CXComment_HTMLStartTag\"", var"c\"CXComment_HTMLEndTag\"", var"c\"CXComment_Paragraph\"", var"c\"CXComment_BlockCommand\"", var"c\"CXComment_ParamCommand\"", var"c\"CXComment_TParamCommand\"", var"c\"CXComment_VerbatimBlockCommand\"", var"c\"CXComment_VerbatimBlockLine\"", var"c\"CXComment_VerbatimLine\"", var"c\"CXComment_FullComment\""
            export CXCommentKind, CXComment_Null, CXComment_Text, CXComment_InlineCommand, CXComment_HTMLStartTag, CXComment_HTMLEndTag, CXComment_Paragraph, CXComment_BlockCommand, CXComment_ParamCommand, CXComment_TParamCommand, CXComment_VerbatimBlockCommand, CXComment_VerbatimBlockLine, CXComment_VerbatimLine, CXComment_FullComment
            var"c\"enum CXCommentKind\""
        end
        begin
            abstract type var"c\"enum CXCommentInlineCommandRenderKind\"" <: Cenum end
            const CXCommentInlineCommandRenderKind = var"c\"enum CXCommentInlineCommandRenderKind\""
            export var"c\"enum CXCommentInlineCommandRenderKind\""
            export CXCommentInlineCommandRenderKind
            var"c\"enum CXCommentInlineCommandRenderKind\""
        end
        begin
            primitive type var"(c\"enum CXCommentInlineCommandRenderKind\")" <: var"c\"enum CXCommentInlineCommandRenderKind\"" 32 end
            (::(Type){var"(c\"enum CXCommentInlineCommandRenderKind\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCommentInlineCommandRenderKind\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCommentInlineCommandRenderKind\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCommentInlineCommandRenderKind_Normal\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXCommentInlineCommandRenderKind_Bold\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCommentInlineCommandRenderKind_Monospaced\""), 0x0000000000000002}, C.Tuple{Symbol("c\"CXCommentInlineCommandRenderKind_Emphasized\""), 0x0000000000000003}, C.Tuple{Symbol("c\"CXCommentInlineCommandRenderKind_Anchor\""), 0x0000000000000004}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCommentInlineCommandRenderKind\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCommentInlineCommandRenderKind\")"}) = begin
                    var"(c\"enum CXCommentInlineCommandRenderKind\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCommentInlineCommandRenderKind\""}) = begin
                    var"(c\"enum CXCommentInlineCommandRenderKind\")"
                end
            const var"c\"CXCommentInlineCommandRenderKind_Normal\"" = var"(c\"enum CXCommentInlineCommandRenderKind\")"(0x0000000000000000)
            const var"c\"CXCommentInlineCommandRenderKind_Bold\"" = var"(c\"enum CXCommentInlineCommandRenderKind\")"(0x0000000000000001)
            const var"c\"CXCommentInlineCommandRenderKind_Monospaced\"" = var"(c\"enum CXCommentInlineCommandRenderKind\")"(0x0000000000000002)
            const var"c\"CXCommentInlineCommandRenderKind_Emphasized\"" = var"(c\"enum CXCommentInlineCommandRenderKind\")"(0x0000000000000003)
            const var"c\"CXCommentInlineCommandRenderKind_Anchor\"" = var"(c\"enum CXCommentInlineCommandRenderKind\")"(0x0000000000000004)
            const CXCommentInlineCommandRenderKind = var"c\"enum CXCommentInlineCommandRenderKind\""
            const CXCommentInlineCommandRenderKind_Normal = var"c\"CXCommentInlineCommandRenderKind_Normal\""
            const CXCommentInlineCommandRenderKind_Bold = var"c\"CXCommentInlineCommandRenderKind_Bold\""
            const CXCommentInlineCommandRenderKind_Monospaced = var"c\"CXCommentInlineCommandRenderKind_Monospaced\""
            const CXCommentInlineCommandRenderKind_Emphasized = var"c\"CXCommentInlineCommandRenderKind_Emphasized\""
            const CXCommentInlineCommandRenderKind_Anchor = var"c\"CXCommentInlineCommandRenderKind_Anchor\""
            export var"c\"enum CXCommentInlineCommandRenderKind\"", var"(c\"enum CXCommentInlineCommandRenderKind\")", var"c\"CXCommentInlineCommandRenderKind_Normal\"", var"c\"CXCommentInlineCommandRenderKind_Bold\"", var"c\"CXCommentInlineCommandRenderKind_Monospaced\"", var"c\"CXCommentInlineCommandRenderKind_Emphasized\"", var"c\"CXCommentInlineCommandRenderKind_Anchor\""
            export CXCommentInlineCommandRenderKind, CXCommentInlineCommandRenderKind_Normal, CXCommentInlineCommandRenderKind_Bold, CXCommentInlineCommandRenderKind_Monospaced, CXCommentInlineCommandRenderKind_Emphasized, CXCommentInlineCommandRenderKind_Anchor
            var"c\"enum CXCommentInlineCommandRenderKind\""
        end
        begin
            abstract type var"c\"enum CXCommentParamPassDirection\"" <: Cenum end
            const CXCommentParamPassDirection = var"c\"enum CXCommentParamPassDirection\""
            export var"c\"enum CXCommentParamPassDirection\""
            export CXCommentParamPassDirection
            var"c\"enum CXCommentParamPassDirection\""
        end
        begin
            primitive type var"(c\"enum CXCommentParamPassDirection\")" <: var"c\"enum CXCommentParamPassDirection\"" 32 end
            (::(Type){var"(c\"enum CXCommentParamPassDirection\")"})(val::C.Integer = C.zero(C.Cuint)) = begin
                    (C.Core).Intrinsics.bitcast(var"(c\"enum CXCommentParamPassDirection\")", C.convert(C.Cuint, val))
                end
            (C.C).values(::C.Type{var"(c\"enum CXCommentParamPassDirection\")"}) = begin
                    C.Tuple{C.Tuple{Symbol("c\"CXCommentParamPassDirection_In\""), 0x0000000000000000}, C.Tuple{Symbol("c\"CXCommentParamPassDirection_Out\""), 0x0000000000000001}, C.Tuple{Symbol("c\"CXCommentParamPassDirection_InOut\""), 0x0000000000000002}}
                end
            (C.Base).Enums.basetype(::C.Type{var"(c\"enum CXCommentParamPassDirection\")"}) = begin
                    C.Cuint
                end
            (C.C).bitstype(::C.Type{var"(c\"enum CXCommentParamPassDirection\")"}) = begin
                    var"(c\"enum CXCommentParamPassDirection\")"
                end
            (C.C).bitstype(::C.Type{var"c\"enum CXCommentParamPassDirection\""}) = begin
                    var"(c\"enum CXCommentParamPassDirection\")"
                end
            const var"c\"CXCommentParamPassDirection_In\"" = var"(c\"enum CXCommentParamPassDirection\")"(0x0000000000000000)
            const var"c\"CXCommentParamPassDirection_Out\"" = var"(c\"enum CXCommentParamPassDirection\")"(0x0000000000000001)
            const var"c\"CXCommentParamPassDirection_InOut\"" = var"(c\"enum CXCommentParamPassDirection\")"(0x0000000000000002)
            const CXCommentParamPassDirection = var"c\"enum CXCommentParamPassDirection\""
            const CXCommentParamPassDirection_In = var"c\"CXCommentParamPassDirection_In\""
            const CXCommentParamPassDirection_Out = var"c\"CXCommentParamPassDirection_Out\""
            const CXCommentParamPassDirection_InOut = var"c\"CXCommentParamPassDirection_InOut\""
            export var"c\"enum CXCommentParamPassDirection\"", var"(c\"enum CXCommentParamPassDirection\")", var"c\"CXCommentParamPassDirection_In\"", var"c\"CXCommentParamPassDirection_Out\"", var"c\"CXCommentParamPassDirection_InOut\""
            export CXCommentParamPassDirection, CXCommentParamPassDirection_In, CXCommentParamPassDirection_Out, CXCommentParamPassDirection_InOut
            var"c\"enum CXCommentParamPassDirection\""
        end
        begin
            const var"c\"clang_Comment_getKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCommentKind\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_Comment_getKind}()
            (func::C.typeof(var"c\"clang_Comment_getKind\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_Comment_getKind = var"c\"clang_Comment_getKind\""
            export var"c\"clang_Comment_getKind\""
            export clang_Comment_getKind
            var"c\"clang_Comment_getKind\""
        end
        begin
            const var"c\"clang_Comment_getNumChildren\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_Comment_getNumChildren}()
            (func::C.typeof(var"c\"clang_Comment_getNumChildren\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_Comment_getNumChildren = var"c\"clang_Comment_getNumChildren\""
            export var"c\"clang_Comment_getNumChildren\""
            export clang_Comment_getNumChildren
            var"c\"clang_Comment_getNumChildren\""
        end
        begin
            const var"c\"clang_Comment_getChild\"" = C.Cbinding{C.Cfunction{var"c\"CXComment\"", C.Tuple{var"c\"CXComment\"", C.Cuint}, :cdecl}, libpath, :clang_Comment_getChild}()
            (func::C.typeof(var"c\"clang_Comment_getChild\""))(var"c\"Comment\"", var"c\"ChildIdx\"") = begin
                    C.funccall(func, var"c\"Comment\"", var"c\"ChildIdx\"")
                end
            const clang_Comment_getChild = var"c\"clang_Comment_getChild\""
            export var"c\"clang_Comment_getChild\""
            export clang_Comment_getChild
            var"c\"clang_Comment_getChild\""
        end
        begin
            const var"c\"clang_Comment_isWhitespace\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_Comment_isWhitespace}()
            (func::C.typeof(var"c\"clang_Comment_isWhitespace\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_Comment_isWhitespace = var"c\"clang_Comment_isWhitespace\""
            export var"c\"clang_Comment_isWhitespace\""
            export clang_Comment_isWhitespace
            var"c\"clang_Comment_isWhitespace\""
        end
        begin
            const var"c\"clang_InlineContentComment_hasTrailingNewline\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_InlineContentComment_hasTrailingNewline}()
            (func::C.typeof(var"c\"clang_InlineContentComment_hasTrailingNewline\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_InlineContentComment_hasTrailingNewline = var"c\"clang_InlineContentComment_hasTrailingNewline\""
            export var"c\"clang_InlineContentComment_hasTrailingNewline\""
            export clang_InlineContentComment_hasTrailingNewline
            var"c\"clang_InlineContentComment_hasTrailingNewline\""
        end
        begin
            const var"c\"clang_TextComment_getText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_TextComment_getText}()
            (func::C.typeof(var"c\"clang_TextComment_getText\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_TextComment_getText = var"c\"clang_TextComment_getText\""
            export var"c\"clang_TextComment_getText\""
            export clang_TextComment_getText
            var"c\"clang_TextComment_getText\""
        end
        begin
            const var"c\"clang_InlineCommandComment_getCommandName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_InlineCommandComment_getCommandName}()
            (func::C.typeof(var"c\"clang_InlineCommandComment_getCommandName\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_InlineCommandComment_getCommandName = var"c\"clang_InlineCommandComment_getCommandName\""
            export var"c\"clang_InlineCommandComment_getCommandName\""
            export clang_InlineCommandComment_getCommandName
            var"c\"clang_InlineCommandComment_getCommandName\""
        end
        begin
            const var"c\"clang_InlineCommandComment_getRenderKind\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCommentInlineCommandRenderKind\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_InlineCommandComment_getRenderKind}()
            (func::C.typeof(var"c\"clang_InlineCommandComment_getRenderKind\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_InlineCommandComment_getRenderKind = var"c\"clang_InlineCommandComment_getRenderKind\""
            export var"c\"clang_InlineCommandComment_getRenderKind\""
            export clang_InlineCommandComment_getRenderKind
            var"c\"clang_InlineCommandComment_getRenderKind\""
        end
        begin
            const var"c\"clang_InlineCommandComment_getNumArgs\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_InlineCommandComment_getNumArgs}()
            (func::C.typeof(var"c\"clang_InlineCommandComment_getNumArgs\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_InlineCommandComment_getNumArgs = var"c\"clang_InlineCommandComment_getNumArgs\""
            export var"c\"clang_InlineCommandComment_getNumArgs\""
            export clang_InlineCommandComment_getNumArgs
            var"c\"clang_InlineCommandComment_getNumArgs\""
        end
        begin
            const var"c\"clang_InlineCommandComment_getArgText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\"", C.Cuint}, :cdecl}, libpath, :clang_InlineCommandComment_getArgText}()
            (func::C.typeof(var"c\"clang_InlineCommandComment_getArgText\""))(var"c\"Comment\"", var"c\"ArgIdx\"") = begin
                    C.funccall(func, var"c\"Comment\"", var"c\"ArgIdx\"")
                end
            const clang_InlineCommandComment_getArgText = var"c\"clang_InlineCommandComment_getArgText\""
            export var"c\"clang_InlineCommandComment_getArgText\""
            export clang_InlineCommandComment_getArgText
            var"c\"clang_InlineCommandComment_getArgText\""
        end
        begin
            const var"c\"clang_HTMLTagComment_getTagName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_HTMLTagComment_getTagName}()
            (func::C.typeof(var"c\"clang_HTMLTagComment_getTagName\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_HTMLTagComment_getTagName = var"c\"clang_HTMLTagComment_getTagName\""
            export var"c\"clang_HTMLTagComment_getTagName\""
            export clang_HTMLTagComment_getTagName
            var"c\"clang_HTMLTagComment_getTagName\""
        end
        begin
            const var"c\"clang_HTMLStartTagComment_isSelfClosing\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_HTMLStartTagComment_isSelfClosing}()
            (func::C.typeof(var"c\"clang_HTMLStartTagComment_isSelfClosing\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_HTMLStartTagComment_isSelfClosing = var"c\"clang_HTMLStartTagComment_isSelfClosing\""
            export var"c\"clang_HTMLStartTagComment_isSelfClosing\""
            export clang_HTMLStartTagComment_isSelfClosing
            var"c\"clang_HTMLStartTagComment_isSelfClosing\""
        end
        begin
            const var"c\"clang_HTMLStartTag_getNumAttrs\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_HTMLStartTag_getNumAttrs}()
            (func::C.typeof(var"c\"clang_HTMLStartTag_getNumAttrs\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_HTMLStartTag_getNumAttrs = var"c\"clang_HTMLStartTag_getNumAttrs\""
            export var"c\"clang_HTMLStartTag_getNumAttrs\""
            export clang_HTMLStartTag_getNumAttrs
            var"c\"clang_HTMLStartTag_getNumAttrs\""
        end
        begin
            const var"c\"clang_HTMLStartTag_getAttrName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\"", C.Cuint}, :cdecl}, libpath, :clang_HTMLStartTag_getAttrName}()
            (func::C.typeof(var"c\"clang_HTMLStartTag_getAttrName\""))(var"c\"Comment\"", var"c\"AttrIdx\"") = begin
                    C.funccall(func, var"c\"Comment\"", var"c\"AttrIdx\"")
                end
            const clang_HTMLStartTag_getAttrName = var"c\"clang_HTMLStartTag_getAttrName\""
            export var"c\"clang_HTMLStartTag_getAttrName\""
            export clang_HTMLStartTag_getAttrName
            var"c\"clang_HTMLStartTag_getAttrName\""
        end
        begin
            const var"c\"clang_HTMLStartTag_getAttrValue\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\"", C.Cuint}, :cdecl}, libpath, :clang_HTMLStartTag_getAttrValue}()
            (func::C.typeof(var"c\"clang_HTMLStartTag_getAttrValue\""))(var"c\"Comment\"", var"c\"AttrIdx\"") = begin
                    C.funccall(func, var"c\"Comment\"", var"c\"AttrIdx\"")
                end
            const clang_HTMLStartTag_getAttrValue = var"c\"clang_HTMLStartTag_getAttrValue\""
            export var"c\"clang_HTMLStartTag_getAttrValue\""
            export clang_HTMLStartTag_getAttrValue
            var"c\"clang_HTMLStartTag_getAttrValue\""
        end
        begin
            const var"c\"clang_BlockCommandComment_getCommandName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_BlockCommandComment_getCommandName}()
            (func::C.typeof(var"c\"clang_BlockCommandComment_getCommandName\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_BlockCommandComment_getCommandName = var"c\"clang_BlockCommandComment_getCommandName\""
            export var"c\"clang_BlockCommandComment_getCommandName\""
            export clang_BlockCommandComment_getCommandName
            var"c\"clang_BlockCommandComment_getCommandName\""
        end
        begin
            const var"c\"clang_BlockCommandComment_getNumArgs\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_BlockCommandComment_getNumArgs}()
            (func::C.typeof(var"c\"clang_BlockCommandComment_getNumArgs\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_BlockCommandComment_getNumArgs = var"c\"clang_BlockCommandComment_getNumArgs\""
            export var"c\"clang_BlockCommandComment_getNumArgs\""
            export clang_BlockCommandComment_getNumArgs
            var"c\"clang_BlockCommandComment_getNumArgs\""
        end
        begin
            const var"c\"clang_BlockCommandComment_getArgText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\"", C.Cuint}, :cdecl}, libpath, :clang_BlockCommandComment_getArgText}()
            (func::C.typeof(var"c\"clang_BlockCommandComment_getArgText\""))(var"c\"Comment\"", var"c\"ArgIdx\"") = begin
                    C.funccall(func, var"c\"Comment\"", var"c\"ArgIdx\"")
                end
            const clang_BlockCommandComment_getArgText = var"c\"clang_BlockCommandComment_getArgText\""
            export var"c\"clang_BlockCommandComment_getArgText\""
            export clang_BlockCommandComment_getArgText
            var"c\"clang_BlockCommandComment_getArgText\""
        end
        begin
            const var"c\"clang_BlockCommandComment_getParagraph\"" = C.Cbinding{C.Cfunction{var"c\"CXComment\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_BlockCommandComment_getParagraph}()
            (func::C.typeof(var"c\"clang_BlockCommandComment_getParagraph\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_BlockCommandComment_getParagraph = var"c\"clang_BlockCommandComment_getParagraph\""
            export var"c\"clang_BlockCommandComment_getParagraph\""
            export clang_BlockCommandComment_getParagraph
            var"c\"clang_BlockCommandComment_getParagraph\""
        end
        begin
            const var"c\"clang_ParamCommandComment_getParamName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_ParamCommandComment_getParamName}()
            (func::C.typeof(var"c\"clang_ParamCommandComment_getParamName\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_ParamCommandComment_getParamName = var"c\"clang_ParamCommandComment_getParamName\""
            export var"c\"clang_ParamCommandComment_getParamName\""
            export clang_ParamCommandComment_getParamName
            var"c\"clang_ParamCommandComment_getParamName\""
        end
        begin
            const var"c\"clang_ParamCommandComment_isParamIndexValid\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_ParamCommandComment_isParamIndexValid}()
            (func::C.typeof(var"c\"clang_ParamCommandComment_isParamIndexValid\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_ParamCommandComment_isParamIndexValid = var"c\"clang_ParamCommandComment_isParamIndexValid\""
            export var"c\"clang_ParamCommandComment_isParamIndexValid\""
            export clang_ParamCommandComment_isParamIndexValid
            var"c\"clang_ParamCommandComment_isParamIndexValid\""
        end
        begin
            const var"c\"clang_ParamCommandComment_getParamIndex\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_ParamCommandComment_getParamIndex}()
            (func::C.typeof(var"c\"clang_ParamCommandComment_getParamIndex\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_ParamCommandComment_getParamIndex = var"c\"clang_ParamCommandComment_getParamIndex\""
            export var"c\"clang_ParamCommandComment_getParamIndex\""
            export clang_ParamCommandComment_getParamIndex
            var"c\"clang_ParamCommandComment_getParamIndex\""
        end
        begin
            const var"c\"clang_ParamCommandComment_isDirectionExplicit\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_ParamCommandComment_isDirectionExplicit}()
            (func::C.typeof(var"c\"clang_ParamCommandComment_isDirectionExplicit\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_ParamCommandComment_isDirectionExplicit = var"c\"clang_ParamCommandComment_isDirectionExplicit\""
            export var"c\"clang_ParamCommandComment_isDirectionExplicit\""
            export clang_ParamCommandComment_isDirectionExplicit
            var"c\"clang_ParamCommandComment_isDirectionExplicit\""
        end
        begin
            const var"c\"clang_ParamCommandComment_getDirection\"" = C.Cbinding{C.Cfunction{var"c\"enum CXCommentParamPassDirection\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_ParamCommandComment_getDirection}()
            (func::C.typeof(var"c\"clang_ParamCommandComment_getDirection\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_ParamCommandComment_getDirection = var"c\"clang_ParamCommandComment_getDirection\""
            export var"c\"clang_ParamCommandComment_getDirection\""
            export clang_ParamCommandComment_getDirection
            var"c\"clang_ParamCommandComment_getDirection\""
        end
        begin
            const var"c\"clang_TParamCommandComment_getParamName\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_TParamCommandComment_getParamName}()
            (func::C.typeof(var"c\"clang_TParamCommandComment_getParamName\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_TParamCommandComment_getParamName = var"c\"clang_TParamCommandComment_getParamName\""
            export var"c\"clang_TParamCommandComment_getParamName\""
            export clang_TParamCommandComment_getParamName
            var"c\"clang_TParamCommandComment_getParamName\""
        end
        begin
            const var"c\"clang_TParamCommandComment_isParamPositionValid\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_TParamCommandComment_isParamPositionValid}()
            (func::C.typeof(var"c\"clang_TParamCommandComment_isParamPositionValid\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_TParamCommandComment_isParamPositionValid = var"c\"clang_TParamCommandComment_isParamPositionValid\""
            export var"c\"clang_TParamCommandComment_isParamPositionValid\""
            export clang_TParamCommandComment_isParamPositionValid
            var"c\"clang_TParamCommandComment_isParamPositionValid\""
        end
        begin
            const var"c\"clang_TParamCommandComment_getDepth\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_TParamCommandComment_getDepth}()
            (func::C.typeof(var"c\"clang_TParamCommandComment_getDepth\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_TParamCommandComment_getDepth = var"c\"clang_TParamCommandComment_getDepth\""
            export var"c\"clang_TParamCommandComment_getDepth\""
            export clang_TParamCommandComment_getDepth
            var"c\"clang_TParamCommandComment_getDepth\""
        end
        begin
            const var"c\"clang_TParamCommandComment_getIndex\"" = C.Cbinding{C.Cfunction{C.Cuint, C.Tuple{var"c\"CXComment\"", C.Cuint}, :cdecl}, libpath, :clang_TParamCommandComment_getIndex}()
            (func::C.typeof(var"c\"clang_TParamCommandComment_getIndex\""))(var"c\"Comment\"", var"c\"Depth\"") = begin
                    C.funccall(func, var"c\"Comment\"", var"c\"Depth\"")
                end
            const clang_TParamCommandComment_getIndex = var"c\"clang_TParamCommandComment_getIndex\""
            export var"c\"clang_TParamCommandComment_getIndex\""
            export clang_TParamCommandComment_getIndex
            var"c\"clang_TParamCommandComment_getIndex\""
        end
        begin
            const var"c\"clang_VerbatimBlockLineComment_getText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_VerbatimBlockLineComment_getText}()
            (func::C.typeof(var"c\"clang_VerbatimBlockLineComment_getText\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_VerbatimBlockLineComment_getText = var"c\"clang_VerbatimBlockLineComment_getText\""
            export var"c\"clang_VerbatimBlockLineComment_getText\""
            export clang_VerbatimBlockLineComment_getText
            var"c\"clang_VerbatimBlockLineComment_getText\""
        end
        begin
            const var"c\"clang_VerbatimLineComment_getText\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_VerbatimLineComment_getText}()
            (func::C.typeof(var"c\"clang_VerbatimLineComment_getText\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_VerbatimLineComment_getText = var"c\"clang_VerbatimLineComment_getText\""
            export var"c\"clang_VerbatimLineComment_getText\""
            export clang_VerbatimLineComment_getText
            var"c\"clang_VerbatimLineComment_getText\""
        end
        begin
            const var"c\"clang_HTMLTagComment_getAsString\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_HTMLTagComment_getAsString}()
            (func::C.typeof(var"c\"clang_HTMLTagComment_getAsString\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_HTMLTagComment_getAsString = var"c\"clang_HTMLTagComment_getAsString\""
            export var"c\"clang_HTMLTagComment_getAsString\""
            export clang_HTMLTagComment_getAsString
            var"c\"clang_HTMLTagComment_getAsString\""
        end
        begin
            const var"c\"clang_FullComment_getAsHTML\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_FullComment_getAsHTML}()
            (func::C.typeof(var"c\"clang_FullComment_getAsHTML\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_FullComment_getAsHTML = var"c\"clang_FullComment_getAsHTML\""
            export var"c\"clang_FullComment_getAsHTML\""
            export clang_FullComment_getAsHTML
            var"c\"clang_FullComment_getAsHTML\""
        end
        begin
            const var"c\"clang_FullComment_getAsXML\"" = C.Cbinding{C.Cfunction{var"c\"CXString\"", C.Tuple{var"c\"CXComment\""}, :cdecl}, libpath, :clang_FullComment_getAsXML}()
            (func::C.typeof(var"c\"clang_FullComment_getAsXML\""))(var"c\"Comment\"") = begin
                    C.funccall(func, var"c\"Comment\"")
                end
            const clang_FullComment_getAsXML = var"c\"clang_FullComment_getAsXML\""
            export var"c\"clang_FullComment_getAsXML\""
            export clang_FullComment_getAsXML
            var"c\"clang_FullComment_getAsXML\""
        end
    end
end
