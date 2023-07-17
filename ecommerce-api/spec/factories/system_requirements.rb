FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |n| "Basic #{n}" }
    operational_system { Faker::Computer.os }
    storage { "500GB" }
    processor { "AMD Ryzen 7" }
    memory { "2GB" }
    video_board { "Geforce X" }
  end
end
