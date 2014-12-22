name 'application'
Dir.glob('./site-cookbooks/application-*').each do |path|
  depends File.basename(path)
end
