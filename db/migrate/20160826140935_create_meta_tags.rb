class CreateMetaTags < ActiveRecord::Migration[5.0]
  def up
    create_table :meta_tags do |t|
      t.string :locale
      t.string :description
      t.string :title
      t.string :keywords
      t.string :url

      t.timestamps
    end

    Rake::Task['meta_tags:create_tags_for_actions'].invoke
  end

  def down
    drop_table :meta_tags
  end
end
