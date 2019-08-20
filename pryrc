Pry.config.prompt = [
 proc { |target_self, nest_level, pry|
   "[#{pry.input_ring.size}](#{Pry.view_clip(target_self)})#{":#{nest_level}" unless nest_level.zero?}> "
 },

 proc { |target_self, nest_level, pry|
   "[#{pry.input_ring.size}](#{Pry.view_clip(target_self)})#{":#{nest_level}" unless nest_level.zero?}* "
 }
]

if defined?(Rails) && Rails.env
  if defined?(Rails::ConsoleMethods)
    include Rails::ConsoleMethods
  else
    def reload!(print=true)
      puts "Reloading..." if print
      ActionDispatch::Reloader.cleanup!
      ActionDispatch::Reloader.prepare!
      true
    end
  end
end
