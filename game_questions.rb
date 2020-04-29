
# def load(path)
#     File.read(path)
# end

# def split(str)
#     str.split("\n")
# end

# def questions(arr)
#     coleccion = []
#     if arr.size.even?
#         (0...arr.size).step(2) do |idx|
#             if idx.even?
#                 coleccion << { question: arr[idx], answer: arr[idx + 1] }
#             end 
#         end
#     end
#     coleccion
# end

# def output(path)
#     str = load(path)
#     arr = split(str)
#     questions(arr)
# end

# class UX
#     def generateQuestion(str)
#         puts str
#     end

#     def getAnswer()
#         gets.chomp.downcase
#     end

#     def notGood(str = "Your answer is not good!!!")
#         puts str
#     end

#     def okCool(str = "The answer is correct")
#         puts str
#     end

#     def notify(str)
#         puts str
#     end
#     def line() puts "|#{"=" * 15}|" end
# end


# def startGame(path)
#     ui = UX.new
#     questions = output(path)
#     questions.shuffle.each do |item|
#         ui.generateQuestion(item[:question])
#         ui.notify "Write your answer:" 

#         answer = ui.getAnswer

#         while answer != item[:answer]
#             ui.notGood
#             ui.notify "Write your answer:"
#             answer = ui.getAnswer
#         end
#         ui.okCool "the answer is correct"
#         ui.line
#         ui.notify "next question"
#     end

# end

# startGame("questions_and_answer.txt")





    
def read(path)

    arra = File.read(path).split("\n")
    colection = []
    if arra.size.even?
        (0...arra.size).step(2) do |index|
            if index.even?
                colection << { question: arra[index], answer: arra[index+1] }
            end
        end
    end
    
    colection  

end

def logic(final)
    
    score = 50
    times = 0
    num = 0
    final.shuffle.each do |item|
        num = num + 1
        puts
        puts "Next, you will find the question: #{" " * 50} |Score: #{score}|"
        puts
        puts "#{" " * 4} #{num}. #{item[:question]}"
        puts
        print "#{" " * 4} Write your answer: "
        answer = gets.chomp.downcase
        count = 0
        while answer != item[:answer]
            times = times + 1
            puts
            puts "#{" " * 22}:( The answer is wrong tray again :("
            puts "#{" " * 34}-2 points"
            puts    
            print "#{" " * 4} Write your answer: "
            answer = gets.chomp.downcase
            score = score - 2
        end
        score = score
        puts
        puts "#{" " * 25}Great!! The answer is correct."
        puts "#{"_" * 96}"
        
    end 

    puts
    puts "#{" " * 22}Result"
    puts
    puts "#{" " * 10}Total wrong asnwer:#{" " * 10} #{times}"
    puts "#{" " * 10}Total negative points:#{" " * 7} #{times * 2}"
    puts "#{" " * 10}Total points:#{" " * 16} #{score}"
    puts

end

def home(final)

    puts
    puts "#{" " * 22}---| Challenge Game Five |---"
    puts
    puts "The goal of the game is that you answer five questions correctly to win a total of 50 points.\nIf you make a mistake and write a wrong answer, then you will have less 2 points. "
    puts
    puts "if you wanth play type 'y' else type 'q' for quit."
    puts
    print "Your option:"
    option = gets.chomp.downcase
    if option == "y"
        logic(final)
    elsif option == "q"
        puts "#{"_" * 96}"
        puts
        puts "#{" " * 22} Thanks for your visit"
        puts
    end
    
end

def send(path)
    final = read(path)
    home(final) 
end

send("questions_and_answer.txt")





