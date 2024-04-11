package app.rbac

default allow = false

allow {
	user_is_admin
}

allow {

	user_is_Suporte

}

allow {

	user_is_Teste

}

allow {
	some permission
	user_is_granted[permission]

	input.action == permission.action
	input.type == permission.type

}

user_is_admin {
	some i

	data.users[input.user].roles[i] == "admin"
}

user_is_Suporte{

	some i
	data.users[input.user].roles[i] == "Suporte"

}

user_is_Teste{

	some i
	data.users[input.user].roles[i] == "Teste"

}

user_is_granted[permission] {
	some i, j

	role := data.users[input.user].roles[i]

	# `permission` assigned a single permission from the permissions list for 'role'...
	permission := data.role_permissions[role][j]
}
