class MaterialsUser
  def self.authenticate(pass)
    if pass=="summit2011"
      true
    else
      puts "returning false"
      false
    end
  end
end

