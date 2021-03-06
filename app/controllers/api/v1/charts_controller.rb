class Api::V1::ChartsController < ApplicationController
  before_action :authenticate_user!

  ## Users
  def month_of_year_superadmins
    render json: User.with_role(:superadmin).group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def month_of_year_admins
    render json: User.with_role(:admin).accessible_by(current_ability).group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def month_of_year_members
    render json: User.with_role(:member).accessible_by(current_ability).group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def month_of_year_visitors
    render json: User.with_role(:visitor).accessible_by(current_ability).group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def month_of_year_users
    render json: User.group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def free_member_roles
    render json: ({"Admins" => User.with_any_role(:sysadmin, :superadmin, :admin).count, "Members" => User.with_role(:member).count, "Free Users" => User.with_role(:visitor).count})
  end
  def user_themes
    render json: ({"Dark Theme" => User.where(dark_theme: true).count, "Light Theme" => User.where(dark_theme: false).count})
  end
  def user_timezones
    render json: User.group(:timezone).count
  end

  ## Articles
  def month_of_year_articles
    render json: Article.accessible_by(current_ability).group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def month_of_year_single_articles
    render json: current_user.articles.group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def free_member_articles
    render json: ({"By Admins" => Article.where(user_id: User.with_any_role(:sysadmin, :superadmin, :admin)).count, "By Members" => Article.where(user_id: User.with_role(:member)).count, "By Free Users" => Article.where(user_id: User.with_role(:visitor)).count})
  end

  ## Rooms
  def month_of_year_rooms
    render json: Room.accessible_by(current_ability).group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def chat_rooms
    render json: Room.group(:name).count
  end

  ## Todo Items
  def complete_incomplete_todos
    render json: ({"Not Complete" => TodoItem.accessible_by(current_ability).where(complete: false).count, "Complete" => TodoItem.where(complete: true).count})
    # render json: TodoItem.accessible_by(current_ability).group(:complete).count ("True", "False")
  end
  def complete_incomplete_single_todos
    render json: ({"Not Complete" => current_user.todo_items.where(complete: false).count, "Complete" => current_user.todo_items.where(complete: true).count})
    # render json: current_user.todo_items.group(:complete).count ("True", "False")
  end
  def month_of_year_todos
    render json: TodoItem.accessible_by(current_ability).group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
  def month_of_year_single_todos
    render json: current_user.todo_items.group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
end
