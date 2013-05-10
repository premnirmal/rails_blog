ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    section "Recent articles" do
      table_for Article.order("updated_at desc").limit(5) do
        column :title do |a|
          link_to a.title, [:admin, a]
        end
        column :updated_at
      end
      strong {link_to "View all articles", admin_articles_path}
    end
    br
    hr
    br
    section "Recent tags" do
      table_for Tag.order("updated_at desc").limit(5) do
        column :name do |t|
          link_to t, [:admin, t]
        end
        column :updated_at
      end
      strong {link_to "View all tags", admin_tags_path}
    end
    

  end # content
end
