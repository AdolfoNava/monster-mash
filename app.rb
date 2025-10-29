require "sinatra"
# These are web urls for the sinatra web app similar to method calls
# get here is the type of http request we expect to run this logic 
# Types of http requests like: Get, Post, Delete, Put,Patch
get '/' do
  # @ lets you send data variables over to erb files
  @costume = [
    "Boo",
    "Frankenstein",
    "Annabelle",
    "Chucky",
    "Dracula",
    "Buzz Lightyear"
  ].sample

  @image_url = image_url(@costume)

  # erb files look through filenames within the view folder
  erb(:costume)
end

get '/candy' do
  @candy = [
    "Skittles",
    "Butterfingers",
    "Smarties",
    "Twix",
    "Kit-Kat",
    "Snickers",
    "Reeses",
    "Smarties"
  ].sample

  @image_url = image_url(@candy)

  erb(:candy)
end

# Returns a string of the url for the webpage we are loading a reference image
def image_url(keyword)
  url_friendly_keyword = keyword.downcase.split(' ').join('+')

  "https://loremflickr.com/300/300/#{url_friendly_keyword}"
end
