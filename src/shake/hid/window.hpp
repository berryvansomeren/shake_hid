#ifndef WINDOW_HPP
#define WINDOW_HPP

#include <cstdint>
#include <string>

#include "shake/core/types/macro_non_copyable.hpp"

class GLFWwindow;

namespace shake {

using GLLoadProc = void* (*) ( const char* );

class Window
{
public:
    Window
    (
        const uint16_t      width,
        const uint16_t      height,
        const std::string&  title,
        const bool          is_resizable    = false,
        const size_t        window_samples  = 4
    );

    ~Window();

    NON_COPYABLE( Window )

    bool        get_should_close() const;
    void        set_should_close();

    GLLoadProc  get_glfw_gl_load_proc() const;

    GLFWwindow* get_glfw_window_ptr() const;

    void        swap_buffers();

private:
    GLFWwindow* m_window;

};

} // namespace shake

#endif // WINDOW_HPP
