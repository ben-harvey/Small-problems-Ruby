class Banner
  def initialize(message)
    @message = message
    @width = message.size
  end

  def to_s
    [
    horizontal_rule,
    empty_line,
    message_line,
    empty_line,
    horizontal_rule
    ].join("\n")
  end

  private

  def message
    @message
  end

  def horizontal_rule
    "+-#{'-'* @width}-+"
  end

  def empty_line
    "| #{' '* @width} |"
  end

  def message_line
    "| #{message} |"

  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
banner = Banner.new('')
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+