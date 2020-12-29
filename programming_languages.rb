require 'pry'
def reformat_languages(languages)
  # your code here
  result = {}
  languages.each_pair do |k,v|
    v.each_pair do |key,value|
      if result[key]
        result[key][:style].push(k)
      else
        result[key] = value
        result[key][:style] = [k]
      end
    end
  end
  result 
end


# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
# }