module UsersHelper

  def user_avatar(user, classes)
    @avatar = user.avatar
    if @avatar.present?
      @avatar_user = image_tag(@avatar.url, alt: user.name, class: classes)
    else
      @avatar_user = image_tag("/avatar.jpg", alt: user.name, class: classes)
    end
  end

  def admin_users(current_user,user)
    if current_user == user && user.admin?
    elsif user.admin?
      link_to "Remove as Admin", admin_user_path(user), method: :patch, class: 'btn btn-outline-danger btn-block'
    else
      link_to "Set as Admin", admin_user_path(user), method: :patch, class: 'btn btn-outline-info btn-block'
    end
  end
end
