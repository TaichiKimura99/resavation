class Room < ApplicationRecord
    has_many :entries ,dependent: :destroy
    #presenceで必須となる
    validates :name,presence: true
    validates :place,presence: true
    validates :number,presence: true
    validates :name ,length:{maximum: 30}
    #許可するはinclusion
    validates :place , inclusion: ['東京','大阪','福岡','札幌','仙台','名古屋','金沢']
    validates :number , inclusion: { in: 5..30 }
    #varidates :number,numericality: {greater_than: 4 ,less_than:31}

    #validates :number,numericality: { only_integer: true,greater_than: 0, less_than: 100}

    #先生
    validates :name , format: {with: /\A.+#\d{2}\z/}
    # 別解　
    validate :name_check
    validate :number_check

    private
    def name_check
        name_pattern=/\A.+#\d{2}\z/
        unless name_pattern.match(self.name)
            errors.add(:name,"会議室名が正しくありません。")
        end
    end

    private
    def number_check
        unless self.number.to_i % 5 == 0
           errors.add(:number,"収容人数は5の倍数で指定してください。")
        end
    end

end
