require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:giraffe)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  elsif @comp_move == "scissors"
    @outcome = "won"
  end
  erb(:zebra)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  end
  erb(:panda)

end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "scissors"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "won"
  elsif @comp_move == "rock"
    @outcome = "lost"
  end

  erb(:doggy)
end
