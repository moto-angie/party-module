class PersonalizedHavocError < StandardError
end

module PartyGoer

  attr_reader :drink_count

  def initialize
    @drink_count = 0
  end

  def drink
    @drink_count += 1
    if @drink_count < 4
      return true
    elsif @drink_count >= 4
      return false
    end
  end

  def sing
    lyrics = ["It ain't no party like a Detroit party,
    'Cause a Detroit party don't stop.
    I said it ain't no party like a Detroit party,
    'Cause a Detroit party don't stop.", "
    Come on now, have some fun
    Good time party
    Livin' lovin' everyone
    Good time party time ","Ooh, ah, party
    Ooh, ah, party
    Ooh, ah, party
    Ooh, ah, party
    Do you want to go party
    We'll get funky there, party
    Drink a little wine, party","Some people like to rock
    Some people like to roll
    But movin' and a groovin'
    Gonna satisfy my soul

    Let's have a party (let's have a party), ooh"]
lyrics.sample
  end

  def cause_havoc
    raise PersonalizedHavocError, "HAVOC!"
  end

  def invited?
    true
  end
end
