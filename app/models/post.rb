class Post < Dynomite::Item
  include ActiveModel::Validations

  def persisted?
    !self.id.nil?
  end

  column :id, :title
  validates :title, presence: true
end
