require 'benchmark'

def bench(lang)
  puts "Benchmarking #{lang} start up..."

  results = Benchmark.measure do
    system "docker run hello_#{lang}"
  end

  puts results
end

%w[go node python].each { |lang| bench(lang) }

exit 0
