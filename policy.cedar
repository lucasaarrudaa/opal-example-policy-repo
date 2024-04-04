permit(
    principal in Role::"Editor",
    action in [
        Action::"document:access"
	],
    resource in ResourceType::"document"
);
