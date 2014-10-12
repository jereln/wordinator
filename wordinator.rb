require 'sinatra'
require 'json'

get '/:word1/:word2' do
  content_type :json
  word1 = params[:word1]
  word2 = params[:word2]
  anagram = params[:word1].chars.sort == params[:word2].chars.sort
  { :word1 => word1, :word2 => word2, :is_an_anagram? => anagram }.to_json
end