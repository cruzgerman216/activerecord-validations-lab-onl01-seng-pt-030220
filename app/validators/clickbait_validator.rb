class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    puts "test"
    unless record.title.match?(/flatironschool.com/)
      record.errors[:title] << "We're only allowed to have people who work for the company in the database!"
      puts "test"
    end
  end
end
