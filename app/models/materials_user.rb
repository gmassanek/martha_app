class MaterialsUser
  def self.authenticate(pass)
    if pass=="test"
      true
    else
      puts "returning false"
      false
    end
  end
end

