class Question < ActiveRecord::Base
  has_many :answers

  validates :question, presence: true

  def output
    conn = ActiveRecord::Base.connection.raw_connection
    table = ::Text::Table.new
    conn.exec(answers.first.answer) do |result|
      table.head = result.fields
      table.rows = result.values
    end
    table.to_s
  end
end
