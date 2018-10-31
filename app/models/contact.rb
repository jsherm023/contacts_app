class Contact < ApplicationRecord
  has_many :contact_groups
  has_many :groups, through: :contact_groups
  belongs_to :user
  def friendly_updated_at
    updated_at.strftime("%m/%d/%Y")
  end

  def full_name
    fullname = first_name + " " + last_name
  end
end
