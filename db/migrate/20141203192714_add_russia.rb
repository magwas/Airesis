class AddRussia < ActiveRecord::Migration
  def up
    SysLocale.create(key: 'ru-RU', host: 'www.airesis.ru')
  end

  def down
    SysLocale.find_by(key: 'ru-RU').destroy
  end
end
