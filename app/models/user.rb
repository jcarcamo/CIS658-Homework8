class User < ApplicationRecord
    validates :lname, presence: true
    validates :fname, presence: true
    # Email regular expression taken from
    # http://regexlib.com/Search.aspx?k=email&AspxAutoDetectCookieSupport=1
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)\z/ }
    validates :thumbnail, allow_blank: true, allow_nil: true, format: { with: /\A.+\.(jpg|png|gif)\z/ }
    has_many :bugs
end
