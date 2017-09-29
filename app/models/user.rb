class User < ApplicationRecord
  searchkick
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin], multiple: false)                                               ##
  ############################################################################################


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
