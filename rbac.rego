
package app.rbac

default allow = false

allow {
	user_is_admin
}

allow {
	some permission
	user_is_granted[permission]

	input.action == permission.action
	input.type == permission.type

}

allow {

allow {

	user_is_Admin

}

allow {

	user_is_Teste

}

	user_is_Suporte

}

user_is_admin {
	some i

	data.users[input.user].roles[i] == "admin"
}

user_is_viewer {
	some i

	data.users[input.user].roles[i] == "viewer"
}

user_is_guest {
	some i

	data.users[input.user].roles[i] == "guest"
}

user_is_Suporte{

	some i
	data.users[input.user].roles[i] == "Suporte"

}

user_is_granted[permission] {

user_is_Teste{

	some i
	data.users[input.user].roles[i] == "Teste"

}

user_is_Admin{

	some i
	data.users[input.user].roles[i] == "Admin"

}
	some i, j

	role := data.users[input.user].roles[i]

	permission := data.role_permissions[role][j]
}
