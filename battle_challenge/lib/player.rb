class Player

attr_reader :name, :hp
DEFAULT_HP = 50

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_damage
    @hp -= random_num
  end

  private

  def random_num
    Kernel.rand(10)
  end

end
