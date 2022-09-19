# your code goes here
require 'pry'

class Person
    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene


    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end
    
    def bank_account=(new_balance)
       @bank_account = new_balance
    end

    def happiness=(new_happiness)
        
      if new_happiness > 10
        new_happiness = 10
      elsif  new_happiness < 0
        new_happiness  = 0
      end
        @happiness = new_happiness
    end
   
    def hygiene=(new_hygiene)
        
        if new_hygiene > 10
            new_hygiene = 10
        elsif new_hygiene < 0
            new_hygiene = 0
        end
        @hygiene = new_hygiene
    
    end

    def happy? 
       self.happiness > 7
    end
    def clean?
        self.hygiene > 7
    end
    def get_paid(amount)
        
        self.bank_account += amount 
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end
   
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif
            topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else

            "blah blah blah blah blah"
        end
    end

end

Charles = Person.new('Charles')

#def change_attr(me,  friend, comp, num)
 #   [me, friend].each  |person| {person.happiness comp num }
#end