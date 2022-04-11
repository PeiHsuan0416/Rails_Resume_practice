class Resume < ApplicationRecord

    validrates :title, presence: true,
    validrates :content, presence: true,
    def self.all_status
        [
            ["草稿","draft"],
            ["發佈","public"],
            ["其他","other"],
        ]
    end

end