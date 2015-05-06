  
# biicodes CMake macro

  include(${CMAKE_HOME_DIRECTORY}/biicode.cmake) 
  include(biicode/boost/setup)
  SET(BII_LIB_SRC)

  ADD_BII_TARGETS()

  bii_find_boost(COMPONENTS thread REQUIRED)
  target_link_libraries(${BII_BLOCK_TARGET} INTERFACE ${Boost_LIBRARIES})