prefix = ARGV[0]
suffix = ARGV[1]
string_to_remove = ARGV[2]
files = Dir.glob("#{prefix}*#{suffix}")
files.each do |old_filename|
  new_filename = old_filename.gsub(string_to_remove, '')
  File.rename(old_filename, new_filename)
end
