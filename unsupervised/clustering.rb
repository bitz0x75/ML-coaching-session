require 'nbayes'

# create new classifier instance
nbayes = NBayes::Base.new
# train it - notice split method used to tokenize text (more on that below)
nbayes.train( "You need to buy a Plane".split(/\s+/), 'SPAM' )
nbayes.train( "buy a Plane".split(/\s+/), 'SPAM' )
nbayes.train( "buy a Plane".split(/\s+/), 'SPAM' )
nbayes.train( "buy a Plane".split(/\s+/), 'SPAM' )
nbayes.train( "This is not spam, just a letter to Bob.".split(/\s+/), 'HAM' )
nbayes.train( "Hey Oasic, Do you offer consulting?".split(/\s+/), 'HAM' )
nbayes.train( "Hey Oasic, Do you offer consulting?".split(/\s+/), 'HAM' )
nbayes.train( "Hey Oasic, Do you offer consulting?".split(/\s+/), 'HAM' )
nbayes.train( "Hey Oasic, Do you offer consulting?".split(/\s+/), 'HAM' )
nbayes.train( "Hey Oasic, Do you offer consulting?".split(/\s+/), 'HAM' )
nbayes.train( "You should buy this stock".split(/\s+/), 'SPAM' )

# tokenize message
tokens = "Now is the time to buy a Plane cheaply and discreetly".split(/\s+/)
result = nbayes.classify(tokens)
# print likely class (SPAM or HAM)
puts result.max_class
# print probability of message being SPAM
print result['SPAM'], " ","SPAM"
puts ""
# print probability of message being HAM
print result['HAM'], " " ,"HAM"
puts ""