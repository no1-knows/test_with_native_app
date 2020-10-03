class UserDetail < ApplicationRecord
  belongs_to :user

  validates :user_id, uniqueness: true

  attr_accessor :first_name, :last_name

  before_validation :set_name

  validates :last_name,  presence: true
  validates :first_name, presence: true

  # 画面表示時に呼ばれる
  def last_name
    @last_name || name.split(' ').first if name.present?
  end

  def first_name
    @first_name || name.split(' ').last if name.present?
  end

  # DBのカラムはnameのため、last_nameとfirst_nameをバリデーションの前に結合させて、設定しておく必要がある
  def set_name
    self.name = [@last_name, @first_name].join(' ')
  end

end