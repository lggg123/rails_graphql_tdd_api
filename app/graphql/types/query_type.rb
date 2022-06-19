module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :artists,
          [Types::ArtistType],
          null: false,
          description: "Returns a list of Artists in the library"
    field :songs,
          [Types::SongType],
          null: false,
          description: "Returns a list of songs in the library"
          
    def artists
      Artist.all
    end
    
    def songs
      Song.all
    end
  end
end
