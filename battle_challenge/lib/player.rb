class Player

attr_reader :name, :hp, :message
DEFAULT_HP = 50

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_damage
    n = random_num
    return "The attack missed..." if n == 0
    @hp -= n
    "HP reduced by #{n}"
  end

  private

  def random_num
    Kernel.rand(10)
  end

end
