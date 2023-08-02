
INCFLAGS += -Ipsdparse -Iexternal/zlib -Iexternal/boost_array/include -Iexternal/boost_assert/include -Iexternal/boost_bind/include -Iexternal/boost_concept_check/include -Iexternal/boost_config/include -Iexternal/boost_core/include -Iexternal/boost_detail/include -Iexternal/boost_exception/include -Iexternal/boost_filesystem/include -Iexternal/boost_foreach/include -Iexternal/boost_function/include -Iexternal/boost_function_types/include -Iexternal/boost_functional/include -Iexternal/boost_fusion/include -Iexternal/boost_integer/include -Iexternal/boost_range/include -Iexternal/boost_smart_ptr/include -Iexternal/boost_system/include  -Iexternal/boost_io/include -Iexternal/boost_iostreams/include -Iexternal/boost_iterator/include -Iexternal/boost_math/include -Iexternal/boost_move/include -Iexternal/boost_mpl/include -Iexternal/boost_optional/include -Iexternal/boost_predef/include -Iexternal/boost_phoenix/include -Iexternal/boost_preprocessor/include -Iexternal/boost_proto/include -Iexternal/boost_regex/include -Iexternal/boost_spirit/include -Iexternal/boost_static_assert/include -Iexternal/boost_throw_exception/include -Iexternal/boost_type_index/include -Iexternal/boost_type_traits/include -Iexternal/boost_typeof/include -Iexternal/boost_utility/include -Iexternal/boost_variant/include -Iexternal/boost_winapi/include

SOURCES += stdafx.cpp main.cpp psdclass.cpp psdclass_loadmem.cpp psdclass_loadstream.cpp psdclass_loadstreambase.cpp 
SOURCES += external/zlib/adler32.c external/zlib/compress.c external/zlib/crc32.c external/zlib/deflate.c external/zlib/gzclose.c external/zlib/gzlib.c external/zlib/gzread.c external/zlib/gzwrite.c external/zlib/infback.c external/zlib/inffast.c external/zlib/inflate.c external/zlib/inftrees.c external/zlib/trees.c external/zlib/uncompr.c external/zlib/zutil.c
SOURCES += psdparse/bmp.cpp psdparse/psddesc.cpp psdparse/psdfile.cpp psdparse/psdimage.cpp psdparse/psdlayer.cpp psdparse/psdparse.cpp psdparse/psdresource.cpp psdparse/stdafx.cpp
SOURCES += external/boost_filesystem/src/codecvt_error_category.cpp external/boost_filesystem/src/operations.cpp external/boost_filesystem/src/path.cpp external/boost_filesystem/src/path_traits.cpp external/boost_filesystem/src/portability.cpp external/boost_filesystem/src/unique_path.cpp external/boost_filesystem/src/utf8_codecvt_facet.cpp external/boost_filesystem/src/windows_file_codecvt.cpp
SOURCES += external/boost_system/src/error_code.cpp
SOURCES += external/boost_iostreams/src/mapped_file.cpp

PROJECT_BASENAME = psdfile

LDLIBS += -lole32

RC_DESC ?= PSD Plugin for TVP(KIRIKIRI) (2/Z)
RC_PRODUCTNAME ?= PSD Plugin for TVP(KIRIKIRI) (2/Z)
RC_LEGALCOPYRIGHT ?= Copyright (C) 2014-2023 Go Watanabe, Yuki; Copyright (C) 2023-2023 Julian Uy; See details of license at license.txt, or the source code location.

include external/ncbind/Rules.lib.make

