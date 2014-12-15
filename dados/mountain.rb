#!/usr/bin/env ruby

class Fractal

  DEFAULT_N = 2**5+1
  DEFAULT_HS = 100

  attr_reader :n

  def initialize(options = {})
    @n = DEFAULT_N
    @data = Array.new(n, 0.0).map { |x| Array.new(n, 0.0) }

    hs = DEFAULT_HS
    @data[0][0] = @data[0][n-1] = @data[n-1][0] = @data[n-1][n-1] = hs
  end

  def generate!
    h = 1.0
    sd = n-1
    while (sd > 1) do
      hf = sd/2.0

      x = 0
      while (x < n-1) do
        y = 0
        while (y < n-1) do
          c1 = @data[x][y]
          c2 = @data[x+sd][y]
          c3 = @data[x][y+sd]
          c4 = @data[x+sd][y+sd]

          avg = (c1 + c2 + c3 + c4)/4.0 + (rand()*2-1)*h;

          set_cell x+hf, y+hf, avg

          y += sd
        end

        x += sd
      end

      (0...n-1).step(hf) do |x|
        (((x+hf)%sd)...(n-1)).step(sd) do |y|
          c1 = @data[(x-hf+n-1)%(n-1)][y]
          c2 = @data[(x+hf)%(n-1)][y]
          c3 = @data[x][(y+hf)%(n-1)]
          c4 = @data[x][(y-hf+(n-1))%(n-1)]

          avg = (c1 + c2 + c3 + c4)/4.0 + (rand()*2-1)*h;

          set_cell x, y, avg

          set_cell n-1, y, avg if x == 0
          set_cell x, n-1, avg if y == 0
        end
      end

      sd = sd/2
      h = h/2.0
    end
  end

  def set_cell (x, y, val)
    @data[x][y] = val.to_f
  end

  def show
    @data.each_with_index do |row,i|
      row.each_with_index do |v,j|
        puts "#{i} #{j} #{v}"
      end
      puts
    end
  end
end

f = Fractal.new
f.generate!
f.show
