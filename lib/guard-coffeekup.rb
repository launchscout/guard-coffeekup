module ::Guard
  class CoffeeKup < ::Guard::Guard
    def run_all
      run_on_change(Watcher.match_files(self, Dir.glob(File.join('**', '*.coffeekup'))))
    end

    def run_on_change(paths)
      paths.each do |path|
        system "coffeekup --js -n #{options[:namespace]} -o #{options[:output]} #{path}"
      end
    end
  end
end