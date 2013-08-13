IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

begin
  if defined?(::Bundler)
    default_gemset = ENV['GEM_PATH'].split(':').last.gsub(/@.*/, '')
    if default_gemset
      all_global_gem_paths = Dir.glob("#{default_gemset}/gems/*")
      all_global_gem_paths.each do |p|
        gem_path = "#{p}/lib"
        $LOAD_PATH << gem_path
      end
    end
  end
  # Use Pry everywhere
  require 'pry'
  Pry.start
  exit
rescue LoadError => e
  warn "=> Unable to load pry"
end
