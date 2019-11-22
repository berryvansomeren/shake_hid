from pathlib import Path
from typing import List

from cmake_generator import NewTarget, Target, TargetType

# ----------------------------------------------------------------
def get_target_definitions() -> List[ Target ] :
    shake_hid = NewTarget(
        name = 'shake_hid',
        target_type = TargetType.SharedLibrary,
        src_dir_path = ( Path( __file__ ).resolve().parent / 'src/' ).as_posix(),
        dependencies = [
            'glad',
            'glfw',
            'glm',
            'pybind11',
            'shake_core'
        ]
    )
    return [ shake_hid ]
