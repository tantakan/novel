import Leaf

final class AdminPathTag: BasicTag {
  let name = "adminPath"

  func run(arguments: [Argument]) throws -> Node? {
    guard
      arguments.count == 1,
      let path = arguments[0].value?.string
      else {
        return Node.string("/admin")
    }

    return Node.string("/admin/\(path)")
  }
}

final class LoginPathTag: BasicTag {
  let name = "adminLoginPath"

  func run(arguments: [Argument]) throws -> Node? {
    return Node.string(Route.login.absolute)
  }
}

final class LogoutPathTag: BasicTag {
  let name = "adminLogoutPath"

  func run(arguments: [Argument]) throws -> Node? {
    return Node.string(Route.logout.absolute)
  }
}

final class SignupPathTag: BasicTag {
  let name = "adminSignupPath"

  func run(arguments: [Argument]) throws -> Node? {
    return Node.string(Route.signup.absolute)
  }
}

final class ResetPathTag: BasicTag {
  let name = "adminResetPath"

  func run(arguments: [Argument]) throws -> Node? {
    return Node.string(Route.reset.absolute)
  }
}

final class ProfilePathTag: BasicTag {
  let name = "adminProfilePath"

  func run(arguments: [Argument]) throws -> Node? {
    // TODO: - Use current user id
    return Node.string(Route.users.show(id: 1))
  }
}