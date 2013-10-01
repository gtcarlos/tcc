module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def link_to_next_page(scope, name, options = {}, &block)
    param_name = options.delete(:param_name) || Kaminari.config.param_name
    link_to_unless scope.last_page?, name, {param_name => (scope.current_page + 1)}, options.merge(:rel => 'next') do
      block.call if block
    end
  end

end
