Deface::Override.new(
  :virtual_path => 'spree/layouts/admin',
  :name => 'add_spree_delayed_job_to_admin_tabs',
  :insert_bottom => "[data-hook='admin_tabs']",
  :text => %q{
    <%= tab 'Batch Jobs' ,:route => :admin_delayed_jobs %>
  })
                        

