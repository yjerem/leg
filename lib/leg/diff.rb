    # Append a Line to the Diff.
    def <<(line)
      unless line.is_a? Leg::Line
        raise ArgumentError, "expected a Line"
      @lines << line
            cur_diff << Leg::Line.new(:unchanged, line[1..-1], line_nums)
            cur_diff << Leg::Line::Added.new(:added, line[1..-1], line_nums)
            cur_diff << Leg::Line.new(:removed, line[1..-1], line_nums)