class FavoriteCitiesQuery
  attr_reader :relation, :user_id

  def initialize(user_id, relation = FavoriteCity.all)
    @relation = relation
    @user_id = user_id
  end

  def first_city
    relation.where(user_id: user_id).first
  end
end
