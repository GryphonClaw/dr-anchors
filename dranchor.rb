# Module Anchor
# provides constants for changing the draw origin of a render primitive
module Anchor
  # X Origin of the anchor is on the right side of the object
  TOP_X = {anchor_x: 1.0}
  # X Origin of the anchor is in the center of the object
  CENTER_X = {anchor_x: 0.5}
  # X Origin of the anchor is on the bottom side of the object
  BOTTOM_X = {anchor_x: 0.0}
  
  # Y Origin of the anchor is on the bottom side of the object
  TOP_Y = {anchor_y: 1.0}
  # Y Origin of the anchor is in the center of the object
  CENTER_Y = {anchor_y: 0.5}
  # Y Origin of the anchor is on the top side of the object
  BOTTOM_Y = {anchor_y: 0.0}

  # The origin of the primitive is draw at the top left of the object
  TOP_LEFT = {**BOTTOM_X, **TOP_Y}
  # The origin of the primitive is draw at the top center of the object
  TOP_CENTER = {**CENTER_X, **TOP_Y}
  # The origin of the primitive is draw at the top right of the object
  TOP_RIGHT = {**TOP_X, **TOP_Y}

  # The origin of the primitive is draw at the center left of the object
  CENTER_LEFT = {**BOTTOM_X, **CENTER_Y}
  # The origin of the primitive is draw at the center of the object
  CENTER = {**CENTER_X, **CENTER_Y}
  # The origin of the primitive is draw at the center right of the object
  CENTER_RIGHT = {**TOP_X, **CENTER_Y}

  # The origin of the primitive is draw at the center left of the object
  BOTTOM_LEFT = {**BOTTOM_X, **CENTER_Y}
  # The origin of the primitive is draw at the center of the object
  BOTTOM_CENTER = {**CENTER_X, **CENTER_Y}
  # The origin of the primitive is draw at the center right of the object
  BOTTOM_RIGHT = {**TOP_X, **CENTER_Y}
end
