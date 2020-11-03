module Bot::DiscordCommands
  # A command for printing a link to the 'How to Play' guide.
  module HowToPlay
    extend Discordrb::Commands::CommandContainer

    command(:howtoplay, description: "Provides a link to the 'How to Play' guide.") do |event|
      event.respond(
{
    "content": " \n\n\n",
    "embed": {
        "fields": [
            {
                "name": "Starting a game",
                "value": "You can start a game of Ouija with the command ouija!start.\n\nThere are two game modes:\n\nThe first, which can be started with ouija!start, simply runs the game with no specific topic.\nThe second game mode runs the game in the same way, but with a question that the players are attempting to answer. It can be started with ouija!start Question?, e.g. ouija!start Spirits, what is your favorite color?.\nYou can also start the game with ouija!startwithquestion (ouija!startq also works). This will pick a random question from the list in questions.yml, included in the bot's code.",
                "inline": false
            },
            {
                "name": "Allowed messages",
                "value": "Once the game starts, only certain messages are allowed. All other messages will be deleted.\n\nOnly messages that follow these rules will be allowed:\n\nThe message must be one of the following:\nOnly one character long\nSpace - These are replaced with a space character in the final string.\nGoodbye - This attempts to end the game.\nSingle character messages must be one of the following:\nAny Latin characters of the alphabet, uppercase or lowercase.\nAny numbers 0-9.\nAny punctuation marks, e.g. ?, !, ,, ’, ;, etc.\nThe same user cannot send two messages in a row.\n",
                "inline": false
            },
            {
                "name": "Ending a game with Goodbye",
                "value": "A game of Ouija can be ended when a user sends a Goodbye.\n\nA Goodbye causes three things to happen:\n\nThe game stops for up to 10 minutes (600 seconds) and all new messages will be deleted.\nThe bot requests that users give two 👍 reactions to the Goodbye message. Note that reactions from the user who sent the Goodbye will not be counted.\nThe bot requests that users give two 👎 reactions to the Goodbye message in order to delete it.\nIf the game gets to 600 seconds without the Goodbye message receiving a sufficient number of reactions, the Goodbye message is deleted and the game will continue.",
                "inline": false
            }
        ]
    }
}
)
    end
  end
end
