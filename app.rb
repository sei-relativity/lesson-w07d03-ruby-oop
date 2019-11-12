require_relative "ATM"
require_relative "RecordAlbums"
require_relative "Animals"


new_atm =ATM.new('checking', 1000)

new_atm.show_balance
new_atm.withdraw(100)
puts new_atm.transaction_history
new_atm.deposit(300)
puts new_atm.transaction_history
new_atm.withdraw(1500)

puts '###############################################'

kattun =RecordAlbums.new('KAT-TUN', 'cast', ['moonlight','one way love','vivid love','be alive','ask your self','new genesis'])
puts kattun.current_song
kattun.next_song
puts kattun.current_song
kattun.previous_song
puts kattun.current_song