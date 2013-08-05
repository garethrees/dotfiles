Pry.config.prompt = [
 proc { |target_self, nest_level, pry|
   "[#{pry.input_array.size}](#{Pry.view_clip(target_self)})#{":#{nest_level}" unless nest_level.zero?}> "
 },

 proc { |target_self, nest_level, pry|
   "[#{pry.input_array.size}](#{Pry.view_clip(target_self)})#{":#{nest_level}" unless nest_level.zero?}* "
 }
]
