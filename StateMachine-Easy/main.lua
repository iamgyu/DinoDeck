function Wander()
  if Distance_With_Player < 15 then
    return Attack()
  end
  else
    return nil
  end
end

function Attack()
  if Player_Is_Attack() == 1 then
    return Evade()
  end
  else if Distance_With_Player >= 15 then
    return Wander()
  end
  else
    return nil
  end
end

function Evade()
  if Monster_HP < 10 then
    return Find_Aid()
  end
  else if PlayerIsStop() == 1 then
    return Attack()
  end
  else
    return nil
  end
end

function Find_Aid()
  if Found_Aid == 1 then
    return Wander()
  end
  else
    return nil
  end
end
