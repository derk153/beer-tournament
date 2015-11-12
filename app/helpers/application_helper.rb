module ApplicationHelper

  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end

  def match_class(index=0, level=-1, top=0)
    styles = "level-#{level} "
    if level > 0
      styles += 'child '
    end
    if level == top-1
      styles += 'final '
    elsif level == top
      styles += 'winner '
    end
    if level >= 0 && level < top-1
      styles += ((index % 2) == 0) ? 'left-parent ' : 'right-parent '
    end

    styles
  end

end
