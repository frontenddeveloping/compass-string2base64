require "compass/string2base64/version"
require "sass"
require "base64"

module Sass::Script::Functions
    def string2base64(string)
        assert_type string, :String
        Sass::Script::String.new(Base64.encode64(string.value))
    end
    declare :string2base64, :args => [:string]
end