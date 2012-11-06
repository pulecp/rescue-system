#!/usr/bin/ruby


h={}

File.open('./chroot/var/lib/dpkg/status').read.split("\n").each do |ln|
  m=ln.match(/^([A-Z][A-Za-z\-]*): (.*)$/)
  if not m.nil?
     h[m[1]] = m[2]
  end

  if ln.empty?
     puts "#{h['Installed-Size']} #{h['Package']}"
     h={}
  end
end