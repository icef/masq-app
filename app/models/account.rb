class Account < ActiveRecord::Base
  has_one :masq_account, :class_name => 'Masq::Account'

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable , :trackable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of   :login
  validates_length_of     :login, :within => 3..254
  validates_uniqueness_of :login, :case_sensitive => false
  validates_format_of     :login, :with => /^[A-Za-z0-9_@.-]+$/
  validates_presence_of   :email
  validates_uniqueness_of :email, :case_sensitive => false
  validates_format_of     :email, :with => Devise.email_regexp

  validates_presence_of     :password                                    #, :if => :password_required?
  validates_presence_of     :password_confirmation                       #, :if => :password_required?
  validates_length_of       :password, :within => Devise.password_length #, :if => :password_required?
  validates_confirmation_of :password                                    #, :if => :password_required?

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :login, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
