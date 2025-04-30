def boot args
  #disables nil punning
  args.state = {}
end


def tick args
  args.outputs.background_color = Color::BLACK

  if args.tick_count.zero?
    args.state.dir_draw = :top
  end

  case args.state.dir_draw
  when :top
    draw_top(args)
  when :center
    draw_center(args)
  when :bottom
    draw_bottom(args)
  when :all
    draw_all(args)
  end
  
  
  args.outputs.primitives << {**DRAW_RECT, **Color::GREY, primitive_marker: :border}
  args.outputs.primitives << {**Layout.rect(row: 0, col: 0, w: 0, h: 0), **Color::WHITE, primitive_marker: :label, text: "Draw Origin: #{args.state.dir_draw.capitalize}", size_enum: 20}
  
  # args.outputs.primitives << Layout.debug_primitives(invert_colors: true)

  mode_input_check(args)
end

def draw_top(args)
  args.outputs.primitives << {**DRAW_RECT, **Anchor::TOP_LEFT, **Color::RED, primitive_marker: :solid}
  args.outputs.primitives << {**DRAW_RECT, **Anchor::TOP_CENTER, **Color::GREEN, primitive_marker: :solid}
  args.outputs.primitives << {**DRAW_RECT, **Anchor::TOP_RIGHT, **Color::BLUE, primitive_marker: :solid}
end

def draw_center(args)
  args.outputs.primitives << {**DRAW_RECT, **Anchor::CENTER_LEFT, **Color::RED, primitive_marker: :solid}
  args.outputs.primitives << {**DRAW_RECT, **Anchor::CENTER, **Color::GREEN, primitive_marker: :solid}
  args.outputs.primitives << {**DRAW_RECT, **Anchor::CENTER_RIGHT, **Color::BLUE, primitive_marker: :solid}
end

def draw_bottom(args)
  args.outputs.primitives << {**DRAW_RECT, **Anchor::BOTTOM_LEFT, **Color::RED, primitive_marker: :solid}
  args.outputs.primitives << {**DRAW_RECT, **Anchor::BOTTOM_CENTER, **Color::GREEN, primitive_marker: :solid}
  args.outputs.primitives << {**DRAW_RECT, **Anchor::BOTTOM_RIGHT, **Color::BLUE, primitive_marker: :solid}
end

def draw_all(args)
  draw_top(args)
  draw_center(args)
  draw_bottom(args)
end

def mode_input_check(args)
  kb = args.inputs.keyboard
  if kb.key_down.kp_eight
    args.state.dir_draw = :top
  end

  if kb.key_down.kp_five
    args.state.dir_draw = :center
  end
  if kb.key_down.kp_two
    args.state.dir_draw = :bottom
  end
  if kb.key_down.kp_zero
    args.state.dir_draw = :all
  end
end

