require "administrate/field/base"

class StatsUserField < Administrate::Field::Base
  def to_s
    data
  end

  def select_field_values
    users = options.fetch(:users)
    users.each_with_object({}) do |user, hash|
      name = "#{user.last_name} #{user.first_name}"
      hash[name.to_sym] = user.id
    end
  end
end
