set(CMAKE_CXX_FLAGS_COMMON -g -Wall -Wextra)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_COMMON}")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_COMMON} -O3")

list(APPEND CMAKE_REQUIRED_FLAGS -std=gnu++14)
function(apply_folly_compile_options_to_target THETARGET)
  target_compile_options(${THETARGET}
    PUBLIC
      -g
      -std=gnu++14
      -finput-charset=UTF-8
      -fsigned-char
      -Werror
      -Wall
      -Wno-deprecated
      -Wdeprecated-declarations
      -Wno-error=deprecated-declarations
      -Wno-sign-compare
      -Wno-unused
      -Wunused-label
      -Wunused-result
      -Wnon-virtual-dtor
      ${FOLLY_CXX_FLAGS}
    PRIVATE
      -D_REENTRANT
      -D_GNU_SOURCE
  )
endfunction()
