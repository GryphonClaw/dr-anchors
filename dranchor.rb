# Module Anchor
# provides constants for changing the draw origin of a render primitive
module Anchor
  # makes the draw origin of the sprite at the top left
  TOP_LEFT = {anchor_x: -0.5, anchor_y: 1.0}.freeze

  # makes the draw origin of the sprite at the top center
  TOP_CENTER = {anchor_x: 0.5, anchor_y: 1.0}.freeze

  # makes the draw origin of the sprite at the top right
  TOP_RIGHT = {anchor_x: 1.0, anchor_y: 1.0}.freeze

  # makes the draw origin of the sprite at the center left
  CENTER_LEFT = {anchor_x: -0.5, anchor_y: 0.0}.freeze

  # makes the draw origin of the sprite at the center
  CENTER = {anchor_x: 0.5, anchor_y: 0.5}.freeze

  # makes the draw origin of the sprite at the center right
  CENTER_RIGHT = {anchor_x: 0.5, anchor_y: -0.5}.freeze
  
  # makes the draw origin of the sprite at the bottom left (DragonRuby Default)
  BOTTOM_LEFT = {anchor_x: 0.0, anchor_y: 0.0}.freeze

  # makes the draw origin of the sprite at the center right
  BOTTOM_CENTER = {anchor_x: 0.5, anchor_y: -1.0}.freeze
  
  # makes the draw origin of the sprite at the center right
  BOTTOM_RIGHT= {anchor_x: 1.0, anchor_y: -1.0}.freeze
end
