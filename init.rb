require "texel/acts_as_80s_has_been"
ActionController::Base.class_eval do
  include Texel::ActsAs80sHasBeen
end