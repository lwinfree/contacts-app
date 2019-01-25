class Contact < ApplicationRecord
  #can add model methods here! And then call them in the views

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  # validates_format_of :email, with: (insert regex here) 


  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def full_name
    "#{first_name } #{last_name}"
  end

  def japanese_prefix
    "+81 #{phone_number}"
  end

end
