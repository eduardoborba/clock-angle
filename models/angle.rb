class Angle
  include Mongoid::Document

  field :hours, type: Integer
  field :minutes, type: Integer
  field :angle, type: Float
end