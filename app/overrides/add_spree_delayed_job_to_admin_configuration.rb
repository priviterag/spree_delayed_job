Deface::Override.new(
  :virtual_path => 'admin/configurations/index',
  :name => 'add_spree_delayed_job_to_admin_configurations_menu',
  :insert_bottom => "[data-hook='admin_configurations_menu']",
  :text => %q{
    <tr>
      <td><%= link_to 'Spree Delayed Job', "#" %></td>
      <td>Manage Spree Delayed JobManage</td>
    </tr> 
  })
                        
Deface::Override.new(
  :virtual_path => 'admin/shared/_configuration_menu',
  :name => 'add_spree_delayed_job_to_admin_configurations_sidebar_menu',
  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
  :text => %q{
    <%= configurations_sidebar_menu_item 'Spree Delayed Job', "#" %>
  })


