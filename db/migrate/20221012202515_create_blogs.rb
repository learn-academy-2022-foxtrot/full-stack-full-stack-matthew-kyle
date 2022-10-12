class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end

Blog.create(title: 'Big Bear', content: 'aosdnjasjdnsadn')

Blog.create(title: 'North Lake Tahoe', content: 'aosdnjasjdnsadngfdgh')

Blog.create(title: 'Park City', content: 'aosdnjasjdnsadnasdf')

Blog.create(title: 'Breckenridge', content: 'aosdnjasjdnsadnasd')