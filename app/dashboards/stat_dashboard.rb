require "administrate/base_dashboard"

class StatDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    user_id: Field::Number,
    game_id: Field::Number,
    two_point_made: Field::Number,
    two_point_attempt: Field::String,
    three_point_made: Field::Number,
    three_point_attempt: Field::Number,
    free_throw_made: Field::Number,
    free_throw_attempt: Field::Number,
    offence_rebound: Field::Number,
    deffence_rebound: Field::Number,
    assist: Field::Number,
    block: Field::Number,
    steal: Field::Number,
    play_time: Field::Number,
    turn_over: Field::Number,
    personal_foul: Field::Number,
    starting_member: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :user_id,
    :game_id,
    :two_point_made,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user_id,
    :game_id,
    :two_point_made,
    :two_point_attempt,
    :three_point_made,
    :three_point_attempt,
    :free_throw_made,
    :free_throw_attempt,
    :offence_rebound,
    :deffence_rebound,
    :assist,
    :block,
    :steal,
    :play_time,
    :turn_over,
    :personal_foul,
    :starting_member,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user_id,
    :game_id,
    :two_point_made,
    :two_point_attempt,
    :three_point_made,
    :three_point_attempt,
    :free_throw_made,
    :free_throw_attempt,
    :offence_rebound,
    :deffence_rebound,
    :assist,
    :block,
    :steal,
    :play_time,
    :turn_over,
    :personal_foul,
    :starting_member,
  ].freeze

  # Overwrite this method to customize how stats are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(stat)
  #   "Stat ##{stat.id}"
  # end
end
