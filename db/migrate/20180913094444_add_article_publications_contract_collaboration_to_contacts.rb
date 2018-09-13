class AddArticlePublicationsContractCollaborationToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :article, :string
    add_column :contacts, :publications, :string
    add_column :contacts, :contract, :string
    add_column :contacts, :collaboration, :date
  end
end
