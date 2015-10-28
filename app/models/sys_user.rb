class SysUser < ActiveRecord::Base
  before_save { self.userName = userName.downcase }
  validates :userName,uniqueness: true
  has_secure_password
end
