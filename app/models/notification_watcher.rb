class NotificationWatcher < ApplicationRecord
    belongs_to :user, :dependent => :destroy
end
