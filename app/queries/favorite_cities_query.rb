class FavoriteCitiesQuery
  attr_reader :relation

  def initialize(user_id, relation = FavoriteCity.includes(:user))
    @relation = relation
    @user_id = user_id
  end

  def search_names
    relation.where(user_id: @user_id).map(&:name)
  end
end
