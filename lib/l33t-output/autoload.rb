# WARNING: including this file will globally alter the behavior of `puts`
require 'l33t-output/line'

module Kernel
  undef :puts
  def puts(*args)
    args.each do |arg|
      arg.to_s.each_line do |l|
        L33tOutput::Line.new(l).output
      end
    end
    nil
  end
end
