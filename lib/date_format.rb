class DateFormat
  def format(date)
    date_to_format = DateTime.parse(date.to_s)
    date_to_format.strftime('%d/%m/%Y')
  end
end
