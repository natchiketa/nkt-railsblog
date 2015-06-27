if defined?(JazzFingers)
  JazzFingers.configure do |config|
    config.colored_prompt = false
    config.awesome_print = true
    config.coolline = false
    config.prompt_separator = '>'
  end

  require 'jazz_fingers/setup'
end
