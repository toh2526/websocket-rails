module WebsocketRails
  class Enum < Hash
    def initialize(*members)
      @rev = {}
      members.each { |k,v| self[v] = k }
    end
    def [](k)
       super || @rev[k]
    end
    def []=(k,v)
      @rev[v] = k
      super
    end
  end
end
