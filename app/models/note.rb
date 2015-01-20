class Note < ActiveRecord::Base
    validate :ensure_title_or_content
    validates :body, presence: true
    belongs_to :body, polymorphic: true, autosave: true, inverse_of: :note, dependent: :destroy

    private
        def ensure_title_or_content
            unless title.present? or body.content.present?
                errors.add(:title, 'Must provide a title or content')
            end
        end
end
