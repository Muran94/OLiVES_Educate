class Day < ApplicationRecord
  ### Modules

  ### Associations
  has_many :tracks, dependent: :destroy
  belongs_to :conference

  ### Callbacks

  ### Enums

  ### Delegations

  ### Validations

  ### Scopes

  ### Class Methods
  class << self
  end

  ### Instance Methods
  def pdate
    (conference.start_date + seq_no).strftime("%Y年%m月%d日")
  end

end
