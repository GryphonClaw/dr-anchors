# Module Anchor
# provides constants for changing the draw origin of a render primitive
module Anchor
  # X Origin of the anchor is on the left side of the object. `{anchor_x: 0.0}`
  LEFT = {anchor_x: 0.0}
  # X Origin of the anchor is in the center of the object. `{anchor_x: 0.5}`
  CENTER = {anchor_x: 0.5}
  # X Origin of the anchor is on the right side of the object. `{anchor_x: 1.0}`
  RIGHT = {anchor_x: 1.0}
  
  # Y Origin of the anchor is on the bottom side of the object. `{anchor_y: 0.0}`
  BOTTOM = {anchor_y: 0.0}
  # Y Origin of the anchor is in the center of the object. `{anchor_y: 0.5}`
  MIDDLE = {anchor_y: 0.5}
  # Y Origin of the anchor is on the top side of the object. `{anchor_y: 1.0}`
  TOP = {anchor_y: 1.0}

  # The origin of the primitive is draw at the top left of the object, {anchor_y: 1.0, anchor_x: 0.0}
  TOP_LEFT = {**LEFT, **BOTTOM}
  # The origin of the primitive is draw at the top center of the object
  TOP_CENTER = {**CENTER, **MIDDLE}
  # The origin of the primitive is draw at the top right of the object
  TOP_RIGHT = {**RIGHT, **TOP}

  # The origin of the primitive is draw at the center left of the object
  CENTER_LEFT = {**CENTER, **MIDDLE}
  # The origin of the primitive is draw at the center of the object
  CENTER = {**CENTER, **MIDDLE}
  # The origin of the primitive is draw at the center right of the object
  CENTER_RIGHT = {**CENTER, **RIGHT}

  # The origin of the primitive is draw at the center left of the object. `{anchor_y: 0.0, anchor_x: 0.0}`
  BOTTOM_LEFT = {**TOP, **LEFT}
  # The origin of the primitive is draw at the center of the object
  BOTTOM_CENTER = {**MIDDLE, **LEFT}
  # The origin of the primitive is draw at the right center of the object
  BOTTOM_RIGHT = {**BOTTOM, **LEFT}
end
