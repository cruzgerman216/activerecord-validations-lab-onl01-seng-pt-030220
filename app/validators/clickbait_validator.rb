class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    puts record.title
    unless record.title.include?("Won't Believe")
      record.errors[:title] << "We're only allowed to have people who work for the company in the database!"
      puts "test"
    end
  end
end
