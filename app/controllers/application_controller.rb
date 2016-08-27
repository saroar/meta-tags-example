class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :find_meta_tags

  protected

  def find_meta_tags
    found_meta_tags = MetaTag.where(url: request.path)
    if found_meta_tags.present?
      meta_tag = meta_tags.take
      set_meta_tags title:        meta_tag.title,
                    description:  meta_tag.description,
                    keywords:     meta_tag.keywords
    end
  end
end
