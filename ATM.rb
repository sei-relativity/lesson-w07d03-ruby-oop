class ATM 
  attr_accessor :money
    attr_reader :type , :transaction_history
    def initialize(type,money=0)
      @type , @money = type , money
      @transaction_history = []
    end

    def withdraw (money)
      if money > @money
        puts "you don't have enough money"
      else
        @money = @money - money
      puts "you withdraw #{money} and the new balance is #{@money}"
      @transaction_history.unshift("-#{money}")
      end
    end

    def deposit (money)
      @money = @money + money
      puts "you deposit #{money} and the new balance is #{@money}"
      @transaction_history.unshift("+#{money}")
    end

    def show_balance 
      puts @money
    end
end


