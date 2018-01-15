class UserSearchStore < Hyperloop::Store
  state :filter_result, scope: :class, reader: true
  UserSearchOperation.run(filter_result: state.filter_result)
end
