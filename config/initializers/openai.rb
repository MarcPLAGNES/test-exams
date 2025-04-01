require 'dotenv/load' # Add this line to load environment variables from .env

OpenAI.configure do |config|
  config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN") do
    raise "Environment variable OPENAI_ACCESS_TOKEN is missing. Please set it before running the application."
  end
end
