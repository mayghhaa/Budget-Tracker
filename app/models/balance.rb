class Balance < ApplicationRecord
  validate :only_one_entry

  private

  def only_one_entry
    if Balance.count > 1
      errors.add(:base, "There can only be one entry in the balances table")
    end
  end
end
