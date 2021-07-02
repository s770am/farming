require_relative 'Farm' 

class Menu

    def intialize 

    end

    def print_menu
puts "Options: press
1- for field -> adds a new field
2- for harvest -> harvests crops and adds to total harvested
3- for status -> displays some information about the farm
4- for relax -> provides lovely descriptions of your fields
5- for exit -> exits the program"
    end

    def run_menu
while true
    print_menu
selection = gets.chomp
run_option(selection)
    end
end

def run_option(selection)
    case selection.to_i
    when 1 then create_field
    when 2 then harvest
    when 3 then Farm.status
    when 4 then Farm.relax
    when 5 then exit(true)
    end
end

def create_field
puts "enter in your field size"
size = gets.chomp
 if size.to_i.is_a?(Integer) && size.to_i != 0
puts "what is your field type"
type = gets.chomp
if type == "corn" || type == "wheat"
return Farm.create(size.to_i, type)
end
end
puts "sorry invalid input"
end


def harvest
    corn = Farm.return_corn_amount
    wheat = Farm.return_wheat_amount
if corn > 0 && wheat > 0
puts "you have harvested #{corn} hectors of corn and #{wheat} hectors of wheat"
elsif corn > 0 
    puts "you have harvested #{corn} hectors of corn"
    elsif wheat > 0
        puts "you have harvested #{wheat} hectors of corn"

        else
            puts "you dont have anything to harvest"
            return false
end
puts "you have havested #{Farm.harvest} amount of food"
end

end

my_menu = Menu.new
my_menu.run_menu