class FavoriteCitiesQuery
  attr_reader :relation, :user_id

  def initialize(user_id, relation = FavoriteCity.all)
    @relation = relation
    @user_id = user_id
  end

  def search_cities
    relation.where(user_id: user_id)
  end
end
