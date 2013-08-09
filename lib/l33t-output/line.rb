module L33tOutput
  class Line
    LETTERS = ('A'..'Z').to_a
    LAG = 20
    attr_reader :txt, :show, :out

    def initialize(txt)
      @txt = txt.upcase.strip
      @out = $stdout
      @counter = 0
      @show = []
    end

    def output
      rotate do
        out.print "\r#{display}"
        out.flush
        sleep 0.01
      end
      out.puts
    end

    def display
      txt.length.times.map{|i| got(i) or LETTERS.sample }.join
    end

    def done?
      indices.empty?
    end

    def incr
      show << indices.shift
    end

    private :show, :out

    def indices
      @indices ||= txt.length.times.to_a.shuffle
    end

    def got(i)
      txt[i] if show.include? i
    end

    def rotate
      begin
        @counter += 1
        incr if @counter % LAG
        yield
      end while not done?
    end
  end
end
