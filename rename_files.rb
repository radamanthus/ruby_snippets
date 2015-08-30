files = Dir.glob('*png')
files.each do |old_filename|
  new_filename = old_filename.gsub(' [www.imagesplitter.net]-0', '')
  File.rename(old_filename, new_filename)
end
