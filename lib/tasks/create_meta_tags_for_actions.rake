namespace :meta_tags do
  task :create_tags_for_actions do
    c_name = :controller_name

    routes = Rails.application.routes.routes.map do |x| {
      url: x.path.spec.to_s.gsub(/\([a-z_.:]+\)/, ''),
      c_name => x.defaults[:controller],
    }
    end
    routes.reject { |x| x[c_name].nil? || x[c_name].include?('rails/') || x[c_name].include?('admin/') }.each do |obj|
      MetaTag.find_or_create_by(obj.reject { |k| k == c_name } )
    end
  end
end
