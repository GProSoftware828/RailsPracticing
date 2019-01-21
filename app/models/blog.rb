class Blog < ApplicationRecord
  enum status: {draft: 0, publish: 1}
end
