name 'application'
%w(apt build-essential).each do |cookbook|
  depends cookbook
end
Dir.glob('./site-cookbooks/application-*').each do |path|
  depends File.basename(path)
end
