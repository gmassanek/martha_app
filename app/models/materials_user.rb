class MaterialsUser
  def self.authenticate(pass)
    if pass=="password"
      true
    else
      puts "returning false"
      false
    end
  end
end

