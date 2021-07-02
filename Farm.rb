
class Farm
    @@harvested = 0
    @@fields = []

    attr_accessor :size, :type

    def initialize( size, type)
        @size = size
        @type = type
    end

  

    def self.create(size, type)
@@fields << Farm.new(size, type)
    end

    def self.harvest
@@fields.each do |field|
if field.type = "corn"
  food =  20
else 
food = 30
end
@@harvested += (field.size * food)
@@fields = []
end
return @@harvested
    end

    def self.relax
if self.get_size("corn") > 0
    puts "#{self.get_size("corn")} hectors of lushes green corn stalk stand proudly"
end
if get_size("wheat") > 0
    puts "#{self.get_size("wheat")} hectors of golden wheat stalk reflect the sun"
end
    end

    def self.status
        if @@fields == []
            puts "your fields are empty"
            return false
        end
        if self.get_size("corn") > 0
            puts "you have #{self.get_size("corn")} hectors of corn fields"
        end 
        if self.get_size("wheat") > 0
            puts "you have #{self.get_size("wheat")} hectors of wheat fields"
        end
        puts "you have harvested #{@@harvested} amount of food so far" 
        end

        def self.return_corn_amount
            self.get_size('corn')
        end

        def self.return_wheat_amount
            self.get_size('wheat')
                    end

private
    def self.get_size(type)
        total = 0
@@fields.each do |field|
if field.type == type
    total += field.size
end
return total
    end
end


end