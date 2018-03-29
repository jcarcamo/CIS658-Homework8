class Bug < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5, maximum: 80}
    validates :description, presence: true, length: {minimum: 20, maximum: 600}
    validates :user, presence: true

    enum issue_type: [:issue, :enhancement, :feature]
    enum priority: [:low, :medium, :high]
    enum status: [:open, :closed, :monitor]
    belongs_to :user
end
