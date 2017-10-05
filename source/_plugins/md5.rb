# Copied from https://github.com/pathawks/liquid-md5/blob/master/lib/liquid-md5.rb

require 'digest/md5'

module MDhash
  def md5(input)
    Digest::MD5.hexdigest input.strip
  end
end

Liquid::Template.register_filter(MDhash)
