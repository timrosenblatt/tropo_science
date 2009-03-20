# This menu doesn't keep asking you the same question over and over. This is an easy way to
# take different behaviors depending on the number of times the system is having problems
# understanding the input

answer

problems = 0

menu_structure = {
  :choices     => "indian('indian'), pizza('pizza', 'pizzareia'), mexican('mexican'), chinese('chinese')",
  :repeat => 3, 
  :timeout => 7,
  :onTimeout   =>  lambda { problems = problems + 1 
                            say "I'm sorry, I did not hear anything." if problems == 1
                            say "What did you say?" if problems == 2 },
  :onBadChoice =>  lambda { problems = problems + 1
                            say "I'm sorry, I did not understand your response." if problems == 1 
                            say "Damn, why don't you say something I understand?" if problems == 2 }
}

result = ask 'What kind of food do you like?', menu_structure
              
                 
 
log 'result name ' + result.name
log 'food type is ' + result.value

if result.name=='choice'
  say 'Great, you said ' + result.value
end

hangup