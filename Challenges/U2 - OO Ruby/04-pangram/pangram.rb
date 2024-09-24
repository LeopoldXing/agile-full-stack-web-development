class Pangram
  def self.is_pangram?(str)
    # change all string letter to downcase and removing non-alphabet characters
    normalized_str = str.downcase.gsub(/[^a-z]/, '')
    # Check if all letters from 'a' to 'z' are included in the string
    ('a'..'z').each do |letter|
      return false if !normalized_str.include?(letter)
    end
  end
end
