class ClickBait < ActiveModel::Validator
  def validate(post)
    unless post.match?(/flatironschool.com/)
      record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end