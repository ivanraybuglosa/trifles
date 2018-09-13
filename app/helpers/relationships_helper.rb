module RelationshipsHelper

  def relationship_activity(followed)
    User.find(followed)
  end
end
