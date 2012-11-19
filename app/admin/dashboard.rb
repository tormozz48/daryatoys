ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t('admin.dashboard.title') }

  content :title => proc{ I18n.t('admin.dashboard.title') } do
    #div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #  span :class => "blank_slate" do
    #    span "Welcome to Active Admin. This is the default dashboard page."
    #    small "To add dashboard sections, checkout 'app/admin/dashboards.rb'"
    #  end
    #end

    div :class => "dashboard_item" do
      span :class => "blank_slate" do
        I18n.t('admin.dashboard.category_count')
      end
      span :class => "blank_slate" do
        Category.all.count
      end
    end

    div :class => "dashboard_item" do
      span :class => "blank_slate" do
        I18n.t('admin.dashboard.category_count_enabled')
      end
      span :class => "blank_slate" do
        Category._enabled.count
      end
    end

    div :class => "dashboard_item" do
      span :class => "blank_slate" do
        I18n.t('admin.dashboard.product_count')
      end
      span :class => "blank_slate" do
        Product.all.count
      end
    end

    div :class => "dashboard_item" do
      span :class => "blank_slate" do
        I18n.t('admin.dashboard.product_count_enabled')
      end
      span :class => "blank_slate" do
        Product._enabled.count
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
