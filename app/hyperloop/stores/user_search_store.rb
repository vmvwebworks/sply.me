class UserSearchStore < Hyperloop::Store
  state :filter_result, scope: :class, reader: true
  
end
