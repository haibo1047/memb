module SysUsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(sysUser)
    gravatar_id = Digest::MD5::hexdigest(sysUser.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: sysUser.userName, class: "gravatar")
  end
end
