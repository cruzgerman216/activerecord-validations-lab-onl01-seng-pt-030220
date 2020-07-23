class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    puts record.title.include?("test")
    unless !record.title.include?("Won't Believe")
      record.errors[:title] << "Need validation."
    end
  end
end
