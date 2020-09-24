class Holder < ApplicationRecord
  has_one_attached :pdf

  def section_string
    YAML.load(self.section).join(", ")
  end
  def section_array
    YAML.load(self.section)
  end
end
