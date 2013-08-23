module AppFrame::SelectHelper
  def prepopulate(association)
    return [].to_json unless association
  
    association = [association] if association.is_a?(ActiveRecord::Base)
    association.map(&:to_token_hash).to_json
  end
end