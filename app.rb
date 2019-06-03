require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i #remember than these values come in as strings and I have to convert them to intergers and then back to strings to put
    "#{@square.to_s}"
  end


  get "/say/:number/:phrase" do
    result = ""
    params[:number].to_i.times do
      result << params[:phrase]
    end
    result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = ""

    case params[:operation]
    when "add"
      answer = (number1 + number2).to_s
    when "subtract"
      answer = (number1 - number2).to_s
    when "multiply"
      answer = (number1 * number2).to_s
    when "divide"
      answer = (number1 / number2).to_s
    end
  end



end
