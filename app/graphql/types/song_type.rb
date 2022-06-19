# frozen_string_literal: true

module Types
  class SongType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :artist_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
