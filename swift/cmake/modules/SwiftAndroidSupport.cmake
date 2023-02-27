function(swift_android_sysroot sysroot_var_name)
  if(NOT "${SWIFT_ANDROID_NDK_PATH}" STREQUAL "")
    string(TOLOWER ${CMAKE_HOST_SYSTEM_NAME} platform)
    set(${sysroot_var_name} "${SWIFT_ANDROID_NDK_PATH}/toolchains/llvm/prebuilt/${platform}-x86_64/sysroot" PARENT_SCOPE)
  elseif(NOT "${SWIFT_ANDROID_NATIVE_SYSROOT}" STREQUAL "")
    set(${sysroot_var_name} "${SWIFT_ANDROID_NATIVE_SYSROOT}" PARENT_SCOPE)
  else()
    message(SEND_ERROR "Couldn't find Android sysroot")
  endif()
endfunction()

function(swift_android_tools_path arch path_var_name)
  if(NOT "${SWIFT_ANDROID_NDK_PATH}" STREQUAL "")
    string(TOLOWER ${CMAKE_HOST_SYSTEM_NAME} platform)
    set(${path_var_name} "${SWIFT_ANDROID_NDK_PATH}/toolchains/llvm/prebuilt/${platform}-x86_64/bin" PARENT_SCOPE)
  elseif(NOT "${SWIFT_ANDROID_NATIVE_SYSROOT}" STREQUAL "")
    set(${path_var_name} "${SWIFT_ANDROID_NATIVE_SYSROOT}/usr/bin" PARENT_SCOPE)
  else()
    message(SEND_ERROR "Couldn't set ${arch} tools path for Android")
  endif()
endfunction ()

function(swift_android_cxx_libraries_for_arch arch libraries_var_name)
  set(link_libraries)
  if(NOT "${SWIFT_ANDROID_NDK_PATH}" STREQUAL "")
    set(android_libcxx_path "${SWIFT_SDK_ANDROID_ARCH_${arch}_PATH}/usr/lib/${SWIFT_SDK_ANDROID_ARCH_${arch}_NDK_TRIPLE}")
    list(APPEND link_libraries ${android_libcxx_path}/libc++abi.a
                               ${android_libcxx_path}/libc++_shared.so)
  elseif(NOT "${SWIFT_ANDROID_NATIVE_SYSROOT}" STREQUAL "")
      list(APPEND link_libraries "${SWIFT_ANDROID_NATIVE_SYSROOT}/usr/lib/libc++_shared.so")
  else()
    message(SEND_ERROR "Couldn't set ${arch} libc++ libraries needed for Android")
  endif()

  set(${libraries_var_name} ${link_libraries} PARENT_SCOPE)
endfunction()