# frozen_string_literal: true

module OpenApi
  module Generator
    module_function

    def root
      Root.instance
    end

    def openapi(value)
      root.openapi = value
    end

    def info(value)
      root.info = Info.instance
      root.info.title = value[:title]
      root.info.version = value[:version]
    end

    def paths(paths)
      root.paths = root.paths.to_a

      paths.each do |path|
        root.paths << Path.new(path)
      end
    end

    def setup(&block)
      instance_eval(&block)
    end
  end
end
