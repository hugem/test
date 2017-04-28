module ProfilesHelper
  def link_to_profile(handle)
    link_to handle, profile_path(handle)
  end
end
