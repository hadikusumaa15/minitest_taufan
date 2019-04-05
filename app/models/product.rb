class Product < ApplicationRecord

    def to_param
        "#{id}-#{name.parameterize}"
    end
end
