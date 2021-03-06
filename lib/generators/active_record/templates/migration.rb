class DeviseCertificateAddTo<%= table_name.camelize %> < ActiveRecord::Migration
  def self.up
    change_table :<%= table_name %> do |t|
      t.string    :certificate_id
      t.datetime  :last_sign_in_with_certificate
      t.boolean   :certificate_enabled, :default => false
    end

    add_index :<%= table_name %>, :certificate_id
  end

  def self.down
    change_table :<%= table_name %> do |t|
      t.remove :certificate_id, :last_sign_in_with_certificate, :certificate_enabled
    end
  end
end

