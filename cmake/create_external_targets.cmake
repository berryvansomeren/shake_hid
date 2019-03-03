#----------------------------------------------------------------
# Create the external targets that our project relies on

# GLFW options
if ( NOT TARGET glfw )
	option( GLFW_INSTALL			OFF )
	option( GLFW_BUILD_DOCS			OFF )
	option( GLFW_BUILD_EXAMPLES		OFF )
	option( GLFW_BUILD_TESTS		OFF )
	add_subdirectory( external/glfw ) 
endif()

# a list of all include directories
set( SHAKE_INCLUDE_DIRECTORIES 
	src/
	external/glad/include/
    external/glfw/include/
	C:/Users/Berry/Documents/shake3/shake_core/src/
)

link_directories( ${PROJECT_NAME} PUBLIC
	C:/Users/Berry/Documents/shake_build
)

# a list of all external libraries
set( SHAKE_EXTERNAL_LIBRARIES 
	${EXECUTABLE_NAME}
    glfw
    ${GLFW_LIBRARIES}
	${GLAD_LIBRARIES}
	shake_core
)

