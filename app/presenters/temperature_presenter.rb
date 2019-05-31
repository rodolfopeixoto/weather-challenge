class TemperaturePresenter < SimpleDelegator
  attr_reader :weather

  def initialize(weather)
    @weather = weather
    __setobj__(weather)
  end
end
