name 'application-nginx'
%w(nginx).each do |cookbook|
  depends cookbook
end
